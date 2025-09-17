class View
  # Demande à l’utilisateur les infos pour créer un gossip
  def create_gossip
    puts "Qui est l'auteur du gossip ?"
    print "> "
    author = gets.chomp

    puts "Quel est le contenu du gossip ?"
    print "> "
    content = gets.chomp

    return { author: author, content: content }
  end

  # Affiche la liste des gossips
  def index_gossips(gossips)
    puts "Voici la liste des gossips :"
    gossips.each_with_index do |gossip, index|
      puts "#{index + 1}. #{gossip.author} : #{gossip.content}"
    end
  end

  # Demande à l’utilisateur quel gossip supprimer
  def ask_gossip_id
    puts "Quel est le numéro du gossip que tu veux supprimer ?"
    print "> "
    return gets.chomp.to_i
  end
end

