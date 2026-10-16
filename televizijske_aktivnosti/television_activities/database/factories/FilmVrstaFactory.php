<?php

namespace Database\Factories;

use App\Models\FilmVrsta;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmVrsta>
 */
class FilmVrstaFactory extends Factory
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
            "broj_vrste"=>fake()->numberBetween(1,10)
        ];
    }
}
