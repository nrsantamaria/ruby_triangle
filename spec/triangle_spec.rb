require('rspec')
require('triangle')

describe('Triangle#initialize') do
  it('creates a new triangle object based on the three provided side arguments') do
    expect(Triangle.new(3,4,5).class).to(eq(Triangle))
  end
end

describe('Triangle#type') do
  it('will return the triangle type of equilateral if the given triangle objects side properties are all the same') do
    expect(Triangle.new(3,3,3).type).to(eq('Equilateral'))
  end
  it("it will return 'not a triangle' if the given object's sides do not make a triangle (the sum of any two sides of the triangle is less than the third side)") do
    expect(Triangle.new(2,2,8).type).to(eq("Not a triangle"))
  end
  it('will return the triangle type of isosceles if two of the triangle objects side properties are the same') do
    expect(Triangle.new(2,2,3).type).to(eq("Isosceles"))
  end
end
