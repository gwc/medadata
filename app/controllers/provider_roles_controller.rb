class ProviderRolesController < ApplicationController
  # GET /provider_roles
  # GET /provider_roles.xml
  def index
    @provider_roles = ProviderRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @provider_roles }
    end
  end

  # GET /provider_roles/1
  # GET /provider_roles/1.xml
  def show
    @provider_role = ProviderRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @provider_role }
    end
  end

  # GET /provider_roles/new
  # GET /provider_roles/new.xml
  def new
    @provider_role = ProviderRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @provider_role }
    end
  end

  # GET /provider_roles/1/edit
  def edit
    @provider_role = ProviderRole.find(params[:id])
  end

  # POST /provider_roles
  # POST /provider_roles.xml
  def create
    @provider_role = ProviderRole.new(params[:provider_role])

    respond_to do |format|
      if @provider_role.save
        flash[:notice] = 'ProviderRole was successfully created.'
        format.html { redirect_to(@provider_role) }
        format.xml  { render :xml => @provider_role, :status => :created, :location => @provider_role }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @provider_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provider_roles/1
  # PUT /provider_roles/1.xml
  def update
    @provider_role = ProviderRole.find(params[:id])

    respond_to do |format|
      if @provider_role.update_attributes(params[:provider_role])
        flash[:notice] = 'ProviderRole was successfully updated.'
        format.html { redirect_to(@provider_role) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @provider_role.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_roles/1
  # DELETE /provider_roles/1.xml
  def destroy
    @provider_role = ProviderRole.find(params[:id])
    @provider_role.destroy

    respond_to do |format|
      format.html { redirect_to(provider_roles_url) }
      format.xml  { head :ok }
    end
  end
end
