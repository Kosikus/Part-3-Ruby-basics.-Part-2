# Курс: "Основы Ruby [Полная програмаа - 2022]"
# Задание: "Основы Ruby. Часть 2"
# Задача 6 "Сумма покупок"
# Студент: Константин Голуб (Kos)

products = {}

loop do
  print 'Наименование товара: '
  name = gets.chomp.downcase

  break if name == 'стоп'

  if products[name]
    # Тот же товар - обновление количества
    puts "Сколько ещё купили товара \"#{name}\":"
    amount = gets.to_f

    products[name][:amount] += amount
  else
    # Новый товар - создание нового товара
    print 'Количество: '
    amount = gets.to_f

    print 'Цена за единицу: '
    price = gets.to_f

    products[name] = {price: price, amount: amount}
  end

  puts
end

puts
puts "****************"
puts "Вы всего купили:"
puts

# Вывод в виде таблицы
puts "%20s | %15s | %10s | %14s" % ["Товар", "Цена за единицу", "Количество", "Итого за товар"]

total_sum = 0
products.each do |name, attr|
  total_product = attr[:price] * attr[:amount] # стоимость за один товар
  total_sum += total_product # стоимость всех покупок

  puts "%20s   %15s   %10s   %14s" % [name, attr[:price], attr[:amount], total_product]
end

puts
puts "Всего потрачено средств: #{total_sum}"
