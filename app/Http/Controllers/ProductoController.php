<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    public function getProducto(){
        $query = Producto::orderBy('codigo_barra')->paginate(10);
        return response()->json($query, 200);
    }

    public function getProductoCodigoBarra($codigo_barra){
        $producto = Producto::find($codigo_barra);
        if(is_null($producto)){
            return response()->json(['Mensaje'=>'Registro no encontrado'], 404);
        }
        return response()->json(Producto::find($codigo_barra), 200);
    }

    public function insertProducto(Request $request){
        $producto = Producto::create($request->all());
        return response()->json(['Mensaje' => 'Registro agregado correctamente: ', $producto ,'Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 200);
    }

    public function updateProducto(Request $request, $codigo_barra){
        $producto = Producto::find($codigo_barra);
        if(is_null($producto)){
            return response()->json(['Mensaje'=>'No puede dejar los campos vacíos','Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 200);
        }
        $producto->update($request->all());
        return response()->json(['Mensaje' => 'Registro modificado correctamente: ', $producto ,'Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 200);
    }

    public function deleteProducto($codigo_barra){
        $producto = Producto::find($codigo_barra);
        $producto->delete();
        return response()->json(['Mensaje'=>'Registro eliminado','Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 200);
    }

    public function searchGlobalProducto($var){
        $producto = Producto::where('codigo_barra','=',$var)->orWhere('nombre','=',$var)->orWhere('descripcion','=',$var)->paginate(10);
        if($producto=="[]"){
            return response()->json(['Mensaje'=>'Registro no encontrado','Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 404);
        }
        return response()->json(['Mensaje'=>'Registros que coinciden con: '.$var.' ', $producto, 'Ver todos: '=>url('http://127.0.0.1:8000/api/producto')], 200);
    }
}
