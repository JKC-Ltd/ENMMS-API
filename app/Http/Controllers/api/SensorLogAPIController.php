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
        $sensor_log->voltage_ab = $request->voltage_ab ?? 0;
        $sensor_log->voltage_bc = $request->voltage_bc ?? 0;
        $sensor_log->voltage_ca = $request->voltage_ca ?? 0;
        $sensor_log->current_a = $request->current_a ?? 0;
        $sensor_log->current_b = $request->current_b ?? 0;
        $sensor_log->current_c = $request->current_c ?? 0;
        $sensor_log->real_power = $request->real_power ?? 0;
        $sensor_log->apparent_power = $request->apparent_power ?? 0;
        $sensor_log->energy = $request->energy ?? 0;
        $sensor_log->temperature = $request->temperature ?? 0;
        $sensor_log->humidity = $request->humidity ?? 0;
        $sensor_log->volume = $request->volume ?? 0;
        $sensor_log->flow = $request->flow ?? 0;
        $sensor_log->pressure = $request->pressure ?? 0;
        $sensor_log->co2 = $request->co2 ?? 0;
        $sensor_log->pm25_pm10 = $request->pm25_pm10 ?? 0;
        $sensor_log->o2 = $request->o2 ?? 0;
        $sensor_log->nox = $request->nox ?? 0;
        $sensor_log->co = $request->co ?? 0;
        $sensor_log->s02 = $request->s02 ?? 0;
        $sensor_log->datetime_created = $request->datetime_created;

        $sensor_log->save();

        return response()->json([
            'message' => 'Sensor log stored successfully',
            'data' => $request->all()
        ]);
    }

    public function getDate() {
        // Get the current date and time in MMDDHHSSYYYY format
        $date = date('mdHiY');
        return response()->json([
            'date' => $date
        ]);
    }
}
