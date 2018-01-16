#!/et -ex

export SPHINXINTL_TRANSIFEX_PROJECT_NAME=RChain_fans_Team

cd `dirname $0`
rm -R pot
sphinx-build -b gettext ../mobile-process-calculi-for-blockchain/ pot
sphinx-intl update-txconfig-resources -p pot -d .
rm -R zh
tx pull -l zh
git checkout .tx/config
