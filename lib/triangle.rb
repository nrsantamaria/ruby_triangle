class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @sides = [side1, side2, side3].map{|s| s.to_i}.sort
  end

  define_method(:type) do
    if @sides.uniq.length == 1
      "Equilateral"
    elsif @sides[0] + @sides[1] <= @sides[2]
      "Not a triangle"
    elsif @sides.uniq.length == 2
      "Isosceles"
    else
      "Scalene"
    end
  end
end
