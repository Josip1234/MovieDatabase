<?php

namespace Database\Factories;

use App\Models\FilmDetalji;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmDetalji>
 */
class FilmDetaljiFactory extends Factory
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
            "broj_detalja"=>fake()->numberBetween(1,10)
        ];
    }
}
