class StaticPagesController < ApplicationController
  def home
    @post = current_user.posts.build if signed_in?
    @feed_items = current_user.feed
  end

  def help
  end

  def about
  end
end
