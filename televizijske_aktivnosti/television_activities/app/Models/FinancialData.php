<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FinancialData extends Model
{
    use HasFactory,Notifiable;
    protected $table="financial_data";
    protected $fillable = [
        "film_id",
        "theatrical_performance",
        "physical_disc_sale",
        "earnings_per_state"
    ];
    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
    public function theatrical_performances(){
        return $this->belongsTo(TheatricalPerformance::class);
    }
    public function physical_disc_sales(){
        return $this->belongsTo(PhysicalDiscSale::class);
    }
    public function earnings_per_states(){
        return $this->belongsTo(EarningsPerState::class);
    }
}
