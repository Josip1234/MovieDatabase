<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('financial_data', function (Blueprint $table) {
            $table->id();
            $table->foreignId("film_id")->constrained("film");
            $table->foreignId("theatrical_performance")->constrained("theatrical_performance");
            $table->foreignId("physical_disc_sale")->constrained("physical_disc_sale");
            $table->foreignId("earnings_per_state")->constrained("earnings_per_state");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('financial_data');
    }
};
