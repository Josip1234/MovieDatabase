<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmoviPregled extends Model
{
    use HasFactory,Notifiable;
    protected $table="filmovi_pregled";
    protected $fillable = [
        "id_filma",
        "id_pregleda",
        "id_usera",
        "id_platforme"
    ];
    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
    public function pregledi(){
        return $this->belongsTo(Pregled::class);
    }
    public function users(){
        return $this->belongsTo(User::class);
    }
    public function platforms(){
        return $this->belongsTo(Platforma::class);
    }
}
