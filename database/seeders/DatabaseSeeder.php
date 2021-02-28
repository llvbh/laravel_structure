<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            PositionSeeder::class,
            DepartamentSeeder::class,
            EmployeeSeeder::class,

        ]);
        $path = 'app/sql/db.sql';
        DB::unprepared(file_get_contents($path));
    }
}
