#!/usr/bin/env bash

# Ensure that the script exits immediately if any command exits with a non-zero status.
set -e

pnpm run build

echo "Copying plugin files to Obsidian vault plugin directory: $OBSIDIAN_VAULT_PLUGIN_DIR ..."
cp main.js "$OBSIDIAN_VAULT_PLUGIN_DIR/."
cp manifest.json "$OBSIDIAN_VAULT_PLUGIN_DIR/."
cp styles.css "$OBSIDIAN_VAULT_PLUGIN_DIR/."
echo "Plugin files copied successfully."