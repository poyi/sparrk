class DesignsController < ApplicationController
  # GET /designs
  # GET /designs.json
  def index
    @designs = Design.all
    redirect_to root_path
  end

  # GET /designs/1
  # GET /designs/1.json
  def show
    @design = Design.find(params[:id])
    redirect_to root_path
  end

  # GET /designs/new
  # GET /designs/new.json
  def new
    @design = Design.new
    redirect_to root_path
  end

  # GET /designs/1/edit
  def edit
    @design = Design.find(params[:id])
    redirect_to root_path
  end

  # POST /designs
  # POST /designs.json
  def create
    @project = Project.find(params[:project_id])
    @design = @project.designs.build(params[:design])

    respond_to do |format|
      if @design.save
        format.html { redirect_to :back } 
        format.json { render json: @project, status: :created, location: @project } 
      else
        format.html { redirect_to :back }
      end
    end
  end

  # PUT /designs/1
  # PUT /designs/1.json
  def update
    @design = Design.find(params[:id])
    respond_to do |format|
      if @design.update_attributes(params[:design])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
  end

  # DELETE /designs/1
  # DELETE /designs/1.json
  def destroy
    @project = Project.find(params[:project_id])
    @design = Prototype.find(params[:id])
    @design.destroy
    @design.remove_image!
    @design.remove_image = true


    respond_to do |format|
      format.html { redirect_to :back }
      format.xml  { head :ok }
    end
  end
end
