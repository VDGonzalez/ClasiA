# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



lista_departamentos = [
	"Capital",
	"Godoy Cruz",
	"Gral. Alvear",
	"Guaymallen",
	"Junín",
	"La Paz",
	"Las Heras",
	"Lavalle",
	"Luján",
	"Maipú",
	"Malargüe",
	"Rivadavia",
	"San Carlos",
	"San Martín",
	"San Rafael",
	"Santa Rosa",
	"Tunuyán",
	"Tupungato"
]

lista_departamentos.each do |departamento|
	DptoMendoza.create(nombre: departamento)
end
