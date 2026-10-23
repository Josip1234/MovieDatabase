<?php

namespace Database\Factories;

use App\Models\FilmGlumci;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmGlumci>
 */
class FilmGlumciFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "broj_filma"=>fake()->numberBetween(1,10),
            "broj_osobe"=>fake()->numberBetween(1,10)
        ];
    }
}
