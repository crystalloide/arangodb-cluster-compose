# Exécution simplifiée d'un cluster ArangoDB via Docker Compose

1°) Pour tester, après avoir clôné ce dépôt :

```
sudo rm -Rf arangodb-cluster-compose
```
```
git clone https://github.com/crystalloide/arangodb-cluster-compose
```
    
2°) Accédez au dossier « arangodb-cluster-compose » :
```
cd arangodb-cluster-compose
```

```
sudo chmod +x wait-for-it2.sh    
```

3°) lancez l'environnement :
```
docker compose -f docker-compose.yml up -d
```

4°) On vérifie le lancement  :
```
docker logs coordinator1
```
```
docker ps -a
```

5°) Allez ensuite avec un navigateur web sur l'URL du coordinateur : 
```
http://localhost:11001/
```

![image](https://github.com/user-attachments/assets/4dfac026-a23a-402c-9bc3-bb9590143095)


6°) Pour arrêter et démonter l'environnement :: 
```
docker compose -f docker-compose.yml down
docker volume prune -a -f
docker volume ls
docker ps -a
```
