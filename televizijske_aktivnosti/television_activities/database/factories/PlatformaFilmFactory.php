<?php

namespace Database\Factories;

use App\Models\PlatformaFilm;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<PlatformaFilm>
 */
class PlatformaFilmFactory extends Factory
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
            "broj_platforme"=>fake()->numberBetween(1,10)
        ];
    }
}
