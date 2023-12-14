puts 'Gerando motorcycles...'

5.times do |i|
  Motorcycle.create(
    name: ["bis", "harley", "shadow"].sample ,
    category: "moto categorizada"
    )
end

puts 'motorcycles gerados com sucesso!'