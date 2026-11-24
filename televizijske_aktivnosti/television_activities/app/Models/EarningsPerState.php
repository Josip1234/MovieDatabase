<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class EarningsPerState extends Model
{
    use HasFactory,Notifiable;
    protected $table="earnings_per_state";
    protected $fillable = [
        "territory",
        "release_date",
        "opening_weekend",
        "total_box_office",
        "report_date"
    ];
    public function countries(){
        return $this->belongsTo(Country::class);
    }
}
