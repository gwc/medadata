class EncounterTypesController < ApplicationController
  # GET /encounter_types
  # GET /encounter_types.xml
  def index
    @encounter_types = EncounterType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_types }
    end
  end

  # GET /encounter_types/1
  # GET /encounter_types/1.xml
  def show
    @encounter_type = EncounterType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_type }
    end
  end

  # GET /encounter_types/new
  # GET /encounter_types/new.xml
  def new
    @encounter_type = EncounterType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_type }
    end
  end

  # GET /encounter_types/1/edit
  def edit
    @encounter_type = EncounterType.find(params[:id])
  end

  # POST /encounter_types
  # POST /encounter_types.xml
  def create
    @encounter_type = EncounterType.new(params[:encounter_type])

    respond_to do |format|
      if @encounter_type.save
        flash[:notice] = 'EncounterType was successfully created.'
        format.html { redirect_to(@encounter_type) }
        format.xml  { render :xml => @encounter_type, :status => :created, :location => @encounter_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_types/1
  # PUT /encounter_types/1.xml
  def update
    @encounter_type = EncounterType.find(params[:id])

    respond_to do |format|
      if @encounter_type.update_attributes(params[:encounter_type])
        flash[:notice] = 'EncounterType was successfully updated.'
        format.html { redirect_to(@encounter_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_types/1
  # DELETE /encounter_types/1.xml
  def destroy
    @encounter_type = EncounterType.find(params[:id])
    @encounter_type.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_types_url) }
      format.xml  { head :ok }
    end
  end
end
