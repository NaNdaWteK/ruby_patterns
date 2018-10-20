require_relative '../src/decorator'

describe 'DECORATOR PATTERN' do
  context 'Paella Valenciana' do
    it 'has all his ingredients' do
      dish = Dish.new('Rice', 'Chicken')

      vegetables = add_vegetables(dish)
      paella = add_meets(vegetables)

      expect(paella.get_ingredients).to include('Bean', 'Tomatoe', 'Rabbit', 'Rice', 'Chicken')
    end
  end

  def add_vegetables(dish)
    vegetables = VegetablesDecorator.new(dish)
    vegetables.add_vegetable('Bean')
    vegetables.add_vegetable('Tomatoe')
    vegetables
  end

  def add_meets(decorate)
    meet = MeetDecorator.new(decorate)
    meet.add_meet('Rabbit')
    meet
  end
end
