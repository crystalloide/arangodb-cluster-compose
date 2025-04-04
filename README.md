# Exécution simplifiée d'un cluster ArangoDB via Docker Compose

1°) Pour tester, après avoir cloné ce dépôt :
```
github clone https://github.com/crystalloide/arangodb-cluster-compose
```
    
2°) Accédez au dossier « arangodb-cluster-compose » :
```
cd arangodb-cluster-compose
```

3°) lancez l'environnement :
```
docker-compose -p arangodb-cluster up --build
```

4°) Allez ensuite avec un navigateur web sur l'URL du coordinateur : 
```
http://localhost:11001/
```

![image](https://github.com/user-attachments/assets/d7dd32bb-2b79-4537-a553-ab1b9d3930ff)
