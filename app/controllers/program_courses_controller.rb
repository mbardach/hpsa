class ProgramCoursesController < ApplicationController
  # GET /program_courses
  # GET /program_courses.json
  def index
    @program_courses = ProgramCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @program_courses }
    end
  end

  # GET /program_courses/1
  # GET /program_courses/1.json
  def show
    @program_course = ProgramCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program_course }
    end
  end

  # GET /program_courses/new
  # GET /program_courses/new.json
  def new
    @program_course = ProgramCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program_course }
    end
  end

  # GET /program_courses/1/edit
  def edit
    @program_course = ProgramCourse.find(params[:id])
  end

  # POST /program_courses
  # POST /program_courses.json
  def create
    @program_course = ProgramCourse.new(params[:program_course])

    respond_to do |format|
      if @program_course.save
        format.html { redirect_to @program_course, notice: 'Program course was successfully created.' }
        format.json { render json: @program_course, status: :created, location: @program_course }
      else
        format.html { render action: "new" }
        format.json { render json: @program_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /program_courses/1
  # PUT /program_courses/1.json
  def update
    @program_course = ProgramCourse.find(params[:id])

    respond_to do |format|
      if @program_course.update_attributes(params[:program_course])
        format.html { redirect_to @program_course, notice: 'Program course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_courses/1
  # DELETE /program_courses/1.json
  def destroy
    @program_course = ProgramCourse.find(params[:id])
    @program_course.destroy

    respond_to do |format|
      format.html { redirect_to program_courses_url }
      format.json { head :no_content }
    end
  end
end
