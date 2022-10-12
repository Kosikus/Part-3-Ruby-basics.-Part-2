# Курс: "Основы Ruby [Полная програмаа - 2022]"
# Задание: "Основы Ruby. Часть 2"
# Задача 3 (числа Фибоначчи)
# Студент: Константин Голуб (Kos)

nums_fibo = [1, 1]

while nums_fibo[-1] + nums_fibo[-2] <= 100
  nums_fibo << nums_fibo[-1] + nums_fibo[-2]
end

print nums_fibo
