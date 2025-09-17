require 'controller'

class Router
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Bienvenue dans l'application à potins !"
    while true
      puts "---------------------------------"
      puts "Que voulez-vous faire ?"
      puts "1. Créer un gossip"
      puts "2. Afficher tous les gossips"
      puts "3. Supprimer un gossip"
      puts "4. Quitter"
      print "> "
      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.delete_gossip
      when 4
        puts "À bientôt 👋"
        break
      else
        puts "Commande invalide, essayez encore."
      end
    end
  end
end

