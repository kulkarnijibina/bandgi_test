require 'rails_helper'

include PostsHelper
RSpec.describe PostsHelper, type: :helper do
  it 'assigns a user to a post' do
    creator = User.first_or_create!(email: 'ex@example.com', password: 'password', password_confirmation: 'password')
    @post = Post.new(
      title: 'MyString',
      body: 'MyText',
      views: 1
    )
    assign_post_creator(@post, creator)
    expect(@post.user).to be(creator)
  end
end