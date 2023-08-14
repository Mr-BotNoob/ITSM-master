<?php

namespace App\Http\Controllers;

use Auth;
use Session;
use App\Lane;
use App\Machine;
use App\Activitylog;
use App\Deployment;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class DeploymentsManagement extends Controller
{
    // Open Improvement Management View
    public function ImprovementManagement()
    {
    	return view('deployments.deployments');
    }

    // Table Repair
    public function TableRepair()
    {
    	$repairs = DB::table('deployments')
        ->join('lanes', 'deployments.lane', '=', 'lanes.id')
        ->join('machines', 'deployments.crq_remedy', '=', 'machines.machine_code')
        ->select('deployments.*', 'lanes.lane as lane_name', 'machines.crq_remedy as crq_remedy')
        ->get();

    	return view('deployments.table_repair', compact('repairs'));
    }

    // Sorting Table Repair
    public function SortTableRepair($id)
    {
    	$repairs = DB::table('deployments')
    	->join('lanes', 'deployments.lane', '=', 'lanes.id')
        ->join('machines', 'deployments.crq_remedy', '=', 'machines.machine_code')
        ->select('deployments.*', 'lanes.lane as lane_name', 'machines.crq_remedy as crq_remedy')
        ->orderBy($id, 'ASC')
        ->get();

        return view('deployments.sort_table_repair', compact('repairs'));
    }

    // Open My Improvement View
    public function MyImprovement()
    {
    	$max = Deployment::max('repair_code');
        $check_max = Deployment::select('deployments.repair_code')->count();
        if ($check_max == null) {
            $max_code = "D0001";
        }else{
            $max_code = $max[1].$max[2].$max[3].$max[4];        
            $max_code++;
            if($max_code <= 9){
                $max_code = "D000".$max_code;
            }elseif ($max_code <= 99) {
                $max_code = "D00".$max_code;
            }elseif ($max_code <= 999) {
                $max_code = "D0".$max_code;
            }elseif ($max_code <= 99) {
                $max_code = "D".$max_code;
            }
        }
        $id_user = Auth::id();
        $lanes = Lane::all();
        $repairs = DB::table('deployments')
        ->join('lanes', 'deployments.lane', '=', 'lanes.id')
        ->join('machines', 'deployments.crq_remedy', '=', 'machines.machine_code')
        ->select('deployments.*', 'lanes.lane as lane_name', 'machines.crq_remedy as crq_remedy')
        // ->where('id_user', '=', $id_user)
        ->orderBy('repair_code', 'ASC')
        ->get();
    	return view('deployments.my_deployment_management', compact('repairs', 'max_code', 'lanes'));
    }

	// Create Improvement
    public function CreateImprovement(Request $request)
    {
    	$id = Auth::id();
    	$repairs = new Deployment;
    	$repairs->id_user = $request->user()->id;
    	$repairs->user = $request->user()->name;
    	$repairs->repair_code = $request->code;
    	$repairs->repair_date = $request->repair_date;
    	$repairs->lane = $request->lane;
    	$repairs->crq_remedy = $request->machine;
    	$repairs->appname = $request->appname;
    	$repairs->os= $request->os;
        $repairs->appname = $request->appname;
    	$repairs->os= $request->os;
        $repairs->location = $request->location;
    	$repairs->cpu= $request->cpu;
        $repairs->memory = $request->memory;
    	$repairs->disk= $request->disk;
    	$repairs->status = $request->status;
    	$repairs->save();

        $log = new Activitylog;
        $log->id_user = $request->user()->id;
        $log->user = $request->user()->name;
        $log->description = $request->user()->name." added a new Deployment";
        $log->remember_token = Str::random(40);
        $log->save();

    	Session::flash('created', 'Added successfully created!');
    	return redirect('/my_repair_machine');
    }

    // Edit Improvement
    public function EditImprovement($id)
    {
    	$repairs = Deployment::find($id);

    	return response()->json($repairs);
    }

    // Update Improvement
    public function UpdateImprovement(Request $request, $id)
    {
    	$repairs = Deployment::find($id);
    	$repairs->repair_date = $request->repair_date;
    	$repairs->lane = $request->lane;
    	$repairs->crq_remedy = $request->machine;
    	$repairs->appname = $request->appname;
    	$repairs->os= $request->os;
        $repairs->appname = $request->appname;
    	$repairs->os= $request->os;
        $repairs->location = $request->location;
    	$repairs->cpu= $request->cpu;
        $repairs->memory = $request->memory;
    	$repairs->disk= $request->disk;
    	$repairs->status = $request->status;
    	$repairs->save();

        $log = new Activitylog;
        $log->id_user = $request->user()->id;
        $log->user = $request->user()->name;
        $log->description = $request->user()->name." changes the Deployment Machine " . $repairs->repair_code;
        $log->remember_token = Str::random(40);
        $log->save();

    	Session::flash('updated', 'Deployment successfully updated!');
    	echo "success";
    }

    // Delete Improvement
    public function DeleteImprovement($id)
    {
    	$repairs = Deployment::find($id);
        $repairs->delete();

        $log = new Activitylog;
        $log->id_user = Auth::id();
        $log->user = Auth::user()->name;
        $log->description = Auth::user()->name." deletes the Deployment Machine ". $repairs->repair_code;
        $log->remember_token = Str::random(40);
        $log->save();

    	Session::flash('deleted', 'Deployment successfully deleted!');
    	return redirect('/my_repair_machine');
    }

    // Update Status
    public function UpdateStatus(Request $request, $id)
    {
        $repairs = Deployment::find($id);
        $repairs->status = $request->status;
        $repairs->save();

        $log = new Activitylog;
        $log->id_user = $request->user()->id;
        $log->user = $request->user()->name;
        $log->description = $request->user()->name." changes status on the Deployment Machine " . $repairs->repair_code;
        $log->remember_token = Str::random(40);
        $log->save();

        Session::flash('status_updated', 'Status successfully updated!');
        return redirect('/my_repair_machine');
    }
}