1. Soumettre la tâche submit.sh. La tâche prend environ 1 minute à s'exécuter. 

2. Avec la commande seff, observer les ressources qui sont utilisées.

3. Quelle modification faut-il apporter?
	Il faut diminuer le nombre de coeur à 1.

4. Soumettre à nouveau la tâche avec le correctif.

5. Que ce passe-il au niveau du temps d'exécution et de l'utilisation de la mémoire?
	Le temps d'exécution est le même, tout comme la mémoire utilisée.
	Ici, il s'agit d'une tâche séquentielle: même si l'on ajoute des coeurs, ils ne seront pas utilisés.
	Il ne sert à rien d'ajouter plus d'un coeur à une tâche séquentielle.
