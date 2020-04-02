class User::ArticlesController < ApplicationController
  def index
    @user = current_user
    @articles = current_user.articles
  end
end
