<?php

namespace Database\Seeders;

use App\Models\FilmDetalji;
use Database\Factories\FilmDetaljiFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmDetaljiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmDetalji::factory(10)->create();
    }
}
