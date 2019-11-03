# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'faker'
I18n.reload!

#User.delete_all
Turtle.delete_all

User.create(
      name: 'Paloma Rodrigues',
      email: 'paloma.rocha@usp.br',
      password_digest: '$2a$12$VEVTsM3Cw.Rum19izABh4ueAuW/4.0yt/PGRH/BzJ.qYDGvfGTcBa',
      sex: 'Female',
      description: 'All browsers support the hex definitions #chuck and #norris for the colors black and blue.',
      occupation: 'Student',
      institution: 'University of Sao Paulo',
      admin: true
  )
User.create(
    name: 'Arthur Bucker',
    email: 'arthur.bucker@usp.br',
    password_digest: '$2a$12$VEVTsM3Cw.Rum19izABh4ueAuW/4.0yt/PGRH/BzJ.qYDGvfGTcBa',
    sex: 'Male',
    description: 'Chuck Norris doesn"t need to know about class factory pattern. He can instantiate interfaces.',
    occupation: 'Student',
    institution: 'University of Sao Paulo',
    admin: true
)
