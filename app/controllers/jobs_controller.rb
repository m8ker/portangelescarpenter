class JobsController < ApplicationController
  before_filter :authenticate_user!
  # GET /jobs
  # GET /jobs.json
  def index
    authorize! :index, @job, :message => 'Not authorized as an administrator.'
    @jobs = Job.all
    @header = Header.find(1)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    authorize! :show, @job, :message => 'Not authorized as an administrator.'
    @job = Job.find(params[:id])
    @header = Header.find(1)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.json
  def new
    authorize! :new, @job, :message => 'Not authorized as an administrator.'
    @job = Job.new
    @header = Header.find(1)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    authorize! :edit, @job, :message => 'Not authorized as an administrator.'
    @job = Job.find(params[:id])
    @header = Header.find(1)
  end

  # POST /jobs
  # POST /jobs.json
  def create
    authorize! :create, @job, :message => 'Not authorized as an administrator.'
    @job = Job.new(params[:job])
    @header = Header.find(1)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.json
  def update
    authorize! :update, @job, :message => 'Not authorized as an administrator.'
    @job = Job.find(params[:id])
    @header = Header.find(1)

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job = Job.find(params[:id])
    @header = Header.find(1)
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :no_content }
    end
  end
end
