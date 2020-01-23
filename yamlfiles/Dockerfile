FROM jenkins/jenkins

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Enable Security and add admin user
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
