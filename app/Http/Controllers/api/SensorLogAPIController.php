<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Gateway;
use App\Models\Sensor;
use App\Models\SensorLog;
use Illuminate\Http\Request;

class SensorLogAPIController extends Controller
{
    public function storeSensorLog(Request $request)
    {

        $sensor_log = new SensorLog();

        $sensor_log->sensor_id = $request->sensor_id;
        $sensor_log->gateway_id = $request->gateway_id;
        $sensor_log->voltage_ab = $request->voltage_ab;
        $sensor_log->voltage_bc = $request->voltage_bc;
        $sensor_log->voltage_ca = $request->voltage_ca;
        $sensor_log->current_a = $request->current_a;
        $sensor_log->current_b = $request->current_b;
        $sensor_log->current_c = $request->current_c;
        $sensor_log->real_power = $request->real_power;
        $sensor_log->apparent_power = $request->apparent_power;
        $sensor_log->energy = $request->energy;
        $sensor_log->temperature = $request->temperature;
        $sensor_log->humidity = $request->humidity;
        $sensor_log->volume = $request->volume;
        $sensor_log->flow = $request->flow;
        $sensor_log->pressure = $request->pressure;
        $sensor_log->co2 = $request->co2;
        $sensor_log->pm25_pm10 = $request->pm25_pm10;
        $sensor_log->o2 = $request->o2;
        $sensor_log->nox = $request->nox;
        $sensor_log->co = $request->co;
        $sensor_log->s02 = $request->s02;
        $sensor_log->datetime_created = $request->datetime_created;

        $sensor_log->save();

        return response()->json([
            'message' => 'Sensor log stored successfully',
            'data' => $request->all()
        ]);
    }
}
