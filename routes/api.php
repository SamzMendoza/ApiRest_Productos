<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('producto','App\Http\Controllers\ProductoController@getProducto');

Route::get('producto/{codigo_barra}','App\Http\Controllers\ProductoController@getProductoCodigoBarra');

Route::get('searchProducto/{var}','App\Http\Controllers\ProductoController@searchGlobalProducto');

Route::post('addProducto','App\Http\Controllers\ProductoController@insertProducto');

Route::put('editProducto/{codigo_barra}','App\Http\Controllers\ProductoController@updateProducto');

Route::delete('destroyProducto/{codigo_barra}','App\Http\Controllers\ProductoController@deleteProducto');



