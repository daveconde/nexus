FROM sonatype/nexus3:3.22.1

COPY maven-proxy-repositories /opt/sonatype/nexus/maven-proxy-repositories
COPY npmjs-proxy-repositories /opt/sonatype/nexus/npmjs-proxy-repositories
COPY postStart.sh /opt/sonatype/nexus/

USER root
RUN chgrp -R 0 /nexus-data
RUN chmod -R g+rw /nexus-data
RUN find /nexus-data -type d -exec chmod g+x {} +
    
    
