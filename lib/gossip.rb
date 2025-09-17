require 'csv'

class Gossip
  attr_reader :author, :content

  # Initialisation d’un gossip (auteur + contenu)
  def initialize(author, content)
    @author = author
    @content = content
  end

  # Sauvegarde l’instance actuelle de Gossip dans le fichier CSV
  def save
    CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  # Récupère tous les gossips enregistrés dans le CSV
  def self.all
    all_gossips = []

    CSV.read("db/gossip.csv").each do |line|
      gossip_provisoire = Gossip.new(line[0], line[1])
      all_gossips << gossip_provisoire
    end

    return all_gossips
  end

  # Supprime un gossip selon son index (numéro choisi par l’utilisateur)
  def self.delete(index)
    all_gossips = self.all
    all_gossips.delete_at(index - 1) # -1 car array commence à 0

    # Réécrire tout le fichier CSV sans le gossip supprimé
    CSV.open("db/gossip.csv", "w") do |csv|
      all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end
end

