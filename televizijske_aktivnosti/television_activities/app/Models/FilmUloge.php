<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmUloge extends Model
{
    use HasFactory,Notifiable;
    protected $table="film_uloge";
    protected $fillable = [
        "id_filma",
        "broj_uloge",
        "broj_osobe"
    ];

    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
    public function uloge(){
        return $this->belongsTo(Uloga::class);
    }
    public function osobe(){
        return $this->belongsTo(Person::class);
    }
}
