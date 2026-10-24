<?php

namespace Database\Seeders;

use App\Models\FilmUloge;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FilmUlogeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        FilmUloge::factory(10)->create();
    }
}
