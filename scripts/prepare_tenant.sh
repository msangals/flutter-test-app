#!/bin/bash

set -euo pipefail

: ${TENANT:?"Need to set TENANT non-empty"}
SCRIPT_PATH="`dirname \"$0\"`"
APP_ASSETS_PATH="${SCRIPT_PATH}/../assets"
APP_THEME_PATH="${SCRIPT_PATH}/../lib/theme/theme.dart"
TENANT_ASSETS_PATH="${SCRIPT_PATH}/../tenant/${TENANT}/assets"
TENANT_THEME_PATH="${SCRIPT_PATH}/../tenant/${TENANT}/theme/theme.dart"

copyTenantAssetsToAppAssets() {
    echo "start copying app assets from tenant assets folder"
    rm -rf ${APP_ASSETS_PATH}
    mkdir -p ${APP_ASSETS_PATH}
    cp -R ${TENANT_ASSETS_PATH}/ ${APP_ASSETS_PATH}
}

copyTenantTheme() {
    echo "start copying app theme from tenant theme"
    rm -rf ${APP_THEME_PATH}
    cp ${TENANT_THEME_PATH} ${APP_THEME_PATH}
}

echo "start prepare tenant ${TENANT}"

copyTenantAssetsToAppAssets
copyTenantTheme

echo "finished prepare tenant ${TENANT}"
