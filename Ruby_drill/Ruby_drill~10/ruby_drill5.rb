price = 300

def calclate_price_with_tax(price)
  @price = price
  tax = 0.1
  return price + price * tax
end

p calclate_price_with_tax(price)