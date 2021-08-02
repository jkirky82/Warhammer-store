# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

armyfaction = Armyfaction.create([{name:"Space Marines"},{name:"Necrons"},{name:"Orks"},{name:"Adepta Sororitas"}])

conditions = Condition.create([{name:"Brand New"},{name:"Slightly Used"}, {name:"Well Worn"}, {name:"Damaged"}])

paint = Paint.create([{name:"Painted"},{name:"Not Painted"}])
