# Réponses au TP - Infrastructure as Code (IaC)

### Question 1: Quelle est la différence entre un montage bind et la copie d'un fichier dans une image Docker ?
Le montage bind possède un lien direct avec avec les ressources locales tandisque l'image docker garde en memoire l'image precedente construite.

### Question 2: Quelle est la différence entre 127.0.0.1 et une écoute sur toutes les interfaces ?
ip = 127.0.0.1 limite l'accès à la machine locale tandisque le second expose notre application à tous utilisateurs du même reseau.

### Question 3: Quelles ressources apparaissent dans terraform state list ?
sert à lister le nom de toutes les ressources que Terraform gère actuellement dans notre infrastructure informatique.
```text
terraform state list
docker_container.web
docker_image.nginx
docker_network.app_network
```

### Question 4: Quelles informations affiche terraform state show ?
sert à afficher tous les attributs et détails techniques d'une ressource précise

### Question 5: Pourquoi l'état Terraform doit-il être protégé ?
il contient des données secrètes en texte clair

### Question 5 (bis): Pourquoi faut-il éviter de publier cet état dans un dépôt public ?
* Risque de conflit
* Risque de destruction accidentelle

### Question 6: Comment l'historique Git facilite la revue, la collaboration et le retour sur une modification?
Si le fichier d'état local (terraform.tfstate) venait à être corrompu ou perdu, avoir l'historique de .tf dans Git permettrait de redéployer l'intégralité du réseau et du conteneur Nginx à l'identique en quelques minutes.

### Question 7: Expliquez pourquoi le conteneur dépend de l'image et du réseau.
Le conteneur est une instance de l'image et le reseau est l'environnement dans lequel le conteneur doit être branché.

### Question 8: Quelle est la différence entre terraform init, terraform plan et terraform apply ?
* **init :** sert à initialiser l'environnement en preparant l'environnement technique (providers, Le fichier d'état, modules)
* **plan :** sert à visualiser les ressources qui seront affectées par un changement
* **apply :** permet d'appliquer les changements aux ressources.

### Question 9: Quel est le rôle d'un provider Terraform ?
Un provider Terraform est un plugin (un module d'extension) qui sert de traducteur entre Terraform et l'API de la plateforme cible (comme Docker, AWS, Azure, OVH, etc.).

### Question 10: À quoi sert le fichier terraform.tfstate ?
contient tous les attributs et détails techniques des ressources

### Question 11: Pourquoi utilise-t-on des variables et des outputs ?
pour rendre le code terraform flexible, reutilisable et securisé.

### Question 12: Qu'est-ce qu'une dérive de configuration ?
c'est le decalage qui se cree au fil du temps entre l'etat réel de notre conteneur docker et l'état théorique défini dans le code source

### Question 13: Quel est l'intérêt de Git dans un projet IaC ?
Permet de redeployer le fichier d'etat local en cas de corruption ou de destruction grâce à l'historique.

### Question 14: Quelle est la différence entre un contrôle CI et un déploiement CD ?
* **CI :** s'assure que le code proposé sur les branches est sûr, valide et de bonne qualité
* **CD :** Son but est d'appliquer concrètement les changements sur l'infrastructure.

### Question 14 (bis): Quelles précautions faut-il prendre avec les fichiers d'état et les secrets ?
ne jamais le pousser sur notre depot distant (utiliser .gitignore)
