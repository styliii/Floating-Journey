class EntriesController < ApplicationController
  before_filter :authorize
  
  def index
    @user = current_user
    @entries = @user.entries.order(:created_at).reverse_order
  end

  def new
    @entry = Entry.new    
  end

  def create
    @entry = Entry.new(params[:entry])
    @entry.user = current_user
  
    respond_to do |format|
      if @entry.save
        format.html { redirect_to entries_path, notice: 'Entry was successfully created.' }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url }
      format.json { head :no_content }
    end
  end

end
