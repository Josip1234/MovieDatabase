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
        Schema::create('writers', function (Blueprint $table) {
            $table->id();
            $table->foreignId("person_id")->constrained("person")->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId("id_filma")->constrained("film")->cascadeOnDelete()->cascadeOnUpdate();
            $table->string("earnings")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('writers');
    }
};
