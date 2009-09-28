class PatientEncountersController < ApplicationController
  layout 'main'
  # GET /patient_encounters
  # GET /patient_encounters.xml
  def index
    @patient_encounters = PatientEncounter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @patient_encounters }
    end
  end

  # GET /patient_encounters/1
  # GET /patient_encounters/1.xml
  def show
    @patient_encounter = PatientEncounter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @patient_encounter }
    end
  end

  # GET /patient_encounters/new
  # GET /patient_encounters/new.xml
  def new
    @patient_encounter = PatientEncounter.new
    @patients = Patient.all
    @providers = Provider.all
    @institutions = Institution.all
    @encounter_reasons = EncounterReason.all
    @encounter_types = EncounterType.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @patient_encounter }
    end
  end

  # GET /patient_encounters/1/edit
  def edit
    @patient_encounter = PatientEncounter.find(params[:id])
  end

  # POST /patient_encounters
  # POST /patient_encounters.xml
  def create
    @patient_encounter = PatientEncounter.new(params[:patient_encounter])

    respond_to do |format|
      if @patient_encounter.save
        flash[:notice] = 'Patient_Encounter was successfully created.'
        format.html { redirect_to(@patient_encounter) }
        format.xml  { render :xml => @patient_encounter, :status => :created, :location => @patient_encounter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @patient_encounter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /patient_encounters/1
  # PUT /patient_encounters/1.xml
  def update
    @patient_encounter = PatientEncounter.find(params[:id])

    respond_to do |format|
      if @patient_encounter.update_attributes(params[:patient_encounter])
        flash[:notice] = 'Patient_Encounter was successfully updated.'
        format.html { redirect_to(@patient_encounter) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @patient_encounter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_encounters/1
  # DELETE /patient_encounters/1.xml
  def destroy
    @patient_encounter = PatientEncounter.find(params[:id])
    @patient_encounter.destroy

    respond_to do |format|
      format.html { redirect_to(patient_encounters_url) }
      format.xml  { head :ok }
    end
  end
end
