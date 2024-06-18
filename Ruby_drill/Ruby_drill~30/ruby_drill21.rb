def parrot_trouble(talking, hour)
  if talking && hour == 7...20
    p "OK"
  elsif talking && hour == 1...6 or 21...24
    p "NG"
  else !talking
    p "OK"
  end
end

parrot_trouble(true, 6)
parrot_trouble(true, 7)
parrot_trouble(false, 6)
parrot_trouble(false, 7)
