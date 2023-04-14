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
### Quelle est la différence entre les sections New code et Overall Code dans l’onglet Summary ?
Le new code correspond au dernier push. Le overall comprend tous les problèmes liés au projet au fur et à meusre des commits. La section new code permet de voir les problèmes ajoutés par le dernier push afin de pouvoir mieux traquer l'évolution des problèmes
### Y a-t-il des Code Smells ? Si oui, combien et pour quelle(s) raisons(s) ?
3 code smells. Selon Sonar: 
1. Unused parameters are misleading. Whatever the value passed to such parameters is, the behavior will be the same.
2. When two functions or methods have the same implementation, either it was a mistake - something else was intended - or the duplication was intentional, but may be confusing to maintainers. In the latter case, one implementation should invoke the other. Numerical and string literals are not taken into account.
3. Unused parameters are misleading. Whatever the value passed to such parameters is, the behavior will be the same.
### Y a-t-il des Security Hotspots ? Si oui, combien et pour quelle(s) raison(s) ?
The python image runs with root as the default user. Make sure it is safe here.
What's the risk: Running containers as a privileged user weakens their runtime security, allowing any user whose code runs on the container to perform administrative actions.
In Linux containers, the privileged user is usually named root. In Windows containers, the equivalent is ContainerAdministrator.

A malicious user can run code on a system either thanks to actions that could be deemed legitimate - depending on internal business logic or operational management shells - or thanks to malicious actions. For example, with arbitrary code execution after exploiting a service that the container hosts.

Suppose the container is not hardened to prevent using a shell, interpreter, or Linux capabilities. In this case, the malicious user can read and exfiltrate any file (including from Docker volumes), open new network connections, install malicious software, or, worse, break out of the container’s isolation context by exploiting other components.

Depending on the infrastructure’s resilience, attackers may then extend their attack to other services, such as Kubernetes clusters or cloud providers, in order to maximize their reach.
