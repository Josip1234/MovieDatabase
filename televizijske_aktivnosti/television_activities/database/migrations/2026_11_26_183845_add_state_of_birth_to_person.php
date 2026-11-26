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
        Schema::table('person', function (Blueprint $table) {
            $table->foreignId("state_of_birth")->nullable()->after("state_id")->constrained("countries")->cascadeOnDelete()->cascadeOnUpdate();
            $table->string("state_id")->nullable()->change(); //we could drop this column here
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('person', function (Blueprint $table) {
            $table->dropConstrainedForeignId("state_of_birth");
             $table->string("state_id")->nullable(false)->change();
        });
    }
};
