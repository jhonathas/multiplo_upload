class FotosController < ApplicationController

  def index
    @foto = Foto.all

    respond_to do |format|
      format.html
      format.json  { render :json => @foto.collect { |p| p.to_jq_upload }.to_json }
    end

  end

  def create

 
    @foto = Foto.new(params[:foto])

    if @foto.save
     render :json => [ @foto.to_jq_upload ].to_json
    else 
     render :json => [ @foto.to_jq_upload.merge({ :error => "custom_failure" }) ].to_json
    end

  end

  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy
    render :json => true
  end

end
