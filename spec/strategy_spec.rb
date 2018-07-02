require_relative '../src/strategy'

describe 'Boss' do
  it 'can pay cooker assistants' do
    cooker = Staff.new('Nacho')

    cooker.set_payment_strategy(CookerAssistantSalary.new)

    expect(cooker.retrieve_salary).to eq(1000)
  end

  it 'can pay cookers' do
    cooker = Staff.new('Nacho')

    cooker.set_payment_strategy(CookerSalary.new)

    expect(cooker.retrieve_salary).to eq(1300)
  end

  it 'can pay chef' do
    cooker = Staff.new('Nacho')

    cooker.set_payment_strategy(CheffSalary.new)

    expect(cooker.retrieve_salary).to eq(2000)
  end

  it 'cooker assistants salary evolution' do
    cooker = Staff.new('Nacho')
    cooker.set_payment_strategy(CookerAssistantSalary.new)
    expect(cooker.retrieve_salary).to eq(1000)

    cooker.set_payment_strategy(CookerSalary.new)

    expect(cooker.retrieve_salary).to eq(1300)
  end

  it 'can pay second chef' do
    cooker = Staff.new('Nacho')

    cooker.set_payment_strategy(SecondCheffSalary.new)

    expect(cooker.retrieve_salary).to eq(1600)
  end
end
