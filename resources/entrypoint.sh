#!/bin/bash

# Configure Nexus Context Path
${NEXUS_HOME}/scripts/configure_nexus.sh

su -c "${NEXUS_HOME}/bin/nexus run" -s /bin/bash nexus
