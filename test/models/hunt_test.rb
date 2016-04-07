require 'test_helper'

class HuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def test_hunt_user

	  	@user = users(:one)
	  	@ticket = tickets(:one)

	  	@hunt = Hunt.new(user_id: @user.id, ticket_id: @ticket.id)

	  	assert_not_nil(@hunt.user_id)
	  	assert_not_nil(@hunt.ticket_id)
	end
end
