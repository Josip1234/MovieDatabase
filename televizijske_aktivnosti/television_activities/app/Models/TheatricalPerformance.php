<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class TheatricalPerformance extends Model
{
    use HasFactory, Notifiable;
    protected $table="theatrical_performance";
    protected $fillable = [
        "domestic_box_office",
        "international_box_office",
        "worldwide_box_office"
    ];
    public function financial_data(){
        return $this->hasMany(FinancialData::class,"theatrical_performance");
    }
}
