class GossipcreationController < ApplicationController

  def index
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 43) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      puts "Tu as réussi"
      redirect_to '/'
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      puts "ca ne fontionne pas"
      render 'index'
    end
  end
end
