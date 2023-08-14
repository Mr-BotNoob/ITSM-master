<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Deployment extends Model
{
    //
    protected $fillable = [
        'id_user', 'user', 'repair_code', 'repair_date', 'lane', 'machine',  'status', 'crq_remedy', 'appname', 'os', 'location', 'cpu', 'memory', 'disk'
    ];
}
