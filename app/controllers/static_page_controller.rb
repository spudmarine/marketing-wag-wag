class StaticPageController < ApplicationController
  def home
    @user = User.new
  end
  def mail
  end
end
