<?php

namespace Database\Seeders;

use App\Models\FilmDetalj;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmDetaljSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmDetalj::factory(10)->create();
    }
}
