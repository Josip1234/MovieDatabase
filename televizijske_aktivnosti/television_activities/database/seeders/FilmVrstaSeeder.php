<?php

namespace Database\Seeders;

use App\Models\FilmVrsta;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmVrstaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmVrsta::factory(10)->create();
    }
}
