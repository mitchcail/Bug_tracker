
class TicketsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @tickets=Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)
    @ticket.state = "open"
    respond_to do |format|
     if @ticket.save
        format.html {redirect_to tickets_url, notice: "Ticket created successfully"}
     else
        format.html { render :new }
     end
    end


   end



   def ticket_params
     params.require(:ticket).permit(:name, :description, :state, :user_id) 
   end

end
