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
      else
        format.html { redirect_to :back , :notice => 
        'Comment could not be saved. Please fill in all fields'}
      end
    end
  end

  # PUT /designs/1
  # PUT /designs/1.json
  def update
    @design = Design.find(params[:id])
    respond_to do |format|
      if @design.save
        format.html { redirect_to :back }  
      else
        format.html { redirect_to :back , :notice => 
        'Comment could not be saved. Please fill in all fields'}
      end
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
