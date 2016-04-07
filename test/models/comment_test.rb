require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    def test_comment

	  	@comment = comments(:two)
	  	@user = users(:two)
	  	@comment.user_id = @user.id
	  	assert_equal(@comment.user_id, 2)

	end
end
