<?php

namespace App\Http\Middleware;

use App\Models\Person;
use Closure;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;

class UpdatePersonTable
{
    /**
     * Handle an incoming request.
     *
     * @param  Closure(Request): (Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {

        try {
            //this middleware can be used by admins to automatic update records
                //first we need state id-s from persons we can use exception here for null column if it is not null then
                  //this middleware will continue to fill state of birth with values form json
                 $stateIds=Person::orderBy('id')->get(["id","state_id","state_of_birth"]);
                //need a list of array of replacement values
                $listOfReplacement=array();
                //best way: json file reading
            // dd($stateIds);
                $fileName="json_files/state_ids_to_add_and_change.json";

                if(!Storage::exists($fileName)){
                    $listOfReplacement=[];
                }
                $file=Storage::get($fileName);
                //list of values for state of birth
                $listOfReplacement=json_decode($file,true);
            // dd($listOfReplacement[0]["id"]);
            //iterate trough state ids
            foreach ($stateIds as $value) {
                    //replace state of birth values from json first value is id in database for change
                    //only update null values, first update list of state ids
                    if($value->state_of_birth==null){
                        //iterate trough list of replacement
                        foreach ($listOfReplacement as $val) {
                            //if id from list from person table equals id from val object from list of replacement
                            //replace null value from value state from json. state id should be null
                            if($value->id==$val["id"])
                                {
                                    $value->state_of_birth=$val["state_of_birth"];
                                    $value->state_id=null;
                        }
                                }
                    }
            }


            //update database model
            foreach ($stateIds as  $val2) {
                Person::where("id","=",$val2->id)->update([
                        "state_of_birth"=>$val2->state_of_birth,
                        "state_id"=>$val2->state_id
                ]);
            }


        } catch (QueryException $qe) {
            //throw $th;
        }

        return $next($request);
    }
}
