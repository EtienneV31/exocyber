#!/bin/bash

echo "Ou voulez-vous stocker le contenu ?"

read emplacement


cd "$emplacement" || { echo "Erreur: impossible d'accéder à l'emplacement"; exit 1; }


mkdir -p films

#Créer un fichier dans le dossier collection.txt
#Vérifier si le fichier existe déjà (BONUS)
if [ ! -f "films/collection.txt" ]; then
    touch films/collection.txt
    echo "Fichier collection.txt créé."
else
    echo "Fichier collection.txt existe déjà, il sera utilisé."
fi

# Boucle pour ajouter plusieurs films (BONUS)
continuer="oui"
while [ "$continuer" = "oui" ] || [ "$continuer" = "o" ]; do
    
    echo "Entrez le nom du film à ajouter :"
    
    read film
    
    echo "$film" >> films/collection.txt
    echo "Film '$film' ajouté à la collection."
    
    # Demander si l'utilisateur veut ajouter un autre film (BONUS)
    echo "Voulez-vous ajouter un autre film ? (oui/non)"
    read continuer
done

echo "Collection mise à jour avec succès!"
