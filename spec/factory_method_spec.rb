require_relative '../src/factory_method'

describe 'FACTORY METHOD PATTERN' do
  context 'Recruit' do
    it 'one kitchen assistant if kitchen level is more than 200' do
      kitchen_level = 201
      kitchen = Kitchen.new(kitchen_level)

      cheff = Cheff.new(kitchen)
      recruiter = RecruiterFactory.new(cheff)

      expect(recruiter.recruit_cooks).to be_instance_of(KitchenAssistant)
    end

    it 'one cook if kitchen level is less than 200' do
      kitchen_level = 199
      kitchen = Kitchen.new(kitchen_level)

      cheff = Cheff.new(kitchen)
      recruiter = RecruiterFactory.new(cheff)

      expect(recruiter.recruit_cooks).to be_instance_of(Cook)
    end
  end
end
