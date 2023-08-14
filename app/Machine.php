<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Machine extends Model
{
    //
    protected $fillable = [
        'machine_code', 'lane', 'machine_name', 'brand', 'capacity, crq_remedy, nota_permintaan, no_eawg, email'
    ];
}
