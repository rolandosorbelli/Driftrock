require "./lib/getData.rb"

describe GetData do
	
	subject(:data) {described_class.new}

	it "gets users data from the API" do
		expect(data.users_data).not_to eq nil
	end

	it "gets purchases data from the API" do
		expect(data.purchases_data).not_to eq nil
	end
end