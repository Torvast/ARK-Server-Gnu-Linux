#!/bin/sh
#############################################
#											#
# Sauvegarde du répertoire complet de ARK	#
#											#
#############################################

# Ce qu'il faut sauvegarder. 
backup_files="/home/USER/ark"

# Où sauvegarder l'archive.
dest="/home/USER/backups/ark"

# Création du nom de l'archive.
day=$(date +%A-%d-%m-%y)
hostname=$(hostname -s)
archive_file="$hostname-ARK-$day.tar.gz"

# Affichage du commencement de la sauvegarde.
echo "Sauvegarde de $backup_files vers $dest/$archive_file"
date
echo

# Sauvegarde à l'aide de tar.
tar czf $dest/$archive_file $backup_files

# Affichage de la fin de la sauvegarde
echo
echo "Backup ARK OK"
date

# Liste détaillée des fichiers de $dest pour vérifier la taille des fichiers
ls -lh $dest