#!/bin/sh

#sed -e '/^nexus-context/ s:$:'"$NEXUS_CONTEXT"':' -i ${NEXUS_HOME}/etc/nexus-default.properties
sed -i "s:\(nexus-context-path=\)\(.*\):\1${NEXUS_CONTEXT}:g" ${NEXUS_HOME}/etc/nexus-default.properties
sed -e '/^-Xms/d' \
    -e '/^-Xmx/d' \
    -e '/^-XX:MaxDirectMemorySize/d' \
    -i ${NEXUS_HOME}/bin/nexus.vmoptions
