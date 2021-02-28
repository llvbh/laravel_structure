<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StructureController extends Controller
{
    public function index(){
        $result = $this->getEmployeeTree();
        return view('app', ['result' => $result]);
    }

    function getEmployeeTree() {
        $host = 'localhost'; 
        $user = 'root'; 
        $password = 'root';
        $database = 'structures';
        $conn = mysqli_connect($host, $user, $password, $database);
        if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
        }

        $tree = [];
        $key = 0;
        $sql_structure = 'SELECT s.id, s.parent_id, s.name as structure FROM structure s';
        $sql_employee = 'SELECT e.id, e.fio, e.phone, e.email, e.structure_id, p.position from employees e 
                        LEFT JOIN positions p ON p.id = e.position_id ORDER BY  p.position_level DESC, fio ASC';

        $result = mysqli_query($conn, $sql_structure);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $tree[$key] = $row;
                $key++;
            }}
        else {
            echo "0 results";
        }
        $employees = [];
        $result = mysqli_query($conn, $sql_employee);
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($employees, $row);
            }}
        else {
            echo "0 results";
        }
        mysqli_close($conn);

        function parseTree($tree, $employees, $root = null) {
            $return = array();
            foreach($tree as $key => $struct) {
                $child = $struct['id'];
                $parent = $struct['parent_id'];
                if($parent == $root) {
                    unset($tree[$key]);
                    $child_employees = [];
                    foreach($employees as $employee) {
                        if ($employee['structure_id'] == $child) {
                            array_push($child_employees, $employee);
                        }
                    }
                    $return[] = array(
                        'id' => $child,
                        'structure' => $struct['structure'],
                        'child_employees' => $child_employees,
                        'children' => parseTree($tree, $employees, $child)
                    );
                }
            }
            return empty($return) ? null : $return;    
        }
        function printTree($tree) {
            $result = '';
            if(!is_null($tree) && count($tree) > 0) {
                $result = '<div><ul class="container">';
                foreach($tree as $node) {
                    $result .= '<li class="node expandOpen">
                    <div class="expand" onclick="tree_toggle(arguments[0])"></div>
                    <div class="content">'.$node['structure'];
                    foreach($node['child_employees'] as $child_employee){
                        $result .= '<div class="employeeCard">
                        <div>'.$child_employee['fio'].'<a class="position">'.$child_employee['position'].'</a></div>
                        <div>'.$child_employee['email'].'</div>
                        <div>'.$child_employee['phone'].'</div>
                        </div>';
                    }
                    //echo $result;
                    $result .= printTree($node['children']);
                    $result .= '</div></li>';
                }
                $result .= '</ul></div>';
            }
            return $result;
        }
        $result = parseTree($tree, $employees);
        // print_r($result);

        return printTree($result);
    }
}
