class TrainingUsersController < ApplicationController
  # GET /training_users
  # GET /training_users.json
  def index
    @training_users = TrainingUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training_users }
    end
  end

  # GET /training_users/1
  # GET /training_users/1.json
  def show
    @training_user = TrainingUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_user }
    end
  end

  # GET /training_users/new
  # GET /training_users/new.json
  def new
    @training_user = TrainingUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @training_user }
    end
  end

  # GET /training_users/1/edit
  def edit
    @training_user = TrainingUser.find(params[:id])
  end

  # POST /training_users
  # POST /training_users.json
  def create
    @training_user = TrainingUser.new(params[:training_user])

    respond_to do |format|
      if @training_user.save
        format.html { redirect_to @training_user, notice: 'Training user was successfully created.' }
        format.json { render json: @training_user, status: :created, location: @training_user }
      else
        format.html { render action: "new" }
        format.json { render json: @training_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /training_users/1
  # PUT /training_users/1.json
  def update
    @training_user = TrainingUser.find(params[:id])

    respond_to do |format|
      if @training_user.update_attributes(params[:training_user])
        format.html { redirect_to @training_user, notice: 'Training user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @training_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_users/1
  # DELETE /training_users/1.json
  def destroy
    @training_user = TrainingUser.find(params[:id])
    @training_user.destroy

    respond_to do |format|
      format.html { redirect_to training_users_url }
      format.json { head :no_content }
    end
  end
end
