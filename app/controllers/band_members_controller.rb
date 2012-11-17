class BandMembersController < ApplicationController
  
  def index
  	@band_members = BandMember.all
  end

  def show
  	@band_member = BandMember.find(params[:id])
  end

end
