<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Stars extends Model
{
    use HasFactory, Notifiable;
    protected $table="stars";
    protected $fillable = [
        "person_id",
        "id_filma",
        "earnings"
    ];
    public function persons(){
        return $this->belongsTo(Person::class);
    }
    public function movies(){
        return $this->belongsTo(Film::class);
    }
}
