class HomeController < ApplicationController
  def index
    redirect_to(users_path) if @auth.present?
  end
  def about
  end
  def faq
  end
end