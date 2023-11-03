#!/bin/bash
while true; do
    echo "1. Continuer la boucle"
    echo "2. Quitter la boucle"

    read choice
    case $choice in
        1)
            echo "Vous avez choisi de continuer la boucle."
            # Mettez ici le code de la boucle que vous souhaitez exécuter.
            ;;
        2)
            echo "Vous avez choisi de quitter la boucle."
            break  # Cette commande fait sortir de la boucle while.
            ;;
        *)
            echo "Option non valide. Veuillez choisir 1 ou 2."
            ;;
    esac
done
