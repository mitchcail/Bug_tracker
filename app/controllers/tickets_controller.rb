class TicketsController < ApplicationController
  def index
    @tickets=Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)


    respond_to do |format|
     if @ticket.save
        format.html {redirect_to tickets_url, notice: "Ticket created successfully"}
     else
        format.html { render :new }
     end
    end


   end



   def ticket_params
     params.require(:ticket).permit(:name, :description, :state)
   end

end
