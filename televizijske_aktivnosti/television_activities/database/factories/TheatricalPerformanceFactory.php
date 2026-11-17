<?php

namespace Database\Factories;

use App\Models\TheatricalPerformance;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<TheatricalPerformance>
 */
class TheatricalPerformanceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "domestic_box_office"=>fake()->randomElement(["$","€"]).fake()->randomElement([fake()->numberBetween(1-9),""]).fake()->randomElement([fake()->numberBetween(0-9)])
            .fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).",".
            fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)])
            .",".fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]),
            "international_box_office"=>fake()->randomElement(["$","€"]).fake()->randomElement([fake()->numberBetween(1-9),""]).fake()->randomElement([fake()->numberBetween(0-9)])
            .fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).",".
            fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)])
            .",".fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]),
            "worldwide_box_office"=>fake()->randomElement(["$","€"]).fake()->randomElement([fake()->numberBetween(1-9),""]).fake()->randomElement([fake()->numberBetween(0-9)])
            .fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).",".
            fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)])
            .",".fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]).fake()->randomElement([fake()->numberBetween(0-9)]),
        ];
    }
}
