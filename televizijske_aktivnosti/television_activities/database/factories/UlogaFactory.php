<?php

namespace Database\Factories;

use App\Models\Uloga;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Uloga>
 */
class UlogaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "character"=>fake()->firstName.fake()->lastName,
            "description"=>fake()->text
        ];
    }
}
