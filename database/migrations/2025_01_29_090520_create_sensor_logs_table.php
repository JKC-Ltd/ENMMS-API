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
        Schema::create('sensor_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('gateway_id')->constrained();
            $table->foreignId('sensor_id')->constrained();
            $table->float('voltage_ab')->default(0)->nullable();
            $table->float('voltage_bc')->default(0)->nullable();
            $table->float('voltage_ca')->default(0)->nullable();
            $table->float('current_a')->default(0)->nullable();
            $table->float('current_b')->default(0)->nullable();
            $table->float('current_c')->default(0)->nullable();
            $table->float('real_power')->default(0)->nullable();
            $table->float('apparent_power')->default(0)->nullable();
            $table->float('energy')->default(0)->nullable();
            $table->float('temperature')->default(0)->nullable();
            $table->float('humidity')->default(0)->nullable();
            $table->float('volume')->default(0)->nullable();
            $table->float('flow')->default(0)->nullable();
            $table->float('pressure')->default(0)->nullable();
            $table->float('co2')->default(0)->nullable();
            $table->float('pm25_pm10')->default(0)->nullable();
            $table->float('o2')->default(0)->nullable();
            $table->float('nox')->default(0)->nullable();
            $table->float('co')->default(0)->nullable();
            $table->float('s02')->default(0)->nullable();
            $table->dateTime('datetime_created');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sensor_logs');
    }
};
