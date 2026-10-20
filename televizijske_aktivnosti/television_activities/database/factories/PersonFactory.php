<?php

namespace Database\Factories;

use App\Models\Person;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Person>
 */
class PersonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "state_id"=>fake()->randomElement(["Croatia","Ecuador","Paraguay","Philippines (the)","Slovenia","Timor-Leste","Ukraine","United States of America (the)","United Kingdom of Great Britain and Northern Ireland (the)","Suriname"]),
            "id_card_number"=>fake()->randomNumber(),
            "oib_upi"=>fake()->randomNumber(),
            "mbo"=>fake()->randomElement([NULL,fake()->unique()->randomNumber()]), //can be null
            "first_name"=>fake()->firstName,
            "last_name"=>fake()->lastName,
            "sex"=>fake()->randomElement(["M","F"]),
            "citizenship"=>fake()->randomElement(["Croatian","Ecuadorian","Paraguaian","Slovenian","American","of Great Britain"]),
            "date_of_birth"=>fake()->date("Y-m-d"),
            "date_of_expiry"=>fake()->randomElement([NULL,fake()->date("Y-m-d")]), //can be null
            "picture"=>fake()->url,
            "signature"=>fake()->randomElement(["",fake()->unique()->url]), //can be null
            "residence"=>fake()->randomElement(["",fake()->unique()->address]), //can be null
            "id_issued_by"=>fake()->randomElement(["PU POŽEŠKO-SLAVONSKA","SCOTLAND YARD","POLICE DEPARTMENT OF NEW YORK USA",""]), //null
            "date_of_issue"=>fake()->randomElement([NULL,fake()->date("Y-m-d")]), //can be null
            "employment_status"=>fake()->randomElement([NULL,0,1]), //can be null
            "created_at"=>fake()->dateTime(),
            "updated_at"=>fake()->dateTime()
        ];
    }
}
