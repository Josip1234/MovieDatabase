<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmGlumci extends Model
{
    use HasFactory,Notifiable;

    protected $table="film_glumci";
    //u jednom filmu može glumiti više osoba ali ne može biti
    //višestrukih osoba sa istim id-om osobe za taj isti film s tim id-om
    //ne može primjerice biti dva Ben Afflecka u jednom filmu.
    //to žemo programerski riješiti tijekom validacije kad budemo radili gui za unos
    protected $fillable = [
        "broj_filma",
        "broj_osobe"
    ];
    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
    public function osobe(){
        return $this->belongsTo(Person::class);
    }
}
