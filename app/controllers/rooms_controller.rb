class RoomsController < ApplicationController
  def index
  	@rooms = Room.all
  end

  def show
  	@room = Room.find_by_url(params[:id])
  end

  def new
  	@room = Room.new
  end

  def create
  	@room = Room.new(params[:room]) # :room gets the form values
  	if @room.save
  		flash[:success] = 'room created'
  		redirect_to room_path(@room)
  	else
  		render "new"
  	end
  end
end
