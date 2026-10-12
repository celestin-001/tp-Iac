**Question 1:** Quelle est la différence entre un montage bind et la copie d'un fichier dans une image Docker ?  
Le montage bind possède un lien direct avec avec les ressources locales tandisque l'image docker garde en memoire l'image precedente construite.  

**Question 2:** Quelle est la différence entre 127.0.0.1 et une écoute sur toutes les interfaces ?  
ip = 127.0.0.1 limite l'accès à la machine locale tandisque le second expose notre application à tous utilisateurs du même reseau.  

**Question 3:** Quelles ressources apparaissent dans terraform state list ?  
sert à lister le nom de toutes les ressources que Terraform gère actuellement dans votre infrastructure informatique.  
terraform state list  
docker_container.web  
docker_image.nginx  
docker_network.app_network  

**Question 4:** Quelles informations affiche terraform state show ?  
sert à afficher tous les attributs et détails techniques d'une ressource précise  
**Question 5:** Pourquoi l'état Terraform doit-il être protégé ?
il contient des données secrètes en texte clair   
**Question 5:** Pourquoi faut-il éviter de publier cet état dans un dépôt public ?
risque de conflit 
Risque de destruction accidentelle  

**Question 6:** comment l'historique Git facilite la revue, la collaboration et le retour sur une modification?  
Si le fichier d'état local (terraform.tfstate) venait à être corrompu ou perdu, avoir l'historique de .tf dans  
Git permettrait de redéployer l'intégralité du réseau et du conteneur Nginx à l'identique en quelques  
minutes.  


