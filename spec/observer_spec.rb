require_relative '../src/observer'

describe 'Dish' do
  it 'is not crossed out because is not finished' do
    dish = DishObservable.new

    cheff = CheffObserver.new(dish)
    dish.add(cheff)

    expect(cheff.dish_is_crossed_out?).to be false
  end

  it 'is not served because is not finished' do
    dish = DishObservable.new

    waiter = WaiterObserver.new(dish)
    dish.add(waiter)

    expect(waiter.dish_is_served?).to be false
  end

  it 'is crossed out because dish finish is notify to cheff' do
    dish = DishObservable.new

    cheff = CheffObserver.new(dish)
    dish.add(cheff)
    dish.finish

    expect(cheff.dish_is_crossed_out?).to be true
  end

  it 'is served because dish finish is notify to waiter' do
    dish = DishObservable.new

    waiter = WaiterObserver.new(dish)
    dish.add(waiter)
    dish.finish

    expect(waiter.dish_is_served?).to be true
  end
end
