# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

armyfaction = Armyfaction.create([{name:"Space Marines"},{name:"Necrons"},{name:"Orks"},{name:"Adepta Sororitas"}])

painted = Painted.create([{painted:"Painted"},{Painted:"Not Painted"}])

condition = Condition.create([{condition:"Brand New"},{condition:"Slightly Used"}, {condition:"Well Worn"}, {condition:"Damaged"}])
