require 'rails_helper'

RSpec.describe Gift, type: :model do

  it "required name" do
  end

	it "show list ordering by created_date" do
		cartoon = Gift.create(name: "cartoon")
		flower = Gift.create(name: "flower")
	end
end
