import "package:saborcurramba/modelo/producto.dart";


final List<Producto> menuCompleto = [
  // Pizzas
  Producto(
    nombre: 'Pizza Margarita',
    categoria: 'Pizzas',
    precio: 12.99,
    imagen: "assets/menu/margarita.png",
  ),
  Producto(
    nombre: 'Pizza hawaiana',
    categoria: 'Pizzas',
    precio: 14.99,
    imagen: "assets/menu/hawaiana.png",
  ),
  
  // Hamburguesas
  Producto(
    nombre: 'Hamburguesa Clásica',
    categoria: 'Hamburguesas',
    precio: 8.99,
    imagen: "assets/menu/hamburguesa.png",
  ),
  Producto(
    nombre: 'Hamburguesa BBQ',
    categoria: 'Hamburguesas',
    precio: 10.99,
    imagen: "assets/menu/doble.png",
  ),
  
  // Salchipapas
  Producto(
    nombre: 'Salchipapa Clásica',
    categoria: 'Salchipapas',
    precio: 6.99,
    imagen: "assets/menu/salchipapa.png",
  ),
  Producto(
    nombre: 'Salchiespecial',
    categoria: 'Salchipapas',
    precio: 9.99,
    imagen: "assets/menu/salchiespecial.png",
  ),
  
  // Bebidas
  Producto(
    nombre: 'coca cola',
    categoria: 'Bebidas',
    precio: 2.50,
    imagen: "assets/menu/coca cola.png",
  ),
  Producto(
    nombre: 'Jugo hit',
    categoria: 'Bebidas',
    precio: 3.50,
    imagen: "assets/menu/jugo.png",
  ),
];

