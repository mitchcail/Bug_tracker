require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

   def test_ticket

	  	@ticket = Ticket.new
	  	@ticket.name = "Test ticket"
	    assert_equal("Test ticket", @ticket.name )
	end

	def test_comment

	  	@comment = Comment.new
	  	@comment.text = "this is an intersting bug"
	    assert_equal("this is an intersting bug", @comment.text )

	end

	def test_user

	  	@user = User.new
	  	@user.email = "test@testMail.com"
	    assert_equal("test@testMail.com", @user.email)

	end

	def test_ticket_user

	  	@user = User.new 
	  	@ticket = @user.tickets.new
	  	assert_not_nil(@ticket.user)

	end



end
