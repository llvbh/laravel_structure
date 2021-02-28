<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Departament;

class DepartamentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Departament::create([
        
            'name' =>'IT',
            'parent_id'=>'0',
           ]);
    }
}

