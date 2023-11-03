   #"true" est vrai par défaut, on boucle infiniment sauf si "break"
while true; do
#affichage du menu et récupération du choix utilisateur
    echo "------------------------------------------"
    echo "---------------To do list-----------------"    
    echo "1 - Ajoute une tâche"
    echo "2 - Supprime une tâche"
    echo "3 - Affiche les tâches"
    echo -n "Choisis la prochaine action :"
    echo "4 Quitter la boucle"
    

done


 #"true" est vrai par défaut, on boucle infiniment sauf si "break"
while true; do
#affichage du menu et récupération du choix utilisateur 
  
    echo "To do list"
    echo "1 - Ajoute une tâche"
    echo "2 - Supprime une tâche"
    echo "3 - Affiche les tâches"
    echo "Choisis la prochaine action : "
    read choix

#ajout tâche
    if [ "$choix" -eq 1 ]; then
        echo -n "Décris la tâche : "
        read task
        echo "$task" >> tasks.txt
        echo "La tâche a été ajoutée."

#suppression tâche via sed qui permet d'éditer du txt
    elif [ "$choix" -eq 2 ]; then
        echo "Liste des tâches :"
        cat -n tasks.txt # "-n" pour le numérotage des lignes
        echo -n "Quelle tâche supprimer ? "
        read numero_task
        sed -i "${numero_task}d" tasks.txt #option -i pour renseigner que c'est un fichier qui sera modif
        # et "d" permet d'indiquer la ligne à supprimer
        echo "Tâche supprimée"

#affichage des taches 
    elif [ "$choix" -eq 3 ]; then
        echo "Liste des tâches à faire :"
        cat -n tasks.txt #"-n" pour le numérotage des lignes

    elif ["choix" -eq 4] ; then
        break











    fi

done
