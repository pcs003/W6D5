# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
c1 = Cat.create({birth_date: '2017/02/05',color: 'orange',name: 'Megan',sex: 'F',description: 'TA'})
c2 = Cat.create({birth_date: '2016/02/05',color: 'black',name: 'David',sex: 'M',description: 'TA'})