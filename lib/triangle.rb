class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  define_method(:type) do
    if @side1 == @side2 && @side2 == @side3
      "Equilateral"
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      "Not a triangle"
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      "Isosceles"
    else
      "Scalene"
    end
  end
end
