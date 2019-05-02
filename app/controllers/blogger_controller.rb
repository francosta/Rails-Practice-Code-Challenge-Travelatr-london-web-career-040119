class BloggerController < ApplicationController
  before_action :set_blogger, only: :show

  def index
    @bloggers = Blogger.all
  end

  def show
  end

  def new
  end

  def create
    @blogger = Blogger.new

    if @blogger.valid?
      @blogger.save
      redirect_to blogger_path(@blogger)
    else
      # `.errors.full.messages` returns an array of strings
      flash[:errors] = @blogger.full_messages
      redirect_to new_blogger_path
    end
  end



  private

  def set_blogger
    @blogger = Blogger.find(params[:id])
  end

end