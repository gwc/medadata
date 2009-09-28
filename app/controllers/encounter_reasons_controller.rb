class EncounterReasonsController < ApplicationController
  # GET /encounter_reasons
  # GET /encounter_reasons.xml
  def index
    @encounter_reasons = EncounterReason.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_reasons }
    end
  end

  # GET /encounter_reasons/1
  # GET /encounter_reasons/1.xml
  def show
    @encounter_reason = EncounterReason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_reason }
    end
  end

  # GET /encounter_reasons/new
  # GET /encounter_reasons/new.xml
  def new
    @encounter_reason = EncounterReason.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_reason }
    end
  end

  # GET /encounter_reasons/1/edit
  def edit
    @encounter_reason = EncounterReason.find(params[:id])
  end

  # POST /encounter_reasons
  # POST /encounter_reasons.xml
  def create
    @encounter_reason = EncounterReason.new(params[:encounter_reason])

    respond_to do |format|
      if @encounter_reason.save
        flash[:notice] = 'EncounterReason was successfully created.'
        format.html { redirect_to(@encounter_reason) }
        format.xml  { render :xml => @encounter_reason, :status => :created, :location => @encounter_reason }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_reason.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_reasons/1
  # PUT /encounter_reasons/1.xml
  def update
    @encounter_reason = EncounterReason.find(params[:id])

    respond_to do |format|
      if @encounter_reason.update_attributes(params[:encounter_reason])
        flash[:notice] = 'EncounterReason was successfully updated.'
        format.html { redirect_to(@encounter_reason) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_reason.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_reasons/1
  # DELETE /encounter_reasons/1.xml
  def destroy
    @encounter_reason = EncounterReason.find(params[:id])
    @encounter_reason.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_reasons_url) }
      format.xml  { head :ok }
    end
  end
end
