<?php

namespace Database\Factories;
use App\Models\Producto;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductoFactory extends Factory
{
    protected $model = Producto::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'codigo_barra' => $this->faker->ean8(),
            'nombre' => $this->faker->randomElement(['Desktop', 'Laptop', 'Mini Laptop']),
            'descripcion' => $this->faker->randomElement(['aquí va el texto']),
            'precio' => $this->faker->randomFloat(null, 100, 1000),
            'url_imagen' => $this->faker->randomElement(['https://c.s-microsoft.com/en-ca/CMSImages/1920_Panel01_PriorityFeature_AIO.jpg?version=84488a58-c07f-6a34-a2f8-6c51a147d7fb', 'https://jet-web.s3.us-west-1.amazonaws.com/images/catalog/public/39cf2eb33b0bebd3598bfdc072fe05da.webp', 'https://torocatalogo.com/wp-content/uploads/2019/10/mini-laptop-8.jpg']),
            /*'estado' => $this->faker->boolean(100)*/
            'created_at' => now(),
            'updated_at' => now()
        ];
    }
}
