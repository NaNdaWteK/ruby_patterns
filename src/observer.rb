class DishObservable
  def initialize
    @start = true
    @finish = false
    @observers = []
  end

  def add(observer)
    @observers << observer
  end

  def notify
    @observers.each do |observer|
      observer.update()
    end
  end

  def finish
    @finish = true
    notify
  end

  def get_state
    @finish
  end
end

class CheffObserver
  def initialize(observable)
    @dish = observable
    @cross_out_dish = false
  end
  def update
    @cross_out_dish = @dish.get_state
  end
  def dish_is_crossed_out?
    @cross_out_dish
  end
end

class WaiterObserver
  def initialize(observable)
    @dish = observable
    @serve_dish = false
  end
  def update
    @serve_dish = @dish.get_state
  end
  def dish_is_served?
    @serve_dish
  end
end
