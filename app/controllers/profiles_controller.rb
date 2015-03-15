class ProfilesController < ApplicationController
  def index
    profile_service = ProfileService.new
    @profiles = profile_service.list
  end

  def show
    profile_service = ProfileService.new
    @profile = profile_service.get(params[:id])
    render text: "Not found", status: 4040 if !@profile
  end

  def search
    if params.has_key?(:query)
      profile_service = ProfileService.new
      @profiles = profile_service.search(params[:query])
    end
  end
end

