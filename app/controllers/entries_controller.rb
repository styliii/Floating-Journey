class EntriesController < ApplicationController
  def index
    @user = User.first
    @entries = @user.entries
  end

  def new
    @entry = Entry.new
    @user = User.first # hackey!!
  end

  def create
    @entry = Entry.new(params[:entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

end
