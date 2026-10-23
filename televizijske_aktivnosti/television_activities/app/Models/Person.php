<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Person extends Model
{
    use HasFactory,Notifiable;
    protected $table="person";
    protected $fillable = [
        "state_id",
        "id_card_number",
        "oib_upi",
        "mbo",
        "first_name",
        "last_name",
        "sex",
        "citizenship",
        "date_of_birth",
        "date_of_expiry",
        "picture",
        "signature",
        "residence",
        "id_issued_by",
        "date_of_issue",
        "employment_status"
    ];
    public function filmovi(){
        return $this->hasMany(FilmGlumci::class,"broj_osobe");
    }
}
