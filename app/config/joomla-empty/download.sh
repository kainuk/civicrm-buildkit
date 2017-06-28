#!/bin/bash

## download.sh -- Download Joomla and CiviCRM

###############################################################################

CMS_VERSION=${CMS_VERSION:-latest}

## Joomla has strong expectation of writeable web-root -- eg can't run Civi installer otherwise. :(
amp datadir "$WEB_ROOT"

joomla site:download . --release="$CMS_VERSION" --www="$WEB_ROOT"

#pushd "$WEB_ROOT" >> /dev/null
#popd >> /dev/null
