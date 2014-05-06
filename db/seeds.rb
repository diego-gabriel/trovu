# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#DEBEMOS CATEGORIZAR EL PLATO y dar opcion a columnas de menu

catComidas = Category.create(nombre: "Comidas")
subcatRestaurat = SubCategory.create(nombre: "Almuerzo-Cena", category: catComidas)

paprika = Empresa.create(nombre: "paprika", precioRelativo: 2.3, logotipo: "logoPaprika.png", estrellas: 4, paginaWeb: "www.paprika.com")
paprikaSuc1 = Sucursal.create(direccion: "calle la paz esq. antezana",
	latitud: -17.38533, longitud: -66.15442, empresa: paprika)
Categorization.create(sub_category: subcatRestaurat, sucursal: paprikaSuc1)
MenuEntry.create(plato: "beef roquefort", descripcion: "lomo a la plancha
	en salsa roquefort", precio: 57.0, sucursal: paprikaSuc1)
MenuEntry.create(plato: "steak paprika", descripcion: "lomo a la plancha
	en salsa del chef", precio: 57.0, sucursal: paprikaSuc1)
MenuEntry.create(plato: "tropical", descripcion: "jugo de frutas tropicales", precio: 15.50, sucursal: paprikaSuc1)
Turno.create(dia: "lunes", horaInicio: 800, horaFin: 2200, sucursal: paprikaSuc1)
Telefono.create(numero: 4408535, sucursal: paprikaSuc1)
Telefono.create(numero: 70342315, sucursal: paprikaSuc1)
Publicity.create(descripcion: "estrellas", precio: 60, imagen: "", periodo: 6, empresa: paprika)

dumbo = Empresa.create(nombre: "Dumbo", precioRelativo: 40, logotipo: "logoDumbo.jpg", estrellas: 4, paginaWeb: "www.dumbo.com")
dumboSuc1 = Sucursal.create(direccion: "heroinas entre españa y 25 de mayo",
	latitud: -17.38500, longitud: -66.15442, empresa: dumbo)
Categorization.create(sub_category: subcatRestaurat, sucursal: dumboSuc1)
MenuEntry.create(plato: "jugo", descripcion: "jugo de frutas",
	precio: 8.5, sucursal: dumboSuc1);
MenuEntry.create(plato: "chili con papas", descripcion: "papas, carne y queso con poroto",
	precio: 29.5, sucursal: dumboSuc1);
MenuEntry.create(plato: "sandwich philadelfia", descripcion: "rico sandwich",
	precio: 29.5, sucursal: dumboSuc1);
Turno.create(dia: "martes", horaInicio: 900, horaFin: 2300, sucursal: dumboSuc1)
Telefono.create(numero: 1234567, sucursal: dumboSuc1)
Publicity.create(descripcion: "estrellas", precio: 60, imagen: "", periodo: 6, empresa: dumbo)

dumboSuc2 = Sucursal.create(direccion: "Av Ballivian esq. Mexico",
	latitud: -17.38517, longitud: -66.15470, empresa: dumbo)
Categorization.create(sub_category: subcatRestaurat, sucursal: dumboSuc2)
MenuEntry.create(plato: "jugo", descripcion: "jugo de frutas",
	precio: 8.5, sucursal: dumboSuc2);
MenuEntry.create(plato: "chili con papas", descripcion: "papas, carne y queso con poroto",
	precio: 29.5, sucursal: dumboSuc2);
MenuEntry.create(plato: "sandwich philadelfia", descripcion: "rico sandwich",
	precio: 29.5, sucursal: dumboSuc2);
Turno.create(dia: "martes", horaInicio: 900, horaFin: 2300, sucursal: dumboSuc2)
Telefono.create(numero: 987654, sucursal: dumboSuc2)
Publicity.create(descripcion: "estrellas", precio: 60, imagen: "", periodo: 6, empresa: dumbo)