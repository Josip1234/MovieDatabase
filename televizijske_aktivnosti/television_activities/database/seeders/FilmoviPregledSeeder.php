<?php

namespace Database\Seeders;

use App\Models\FilmoviPregled;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmoviPregledSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmoviPregled::factory(10)->create();
    }
}
