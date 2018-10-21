class RecruiterFactory
  def initialize(cheff)
    @cheff = cheff
  end

  def kitchen_cook_level
    @cheff.cooks_level
  end

  def recruit_cooks
    return KitchenAssistant.new if kitchen_cook_level > 200
    return Cook.new if kitchen_cook_level < 200
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

class Kitchen
  def initialize(cooks_level)
    @cooks_level = cooks_level
  end
  def cooks_level
    @cooks_level
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
