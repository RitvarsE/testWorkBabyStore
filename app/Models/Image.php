<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = [
        'originalName', 'type','url','place','views', 'clicks','location'
    ];
}
