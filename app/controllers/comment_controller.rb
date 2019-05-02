class CommentController < ApplicationController
  def create
    @comment = Comment.new(content: params[:content], user_id: 43, gossip_id: params[:id]) # avec xxx qui sont les données obtenues à partir du formulaire

    if @comment.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      puts "Tu as réussi"
      redirect_to gossip_path(params[:id])
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      puts "ca ne fontionne pas"
      redirect_to "/"
    end
  end
end
