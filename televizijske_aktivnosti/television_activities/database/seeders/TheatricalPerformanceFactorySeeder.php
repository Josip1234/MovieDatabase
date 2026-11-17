<?php

namespace Database\Seeders;

use App\Models\TheatricalPerformance;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TheatricalPerformanceFactorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        TheatricalPerformance::factory(10)->create();
    }
}
