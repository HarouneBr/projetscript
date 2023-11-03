 #"true" est vrai par défaut, on boucle infiniment sauf si "break"
while true; do
#affichage du menu et récupération du choix utilisateur 
  
    echo "To do list"
    echo "1 - Ajoute une tâche"
    echo "2 - Supprime une tâche"
    echo "3 - Affiche les tâches"
    echo -n "Choisis la prochaine action : "

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
        cat -n tasks.txt
        echo -n "Quelle tâche supprimer ? "
        read numero_task
        sed -i "${numero_task}d" tasks.txt
        echo "Tâche supprimée."
done