require "./lib/users.rb"

describe Users do
	
	subject(:user) {described_class.new}

	users_data = [{
    'id' => 'KZHR-1H35-2IH8-JXYN',
    'first_name' => 'Rolando',
    'last_name' => 'Sorbelli',
    'phone' => '186.301.6921 x948',
    'email' => 'rolando@g.com'
    }]

    it "finds user id" do
    	expect(user.user_id("rolando@g.com", users_data)).to eq "KZHR-1H35-2IH8-JXYN"
    end
end