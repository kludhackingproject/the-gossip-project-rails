class GossipsController < ApplicationController
  def page
    @gossip = Gossip.find(params[:gossip])
  end
end
