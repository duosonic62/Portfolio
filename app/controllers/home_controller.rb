class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @contact = Contact.new
  end

  def afford
    binding.pry
    @contact = Contact.new(params[:contact])
  end
end
