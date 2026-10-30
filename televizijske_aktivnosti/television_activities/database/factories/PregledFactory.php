<?php

namespace Database\Factories;

use App\Models\Pregled;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Pregled>
 */
class PregledFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "datum_vrijeme"=>fake()->dateTime
        ];
    }
}
