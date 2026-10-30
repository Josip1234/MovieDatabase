<?php

namespace Database\Factories;

use App\Models\FilmoviPregled;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FilmoviPregled>
 */
class FilmoviPregledFactory extends Factory
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
             "id_pregleda"=>fake()->numberBetween(1,10),
            "id_usera"=>fake()->randomElement([NULL,fake()->numberBetween(1,20)]),
            "id_platforme"=>fake()->randomElement([NULL,fake()->numberBetween(1,10)])
        ];
    }
}
