# Curso Jenkins

* Criar arquivos de dependências:
~~~
$ awk -v prefix="implementation 'org.jenkins-ci.plugins:" -v postfix="'" '{printf prefix $0 postfix}' plugins.txt > dependencies.txt
~~~