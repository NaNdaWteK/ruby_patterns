class Staff
  BASE = 1000
  def initialize(name)
    @name = name
  end

  def set_payment_strategy(strategy)
    @salary = strategy
  end

  def retrieve_salary
    @salary.retrieve(BASE)
  end
end

class CookerAssistantSalary
  FACTOR = 1
  def retrieve(base)
    base * FACTOR
  end
end

class CookerSalary
  FACTOR = 1.3
  def retrieve(base)
    base * FACTOR
  end
end

class CheffSalary
  FACTOR = 2
  def retrieve(base)
    base * FACTOR
  end
end

class SecondCheffSalary
  FACTOR = 1.6
  def retrieve(base)
    base * FACTOR
  end
end
