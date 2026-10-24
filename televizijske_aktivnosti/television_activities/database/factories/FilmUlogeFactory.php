<?php

namespace Database\Factories;

use App\Models\FilmUloge;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmUloge>
 */
class FilmUlogeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "id_filma"=>fake()->numberBetween(1,10),
            "broj_uloge"=>fake()->numberBetween(1,10),
            "broj_osobe"=>fake()->numberBetween(1,10)
        ];
    }
}
