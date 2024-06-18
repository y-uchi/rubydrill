def fizz_buzz do
  while i < 100   
    # iが何を指すのか不明であり、しっかり前行に「i = 1」を記述する
    # また、whileでこの条件を刺したはいいものの何をするのかわからない、doが必要
    p i #いらない  また、「i <= 100」としないと100まで出力してくれない、99までである。
  if i % 15 == 0  # 
    p "FizzBuzz"
  elsif i % 5 == 0
    p "Buzz"
  elsif i % 3 == 0
    p "Fizz"
  else
    p i
  end  # end忘れがちなのでifを記述したら中身を記述する前にendを記述する
end
end

fizz_buzz