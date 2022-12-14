# Курс: "Основы Ruby [Полная програмаа - 2022]"
# Задание: "Основы Ruby. Часть 2"
# Задача 4 (хэш с гласными буквами и их порядковыми номерами в алфавите)
# Студент: Константин Голуб (Kos)

# Хэш:  {'a' => 1, 'b' => 2, ..., 'z' => 26}
letters = ('a'..'z').to_a.zip(1..('a'..'z').size).to_h

# Хэш только с гласными:  {'a' => 1, 'e' => 5, ..., 'y' => 25}
vovels = letters.select { |letter, index| 'aeiouy'.include?(letter) }

puts vovels
