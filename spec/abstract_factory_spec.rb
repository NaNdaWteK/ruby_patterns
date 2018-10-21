require_relative '../src/abstract_factory'

describe 'ABSTRACT FACTORY PATTERN' do
  context 'Recruit for Restaurant' do
    it 'one kitchen assistant if kitchen level is more than 200' do
      kitchen_level = 201
      kitchen = Kitchen.new(kitchen_level)
      hall_level = 199
      hall = Hall.new(hall_level)

      cheff = Cheff.new(kitchen)
      head_waiter = HeadWaiter.new(hall)
      recruiter = RecruiterRestaurantFactory.new(cheff, head_waiter)

      expect(recruiter.recruit_cooks).to be_instance_of(KitchenAssistant)
    end

    it 'one waiter if hall level is less than 200' do
      kitchen_level = 201
      kitchen = Kitchen.new(kitchen_level)
      hall_level = 199
      hall = Hall.new(hall_level)

      cheff = Cheff.new(kitchen)
      head_waiter = HeadWaiter.new(hall)
      recruiter = RecruiterRestaurantFactory.new(cheff, head_waiter)

      expect(recruiter.recruit_waiters).to be_instance_of(Waiter)
    end
  end
  context 'Recruit for Bar' do
    it 'one cook if kitchen level is less than 100' do
      hall_level = 101
      hall = Hall.new(hall_level)
      kitchen_level = 99
      kitchen = Kitchen.new(kitchen_level)

      cheff = Cheff.new(kitchen)
      head_waiter = HeadWaiter.new(hall)
      recruiter = RecruiterBarFactory.new(cheff, head_waiter)

      expect(recruiter.recruit_cooks).to be_instance_of(Cook)
    end

    it 'one waiter assistant if hall level is more than 100' do
      hall_level = 101
      hall = Hall.new(hall_level)
      kitchen_level = 99
      kitchen = Kitchen.new(kitchen_level)

      cheff = Cheff.new(kitchen)
      head_waiter = HeadWaiter.new(hall)
      recruiter = RecruiterBarFactory.new(cheff, head_waiter)

      expect(recruiter.recruit_waiters).to be_instance_of(WaiterAssistant)
    end
  end
end
