<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Platforma extends Model
{
    use HasFactory, Notifiable;
    protected $table="platforma";
    protected $fillable = [
        "naziv",
        "description"
    ];
    public function platforme(){
        return $this->hasMany(PlatformaFilm::class,"broj_platforme");
    }
}
