<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Employee;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {  
        Employee::create([
            'fio'=>'Emplyeeeeee',
            'email'=>"test@gmail.com",
            'phone'=>'7777777777',
            'position_id'=>'1',
            'structure_id'=>'1',
            

        ]);
    }
}
