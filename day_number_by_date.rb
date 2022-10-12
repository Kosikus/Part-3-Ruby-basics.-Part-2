# Курс: "Основы Ruby [Полная програмаа - 2022]"
# Задание: "Основы Ruby. Часть 2"
# Задача 5 (номер дня по порядку в году)
# Студент: Константин Голуб (Kos)

# Месяцы невисокосного года со свойствами
months_non_leap = {january: {number: 1, days: 31},
                   february: {number: 2, days: 28},
                   march: {number: 3, days: 31},
                   april: {number: 4, days: 30},
                   may: {number: 5, days: 31},
                   june: {number: 6, days: 30},
                   july: {number: 7, days: 31},
                   august: {number: 8, days: 31},
                   september: {number: 9, days: 30},
                   octomber: {number: 10, days: 31},
                   november: {number: 11, days: 30},
                   december: {number: 12, days: 31},
}

# Месяцы високосного года со свойствами
months_leap =  months_non_leap.clone
months_leap[:february] = {number: 2, days: 29}

# Пользовательский ввод
puts "Введите номер дня в месяце:"
day = gets.to_i

puts "Введите номер месяца в году:"
month = gets.to_i

puts "Введите год:"
year = gets.to_i

# Високосный ли год?
leap = (year % 400 == 0) ||
       (year % 100 != 0 && year % 4 == 0)

# Выбор хэша месяцев в зависимости от високосности
months = months_non_leap.clone
months = months_leap.clone if leap

# Номер дня с начала года
# учёт дней, входящих в завершенные месяцы
day_number = months.values.to_a. # только массив значений-свойств
             sort_by { |attr| attr[:number] }. # сортировка по номеру месяца в году
             take(month - 1).sum(0) { |attr| attr[:days] }

# учёт дней в текущем (незавершённом месяце)
day_number += day

# Вывод
puts day_number
