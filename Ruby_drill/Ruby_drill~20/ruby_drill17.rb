def missing_char(str, n)
  str.slice!(n - 1)  
  p str
end

missing_char('kitten', 1)