class AnswersController < ApplicationController
  def index
    Fetcher.fetch!
    @answers = Answer.all
    @answer = Answer.random
    
    description = 'Why did the chicken cross the road? Get earth shattering answers to the all-important question!'
    set_meta_tags :open_graph => {
  	  :title => 'Why Did The Chicken Cross The Road?',
  	  :url   => 'http://whydidthechicken.com',
  	  :image => 'http://whydidthechicken.com/why.png',
  	  :admins => '618030500',
  	  :description => description
    }
    
    set_meta_tags :description => description
  end

  def show
    begin
      @answer = Answer.find(params[:id])
    rescue
      redirect_to answers_url
      return
    end
    
    description = "Why did the chicken cross the road? @#{@answer.screen_name} says it's #{@answer.filtered_reason}. Get more answers now."
    set_meta_tags :open_graph => {
  	  :title => 'Why Did The Chicken Cross The Road?',
  	  :url   => "http://whydidthechicken.com/#{@answer.permalink}",
  	  :image => 'http://whydidthechicken.com/why.png',
  	  :admins => '618030500',
  	  :description => description
    }
    
    set_meta_tags :description => description
    
    render 'index'
  end

  # def new
  #   @answer = Answer.new
  # end
  # 
  # def create
  #   @answer = Answer.new(params[:answer])
  #   if @answer.save
  #     redirect_to @answer, :notice => "Successfully created answer."
  #   else
  #     render :action => 'new'
  #   end
  # end
  # 
  # def edit
  #   @answer = Answer.find(params[:id])
  # end
  # 
  # def update
  #   @answer = Answer.find(params[:id])
  #   if @answer.update_attributes(params[:answer])
  #     redirect_to @answer, :notice  => "Successfully updated answer."
  #   else
  #     render :action => 'edit'
  #   end
  # end
  # 
  # def destroy
  #   @answer = Answer.find(params[:id])
  #   @answer.destroy
  #   redirect_to answers_url, :notice => "Successfully destroyed answer."
  # end
end
