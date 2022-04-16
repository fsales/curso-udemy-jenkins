# Curso Jenkins

* Criar arquivos de dependências:
~~~
$ awk -v prefix="implementation 'org.jenkins-ci.plugins:" -v postfix="'" '{printf prefix $0 postfix}' plugins.txt > dependencies.txt
~~~

# Pegar IP do POD
~~~
$ kubectl get pod -n <NOME_NAMESPACE> | grep ^jenkins
~~~
~~~
$ kubectl describe pod <ID_POD> | grep IP
~~~
