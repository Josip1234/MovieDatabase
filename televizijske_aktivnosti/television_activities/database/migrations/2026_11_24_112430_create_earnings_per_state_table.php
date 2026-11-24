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
        Schema::create('earnings_per_state', function (Blueprint $table) {
            $table->id();
            $table->foreignId("territory")->constrained("countries");
            $table->date("release_date");
            $table->string("opening_weekend");
            $table->string("total_box_office");
            $table->date("report_date");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('earnings_per_state');
    }
};
