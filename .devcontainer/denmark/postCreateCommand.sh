#!/usr/bin/env bash

set -e

PREFIX="🍰  "
echo "$PREFIX Running $(basename $0)"


echo "$PREFIX Setting up git configuration to support .gitconfig in devcontainer root"
git config --local --get include.path | grep -e ../.devcontainer/denmark/.gitconfig >/dev/null 2>&1 || git config --local --add include.path ../.devcontainer/denmark/.gitconfig

echo "$PREFIX Setting up GitHub CLI to use devopsdays-dk/devopsdays-web as default repo"
gh repo set-default devopsdays-dk/devopsdays-web

# echo "$PREFIX Setting up sparse checkout"
# ln -sf /workspaces/devopsdays-web/.devcontainer/denmark/sparse-checkout .git/info/sparse-checkout

echo "$PREFIX SUCCESS"
exit 0