# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#DEBEMOS CATEGORIZAR EL PLATO y dar opcion a columnas de menu

catComidas = Category.create(nombre: "Comidas")
subcatRestaurat = SubCategory.create(nombre: "restaurant", category: catComidas)
paprika = Empresa.create(nombre: "paprika", precioRelativo: 2.3, logotipo: "logoPaprika.png", estrellas: 4, paginaWeb: "www.paprika.com")
paprikaSuc1 = Sucursal.create(direccion: "calle la paz esq. antezana",
	latitud: -17.38533, longitud: -66.15442, empresa: paprika)
Categorization.create(sub_category: subcatRestaurat, sucursal: paprikaSuc1);
MenuEntry.create(plato: "beef roquefort", descripcion: "lomo a la plancha
	en salsa roquefort", precio: 57.0, sucursal: paprikaSuc1)
MenuEntry.create(plato: "steak paprika", descripcion: "lomo a la plancha
	en salsa del chef", precio: 57.0, sucursal: paprikaSuc1)
MenuEntry.create(plato: "tropical", descripcion: "jugo de frutas tropicales", precio: 15.50, sucursal: paprikaSuc1)
Turno.create(dia: "lunes", horaInicio: 800, horaFin: 2200, sucursal: paprikaSuc1)
Telefono.create(numero: 4408535, sucursal: paprikaSuc1)
Telefono.create(numero: 70342315, sucursal: paprikaSuc1)
Publicity.create(descripcion: "estrellas", precio: 60, imagen: "", periodo: 6, empresa: paprika)