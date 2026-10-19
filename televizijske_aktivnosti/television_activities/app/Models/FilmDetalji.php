<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmDetalji extends Model
{
    use HasFactory,Notifiable;

    protected $table="film_detalji";
    protected $fillable = [
        "broj_filma",
        "broj_detalja"
    ];
    public function film(){
        return $this->belongsTo(Film::class);
    }
    public function detalj(){
        return $this->belongsTo(FilmDetalj::class);
    }
}
