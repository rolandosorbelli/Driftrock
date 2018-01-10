require './lib/users.rb'

describe Users do
  subject(:user) { described_class.new }

  users_data = [{
    'id' => 'KZHR-1H35-2IH8-JXYN',
    'first_name' => 'Rolando',
    'last_name' => 'Sorbelli',
    'phone' => '186.301.6921 x948',
    'email' => 'rolando@g.com'
  }]

  purchases_data = [{
    'user_id' => 'KZHR-1H35-2IH8-JXYN',
    'item' => 'Synergistic Aluminum Shoes',
    'spend' => '27.78'
  },
                    {
                      'user_id' => 'KZHR-1H35-2IH8-JXYN',
                      'item' => 'Gorgeous Paper Hat',
                      'spend' => '54.5'
                    }]

  it 'finds user id' do
    expect(user.user_id('rolando@g.com', users_data)).to eq 'KZHR-1H35-2IH8-JXYN'
  end

  it 'calculates the user total' do
    expect(user.calculate_total_spend('KZHR-1H35-2IH8-JXYN', purchases_data)).to eq 82.28
  end
end
