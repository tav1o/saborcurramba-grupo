import "package:saborcurramba/modelo/producto.dart";

final List<Producto> menuCompleto = [
  // Pizzas
  Producto(
    nombre: 'Pizza Margarita',
    categoria: 'Pizzas 🍕',
    precio: 12.99,
    imagen: "assets/menu/margarita.png",
    ingredientes: "queso mozarella, albahaca fresca",
  ),
  Producto(
    nombre: 'Pizza hawaiana',
    categoria: 'Pizzas 🍕',
    precio: 14.99,
    imagen: "assets/menu/hawaiana.png",
    ingredientes: "jamón, piña, queso mozarella",
  ),

  // Hamburguesa
  Producto(
    nombre: 'Hamburguesa Clásica',
    categoria: 'Hamburguesas 🍔',
    precio: 8.99,
    imagen: "assets/menu/hamburguesa.png",
    ingredientes: "carne de res, lechuga, tomate, cebolla, queso, tocineta",
  ),
  Producto(
    nombre: 'Hamburguesa BBQ',
    categoria: 'Hamburguesas 🍔',
    precio: 10.99,
    imagen: "assets/menu/doble.png",
    ingredientes:
        "carne de res doble , lechuga, tomate, cebolla, queso, tocineta, salsa",
  ),
  // Perros calientes
  Producto(
    nombre: 'Perro italiano',
    categoria: 'Perros calientes 🌭',
    precio: 5.99,
    imagen: "assets/menu/perro1.jpg",
    ingredientes: "salchicha, queso, jamón, papitas chongo, lechuga, salsas",
  ),
  Producto(
    nombre: 'Maxiperro',
    categoria: 'Perros calientes 🌭',
    precio: 7.99,
    imagen: "assets/menu/perro2.jpg",
    ingredientes:
        "la salchicha mas larga que el pan, queso costeño, papitas chongo, salsas",
  ),
  // Salchipapas
  Producto(
    nombre: 'Salchipapa Clásica',
    categoria: 'Salchipapas',
    precio: 6.99,
    imagen: "assets/menu/salchipapa.png",
    ingredientes: "salchicha, papa, lechuga, papa chongo, queso, salsas",
  ),
  Producto(
    nombre: 'Salchiespecial',
    categoria: 'Salchipapas',
    precio: 9.99,
    imagen: "assets/menu/salchiespecial.png",
    ingredientes:
        "salchicha, papa, lechuga, papa chongo, chorizo, butifarra, salsas, carne, pollo, queso ",
  ),

  // Bebidas
  Producto(
    nombre: 'coca cola',
    categoria: 'Bebidas 🥤',
    precio: 2.50,
    imagen: "assets/menu/coca cola.png",
    ingredientes: "agua, azúcar, colorantes",
  ),
  Producto(
    nombre: 'Jugo hit',
    categoria: 'Bebidas 🥤',
    precio: 3.50,
    imagen: "assets/menu/jugo.png",
    ingredientes: "agua, azúcar, colorante, sabor a frutas",
  ),
];
