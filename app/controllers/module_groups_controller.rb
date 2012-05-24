class ModuleGroupsController < ApplicationController
  # GET /module_groups
  # GET /module_groups.json
  def index
    @module_groups = ModuleGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @module_groups }
    end
  end

  # GET /module_groups/1
  # GET /module_groups/1.json
  def show
    @module_group = ModuleGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @module_group }
    end
  end

  # GET /module_groups/new
  # GET /module_groups/new.json
  def new
    @module_group = ModuleGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @module_group }
    end
  end

  # GET /module_groups/1/edit
  def edit
    @module_group = ModuleGroup.find(params[:id])
  end

  # POST /module_groups
  # POST /module_groups.json
  def create
    @module_group = ModuleGroup.new(params[:module_group])

    respond_to do |format|
      if @module_group.save
        format.html { redirect_to @module_group, notice: 'Module group was successfully created.' }
        format.json { render json: @module_group, status: :created, location: @module_group }
      else
        format.html { render action: "new" }
        format.json { render json: @module_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /module_groups/1
  # PUT /module_groups/1.json
  def update
    @module_group = ModuleGroup.find(params[:id])

    respond_to do |format|
      if @module_group.update_attributes(params[:module_group])
        format.html { redirect_to @module_group, notice: 'Module group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @module_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_groups/1
  # DELETE /module_groups/1.json
  def destroy
    @module_group = ModuleGroup.find(params[:id])
    @module_group.destroy

    respond_to do |format|
      format.html { redirect_to module_groups_url }
      format.json { head :no_content }
    end
  end
end
