require('rspec')
require('triangle')

describe('Triangle#initialize') do
  it('creates a new triangle object based on the three provided side arguments') do
    expect(Triangle.new(3,4,5).class).to(eq(Triangle))
  end
end

describe('Triangle#type') do

end
