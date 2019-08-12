<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visitor extends Model
{
    protected $table = 'visitor';
    protected $fillable = ['ip_address', 'perangkat', 'deskripsi'];
}
