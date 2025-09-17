The Gossip Project - Version MVC

Ce projet est un exercice pour comprendre l’architecture **MVC**.
L’application tourne dans le terminal et permet de :

- Créer un gossip (potin) 📝
- Afficher la liste de tous les gossips 👀
- Supprimer un gossip ❌
- Quitter l’application 🚪

Les gossips sont sauvegardés dans un fichier **CSV** (`db/gossip.csv`).


##  Arborescence du projet

.
├── app.rb
├── Gemfile
├── Gemfile.lock
├── db
│ └── gossip.csv
└── lib
├── controller.rb
├── gossip.rb
├── router.rb
└── view.rb
