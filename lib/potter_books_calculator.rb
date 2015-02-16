=begin
  expected input [x,y,z,t,u]
  where x - number of 1st volume books
        y - number of 2nd volume books
        etc
=end

DISCOUNTS = [1 - 0, 1 - 5.0/100, 1 - 10.0/100, 1 - 20.0/100, 1 - 25.0/100]
BOOK_PRICE = 8
def final_price(books)
  final_price = 0
  while books.length > 0 do
    books.select! { |count| count > 0 }
    final_price += books.length * BOOK_PRICE * DISCOUNTS[books.length-1]
    books.collect!{|count| count-1}
  end
  final_price
end