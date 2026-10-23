<?php

namespace Database\Seeders;

use App\Models\FilmGlumci;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmGlumciSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmGlumci::factory(10)->create();
    }
}
