class Dish
  def initialize(main_ingredient, secondary_ingredient)
    @main_ingredient = main_ingredient
    @secondary_ingredient = secondary_ingredient
    @ingredients = [main_ingredient, secondary_ingredient]
  end

  def get_ingredients
    @ingredients
  end
end

class VegetablesDecorator
  def initialize(decorate)
    @vegetables = []
    @decorator = decorate
  end

  def get_ingredients
    @decorator.get_ingredients.concat(@vegetables)
  end

  def add_vegetable(vegetable)
    @vegetables << vegetable
  end
end

class MeetDecorator
  def initialize(decorate)
    @meets = []
    @decorator = decorate
  end

  def get_ingredients
    @decorator.get_ingredients.concat(@meets)
  end

  def add_meet(meet)
    @meets << meet
  end
end
