<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Testing\Constraints\SoftDeletedInDatabase;

class Producto extends Model
{
    public $timestamps = false;
    public $SoftDeletedInDatabase = false;
    use HasFactory;
    protected $primaryKey = 'codigo_barra';
    
    protected $fillable = ['codigo_barra','nombre','descripcion','precio','url_imagen'];
}
