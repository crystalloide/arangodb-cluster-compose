# Exécution simplifiée d'un cluster ArangoDB via Docker Compose

1°) Pour tester, après avoir cloné ce dépôt :
```
git clone https://github.com/crystalloide/arangodb-cluster-compose
```
    
2°) Accédez au dossier « arangodb-cluster-compose » :
```
cd arangodb-cluster-compose
```

```
sudo chmod 777 wait-for-it.sh    
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

![image](https://github.com/user-attachments/assets/d7dd32bb-2b79-4537-a553-ab1b9d3930ff)

6°) Pour arrêter et démonter l'environnement :: 
```
docker compose -f docker-compose.yml down
docker volume prune -a -f
docker volume ls
docker ps -a
```
