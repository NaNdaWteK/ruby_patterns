class RecruiterRestaurantFactory
  def initialize(cheff, head_waiter)
    @cheff = cheff
    @head_waiter = head_waiter
  end

  def recruit_cooks
    return KitchenAssistant.new if restaurant_cook_level > 200
    return Cook.new if restaurant_cook_level < 200
  end

  def recruit_waiters
    return WaiterAssistant.new if restaurant_hall_level > 200
    return Waiter.new if restaurant_hall_level < 200
  end

  private

  def restaurant_cook_level
    @cheff.cooks_level
  end

  def restaurant_hall_level
    @head_waiter.waiters_level
  end
end

class RecruiterBarFactory
  def initialize(cheff, head_waiter)
    @cheff = cheff
    @head_waiter = head_waiter
  end

  def recruit_cooks
    return KitchenAssistant.new if restaurant_cook_level > 100
    return Cook.new if restaurant_cook_level < 100
  end

  def recruit_waiters
    return WaiterAssistant.new if restaurant_hall_level > 100
    return Waiter.new if restaurant_hall_level < 100
  end

  private

  def restaurant_cook_level
    @cheff.cooks_level
  end

  def restaurant_hall_level
    @head_waiter.waiters_level
  end
end

class Cook
  def initialize
    @cook_level = 30
  end
end

class KitchenAssistant
  def initialize
    @cook_level = 15
  end
end

class Waiter
  def initialize
    @cook_level = 30
  end
end

class WaiterAssistant
  def initialize
    @cook_level = 15
  end
end

class Kitchen
  def initialize(cooks_level)
    @cooks_level = cooks_level
  end
  def cooks_level
    @cooks_level
  end
end

class Hall
  def initialize(waiters_level)
    @waiters_level = waiters_level
  end
  def waiters_level
    @waiters_level
  end
end

class Cheff
  def initialize(kitchen)
    @cook_level = 100
    @kitchen = kitchen
  end

  def cooks_level
    @kitchen.cooks_level
  end
end

class HeadWaiter
  def initialize(hall)
    @waiter_level = 100
    @hall = hall
  end

  def waiters_level
    @hall.waiters_level
  end
end
