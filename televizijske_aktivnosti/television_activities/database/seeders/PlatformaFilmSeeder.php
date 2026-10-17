<?php

namespace Database\Seeders;

use App\Models\PlatformaFilm;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PlatformaFilmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        PlatformaFilm::factory(10)->create();
    }
}
