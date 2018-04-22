class PagesController < ApplicationController

  def home
  end

  def show
   render params[:page]
 end

end
