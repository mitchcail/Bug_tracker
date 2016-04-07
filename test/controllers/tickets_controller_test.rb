require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

   def test_ticket

	  	@ticket = Ticket.new
	  	@ticket.name = "test ticket"
	    assert_equal("test ticket", ticket.name)
	end
end
