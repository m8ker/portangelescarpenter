class HeadersController < ApplicationController
  before_filter :authenticate_user!
  # GET /headers
  # GET /headers.json
  def index
    authorize! :index, @header, :message => 'Not authorized as an administrator.'
    @header = Header.find(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @headers }
    end
  end

  # GET /headers/1
  # GET /headers/1.json
  def show
    authorize! :show, @header, :message => 'Not authorized as an administrator.'
    @header = Header.find(1)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @header }
    end
  end

  # GET /headers/new
  # GET /headers/new.json
  def new
    authorize! :new, @header, :message => 'Not authorized as an administrator.'
    @header = Header.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @header }
    end
  end

  # GET /headers/1/edit
  def edit
    authorize! :edit, @header, :message => 'Not authorized as an administrator.'
    @header = Header.find(1)
  end

  # POST /headers
  # POST /headers.json
  def create
    authorize! :create, @header, :message => 'Not authorized as an administrator.'
    @header = Header.new(params[:header])

    respond_to do |format|
      if @header.save
        format.html { redirect_to @header, notice: 'Header was successfully created.' }
        format.json { render json: @header, status: :created, location: @header }
      else
        format.html { render action: "new" }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /headers/1
  # PUT /headers/1.json
  def update
    authorize! :update, @header, :message => 'Not authorized as an administrator.'
    @header = Header.find(1)

    respond_to do |format|
      if @header.update_attributes(params[:header])
        format.html { redirect_to @header, notice: 'Header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headers/1
  # DELETE /headers/1.json
  def destroy
    authorize! :destroy, @header, :message => 'Not authorized as an administrator.'
    @header = Header.find(1)
    @header.destroy

    respond_to do |format|
      format.html { redirect_to headers_url }
      format.json { head :no_content }
    end
  end
end
