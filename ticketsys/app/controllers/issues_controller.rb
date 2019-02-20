class IssuesController < ApplicationController
    before_action :authenticate_user!
    # load_and_authorize_resource
    # load_and_authorize_resource :only => [:new, :edit]
    # skip_authorize_resource :only => :index
   
    def index
        @issues = Issue.all
    end

    def new
        @issue = Issue.new
    end
    
    def create
        issue = Issue.new
        issue.name = params[:issue][:name]
        issue.description = params[:issue][:description]
        issue.picture = params[:issue][:picture]
        issue.save
        redirect_to issues_path
    end

    def edit
        @issue = Issue.find(params[:id])
    end
    
    def update
        issue = Issue.find(params[:id])
        issue.name = params[:issue][:name]
        issue.description = params[:issue][:description]
        issue.picture = params[:issue][:picture]
        issue.save
        redirect to issues_path
    end
    
    def delete
        issue = Issue.find(params[:id])
        issue
    end
end