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
        Schema::create('theatrical_performance', function (Blueprint $table) {
            $table->id();
            $table->string("domestic_box_office");
            $table->string("international_box_office");
            $table->string("worldwide_box_office");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('theatrical_performance');
    }
};
