class StaticPagesController < ApplicationController

  def Home
  end

  def Sign_in
  end

  def signup
  end

  def Contact_us
  end

  def search
    @musics = Music.where("lower(name) like ?", "%#{params[:query].downcase}%")
    @status = "No result found"
    @musics = @musics.order("name ASC")
    render :layout => 'select'
  end

  
end
