<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class PersonDetail extends Model
{
    use HasFactory,Notifiable;
    protected $table="person_detail";
    protected $fillable = [
        "person_id",
        "place_of_birth",
        "job_history",
        "year_of_death",
        "place_of_death",
        "grave_location",
        "cause_of_death",
        "height_in_cm",
        "weight_in_kg",
        "short_name",
        "nickname"
    ];
    public function person(){
        return $this->belongsTo(Person::class);
    }
}
