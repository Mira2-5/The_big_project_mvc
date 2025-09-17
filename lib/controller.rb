require 'gossip'
require 'view'

class Controller
  def initialize
    @view = View.new
  end

  # 1. Créer un gossip
  def create_gossip
    params = @view.create_gossip     # Demande à l’utilisateur (via la View)
    gossip = Gossip.new(params[:author], params[:content]) # Crée un objet Gossip
    gossip.save                      # Sauvegarde en CSV (via le Model)
  end

  # 2. Afficher tous les gossips
  def index_gossips
    all_gossips = Gossip.all         # Récupère la liste depuis le Model
    @view.index_gossips(all_gossips) # Envoie la liste à la View pour affichage
  end

  # 3. Supprimer un gossip
  def delete_gossip
    index_gossips                    # On affiche d’abord la liste pour que l’utilisateur choisisse
    gossip_id = @view.ask_gossip_id  # Demande à l’utilisateur quel gossip supprimer
    Gossip.delete(gossip_id)         # Le Model supprime du CSV
  end
end

