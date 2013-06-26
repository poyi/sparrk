class NotesController < ApplicationController
  # GET /notes
  # GET /notes.json

  def index
    @notes = Note.all
    redirect_to root_path
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])
    redirect_to root_path
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new
    redirect_to root_path
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
    redirect_to root_path
  end

  # POST /notes
  # POST /notes.json
  def create
    @project = Project.find(params[:project_id])
    @note = @project.notes.build(params[:note])

     respond_to do |format|
      if @note.save
        format.html { redirect_to :back }
        format.json { render json: @project, status: :created, location: @project }  
      else
        format.html { redirect_to :back }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])
    @project = @note.project

    respond_to do |format|
      if @note.save
        format.html { redirect_to :back }
        format.json { render json: @project, status: :created, location: @project }  
      else
        format.html { redirect_to :back }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @note = Note.find(params[:id])
    @note.destroy
    @note.remove_image!
    @note.remove_image = true


    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
    
  end
