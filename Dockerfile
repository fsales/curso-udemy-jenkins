FROM jenkins/jenkins:2.343
USER root

RUN apt-get update && apt-get install -qq -f -y make git openjdk-17-jdk

# backup
RUN mkdir /srv/backup && chown jenkins:jenkins /srv/backup

USER jenkins

# remover wizard
#RUN echo latest > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
#RUN echo latest > /usr/share/jenkins/ref/jenkins.install.InstallUtil.lastExecVersion

# instalar plugins no jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64

# copiando o backup das configurações para a imagem
#COPY --chown=jenkins:jenkins config_jenkins /var/jenkins_home


## https://stackoverflow.com/questions/53669151/java-11-application-as-lightweight-docker-image/57145029#57145029
