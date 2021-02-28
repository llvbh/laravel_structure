<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departament extends Model
{
    use HasFactory;
    public $timestamps = false;
    public $fillable= [
        'id',
        'name',
        'parent_id',
    ];
}
