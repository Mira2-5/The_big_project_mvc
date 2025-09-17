require 'bundler'
Bundler.require

# Permet à Ruby de trouver les fichiers dans /lib
$:.unshift File.expand_path('./../lib', __FILE__) 

require 'router'

# On lance le programme
Router.new.perform

