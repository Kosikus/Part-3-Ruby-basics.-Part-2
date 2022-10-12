# Курс: "Основы Ruby [Полная програмаа - 2022]"
# Задание: "Основы Ruby. Часть 2"
# Задача 1 (месяцы с количеством дней равным 30)
# Студент: Константин Голуб (Kos)

months = {january: 31,
          february: [28, 29],
          march: 31,
          april: 30,
          may: 31,
          june: 30,
          july: 31,
          august: 31,
          september: 30,
          octomber: 31,
          november: 30,
          december: 31,
}

# не нравится, что тут будет сравнение [28, 29] == 30 => false, но это на правильный ответ не влияет
months.each { |month, days| puts month if days == 30 }
