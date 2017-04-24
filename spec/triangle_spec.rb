require('rspec')
require('triangle')

describe('Triangle#initialize') do
  it('creates a new triangle object based on the three provided side arguments') do
    expect(Triangle.new(3,4,5).class).to(eq(Triangle))
  end
end

describe('Triangle#type') do
  it('will return the triangle type of equilateral if the given triangle objects side properties are all the same') do
    expect(Triangle.new(3,3,3).type()).to(eq('Equilateral'))
  end
end
