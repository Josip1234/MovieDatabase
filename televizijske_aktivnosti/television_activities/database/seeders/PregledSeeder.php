<?php

namespace Database\Seeders;

use App\Models\Pregled;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PregledSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Pregled::factory(10)->create();
    }
}
