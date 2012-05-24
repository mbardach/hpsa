class QuoteDetailsController < ApplicationController
  # GET /quote_details
  # GET /quote_details.json
  def index
    @quote_details = QuoteDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quote_details }
    end
  end

  # GET /quote_details/1
  # GET /quote_details/1.json
  def show
    @quote_detail = QuoteDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quote_detail }
    end
  end

  # GET /quote_details/new
  # GET /quote_details/new.json
  def new
    @quote_detail = QuoteDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote_detail }
    end
  end

  # GET /quote_details/1/edit
  def edit
    @quote_detail = QuoteDetail.find(params[:id])
  end

  # POST /quote_details
  # POST /quote_details.json
  def create
    @quote_detail = QuoteDetail.new(params[:quote_detail])

    respond_to do |format|
      if @quote_detail.save
        format.html { redirect_to @quote_detail, notice: 'Quote detail was successfully created.' }
        format.json { render json: @quote_detail, status: :created, location: @quote_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @quote_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quote_details/1
  # PUT /quote_details/1.json
  def update
    @quote_detail = QuoteDetail.find(params[:id])

    respond_to do |format|
      if @quote_detail.update_attributes(params[:quote_detail])
        format.html { redirect_to @quote_detail, notice: 'Quote detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @quote_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_details/1
  # DELETE /quote_details/1.json
  def destroy
    @quote_detail = QuoteDetail.find(params[:id])
    @quote_detail.destroy

    respond_to do |format|
      format.html { redirect_to quote_details_url }
      format.json { head :no_content }
    end
  end
end
