class TicketsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @tickets = Ticket.where(user_id: current_user.id)
    end
    
    def show
    end
    
    def new
        @ticket = Ticket.new
    end
    
    def create
        @ticket = Ticket.new
        @ticket.pcname = params[:ticket][:pcname]
        @ticket.name = params[:ticket][:name]
        @ticket.extension = params[:ticket][:extension]
        @ticket.status = 'created'
        @ticket.user_id = current_user.id
        @ticket.save
        redirect_to assign_ticket_path(@ticket)
    end
    
    def assign
        @ticket = Ticket.find(params[:id])
        @issues = Issue.all
    end
    
    def add
        @ticket = Ticket.find(params[:id])
        ticket_issue = TicketIssue.new
        ticket_issue.issue_id = params[:issue_id]
        ticket_issue.ticket_id = params[:id]
        ticket_issue.save
        redirect_to assign_ticket_path(@ticket)
    end
    
    def remove
        @ticket = Ticket.find(params[:id])
        ticket_issue = TicketIssue.find(params[:ticket_issue_id])
        ticket_issue.destroy
        redirect_to assign_ticket_path(@ticket)
    end
    
    def submit
        @ticket = Ticket.find(params[:id])
        @ticket.status = 'submitted'
        @ticket.save
        redirect_to tickets_path
    end
    
end