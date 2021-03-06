class PrototypesController < ApplicationController
  # GET /prototypes
  # GET /prototypes.json
  def index
    @prototypes = Prototype.all
    redirect_to root_path
  end

  # GET /prototypes/1
  # GET /prototypes/1.json
  def show
    @prototype = Prototype.find(params[:id])
    redirect_to root_path
  end

  # GET /prototypes/new
  # GET /prototypes/new.json
  def new
    @prototype = Prototype.new
    redirect_to root_path
  end

  # GET /prototypes/1/edit
  def edit
    @prototype = Prototype.find(params[:id])
    redirect_to root_path
  end

  # POST /prototypes
  # POST /prototypes.json
  def create
    @project = Project.find(params[:project_id])
    @prototype = @project.prototypes.build(params[:prototype])
    
     respond_to do |format|
      if @prototype.save
        format.html { redirect_to :back } 
        format.json { render json: @project, status: :created, location: @project } 
      else
        format.html { redirect_to :back }
      end
    end
  end

  # PUT /prototypes/1
  # PUT /prototypes/1.json
  def update
    @prototype = Prototype.find(params[:id])

    respond_to do |format|
      if @prototype.update_attributes(params[:prototype])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prototype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prototypes/1
  # DELETE /prototypes/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    @prototype.remove_image!
    @prototype.remove_image = true


    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
end
