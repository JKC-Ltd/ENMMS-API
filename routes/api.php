<?php

use App\Http\Controllers\api\SensorLogAPIController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');


Route::middleware('sensor.api.token')
    ->post('/store-sensor-log', [SensorLogAPIController::class, 'storeSensorLog']);
