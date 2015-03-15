class ProfilesController < ApplicationController
  def index
    profile_service = ProfileService.new
    @profiles = profile_service.list
  end
end

