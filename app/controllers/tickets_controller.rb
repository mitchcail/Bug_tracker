
class TicketsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @tickets=Ticket.all
  end

  def show
    @ticket  = Ticket.find(params[:id])

    @hunters = @ticket.hunts

    @creator = @ticket.user
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

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def close_ticket
    user_id = params[:user_id]
    ticket_id = params[:ticket_id]

    ticket = Ticket.find(ticket_id)
    ticket.state = "closed"
    ticket.save

    user = User.find(user_id)
    user.score += 100
    user.save

  end



   def ticket_params
     params.require(:ticket).permit(:name, :description, :state, :user_id) 
   end

end
