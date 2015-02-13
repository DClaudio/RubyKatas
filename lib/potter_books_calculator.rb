=begin
  expected input [x,y,z,t,u]
  where x - number of 1st volume books
        y - number of 2nd volume books
        etc
=end

DISCOUNTS = [1, 5.0/100, 10.0/100, 20.0/100, 25.0/100]
BOOK_PRICE = 8
def final_price(books)
  final_price = 0
  remaining_books = books.select{ |count| count > 0}
  remaining_books.each { |book_count| final_price += BOOK_PRICE * book_count}
  if remaining_books.length > 1
    final_price -= final_price * DISCOUNTS[remaining_books.length-1]
  end
  final_price
end