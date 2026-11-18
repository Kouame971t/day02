#!/bin/bash

DATA_DIR="data"
BACKUPS_DIR="backups"
DEST="$BACKUPS_DIR/backup_$(date +%Y%m%d)"

if [ ! -d "$DATA_DIR" ]; then
  echo "Erreur : le dossier $DATA_DIR est introuvable." >&2
  exit 1
fi

if [ ! -d "$BACKUPS_DIR" ]; then
  echo "Le dossier $BACKUPS_DIR n'existe pas, création..."
  mkdir -p "$BACKUPS_DIR" || { echo "Erreur : impossible de créer $BACKUPS_DIR." >&2; exit 1; }
fi

if [ -d "$DEST" ]; then
  echo "Erreur : la sauvegarde du jour existe déjà ($DEST)." >&2
  exit 1
fi

mkdir "$DEST" || { echo "Erreur : impossible de créer $DEST." >&2; exit 1; }
cp -r "$DATA_DIR"/. "$DEST"/ || { echo "Erreur : la copie a échoué." >&2; exit 1; }

echo "Sauvegarde créée : $DEST"
