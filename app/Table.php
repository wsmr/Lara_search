<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Table extends Model
{
    public $table = 'getobjectives';
    public $fillable = ['objective', 'action_item', 'country'];

    public $timestamps = false;
    protected $softDelete = false;
}
