# TP 2 
### Benjamin Mouchet
---
## Exercice 1
### Quelles étapes (steps) sont réalisées par cette action ?
1. Setup Python 3.10
2. Installation des dépendances
3. Lint avec flake8
4. Tester avec pytest
### Une étape est définie au minimum par 2 éléments, lesquels sont-ils et à quoi servent-ils ?
- un nom, définit l'étape
- run, lance la/les commandes relatives à l'étape
### La première étape contient le mot-clé ‘with’, a quoi sert-il ?
- Définir la version de python à utiliser

## Exercice 2
### Sur l’onglet Summary d’une analyse de code, SonarCloud fournit 4 indicateurs. Quels sont-ils et quelles sont leurs utilités ?
- Bugs: A coding error that will break your code and needs to be fixed immediately.
- Code Smells: Code that is confusing and difficult to maintain.
- Vulnerabilities: Code that can be exploited by hackers.
- Security Hotspots: Security-sensitive code that requires manual review to assess whether or not a vulnerability exists. 
### À quoi sert l’indicateur Quality Gate ?
Selon la description sur le site: A Quality Gate is a set of measure-based Boolean conditions. It helps you know immediately whether your project is production-ready. If your current status is not Passed, you'll see which measures caused the problem and the values required to pass.
