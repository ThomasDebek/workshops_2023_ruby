class CountElements
  def initialize(elements)
    @elements = elements
  end

  def my_method_to_count
    count = Hash.new(0)
    @elements.each { |element| count[element] += 1 }
    count
  end
end

przykladowa_tablica = [0, 4, 2, 1, 0, 2, 5]
dane = CountElements.new(przykladowa_tablica)
wynik = dane.my_method_to_count
puts wynik.inspect
