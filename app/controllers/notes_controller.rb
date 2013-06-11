class NotesController < ApplicationController
  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notes }
    end
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])

  end

  # POST /notes
  # POST /notes.json
  def create
    @project = Project.find(params[:project_id])
    @note = @project.notes.build(params[:note])

     respond_to do |format|
      if @note.save
        format.html { redirect_to(@project, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { redirect_to(@project, :notice => 
        'Comment could not be saved. Please fill in all fields')}
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])
    @project = @note.project

    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to @project, notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
    
  end
