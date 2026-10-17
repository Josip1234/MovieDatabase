<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class PlatformaFilm extends Model
{
    use HasFactory,Notifiable;
    protected $table="platforma_film";
    protected $fillable = [
        "broj_filma",
        "broj_platforme"
    ];
    public function film(){
        return $this->belongsTo(Film::class);
    }
    public function platforma(){
        return $this->belongsTo(Platforma::class);
    }
}
