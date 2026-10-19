<?php

namespace Database\Factories;

use App\Models\FilmDetalj;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmDetalj>
 */
class FilmDetaljFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "trajanje"=>fake()->numberBetween(90,120),
            "opis_filma"=>fake()->text
        ];
    }
}
