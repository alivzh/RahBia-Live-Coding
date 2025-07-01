

###_____________________________________________________________________________________________________________###
###|                                     for testing gitlab email smtp                                         |###
###-------------------------------------------------------------------------------------------------------------###

gitlab-rails console
Notify.test_email('ali.vzh.1387.123@gmail.com', 'Message Subject', 'Message Body').deliver_now



###_____________________________________________________________________________________________________________###
###|                                    for encrypting and decrypting file                                     |###
###-------------------------------------------------------------------------------------------------------------###

gpg --output output_file --decrypt --batch --yes --passphrase "pass" input_file
gpg --symmetric --cipher-algo AES256 --batch --yes --passphrase ${ENCRYPT_PASS} ${BACKUP_NAME}.tar.gz

# removing backups older than 30 days
find /opt/BACKUP -type f -mtime +30 -name "*.tar.gz" -exec rm {} \;




###_____________________________________________________________________________________________________________###
###| You can configure Git to always use HTTP instead of SSH for a specific repository (or globally) using one |###
###-------------------------------------------------------------------------------------------------------------###

echo "https://your_gitlab_username:your_personal_access_token@git.aliveland.ir" > .git-credentials
# Then, configure Git to use this credential file only for this repo:

git config --local credential.helper "store --file=.git-credentials"
# Final Steps:
# Secure the file (to prevent others from reading it):

chmod 600 .git-credentials
# Verify that Git is using the correct credential helper:

git config --local --get credential.helper
# It should output:
#       store --file=.git-credentials

# Now, whenever you push or pull from this repository, Git will automatically use your personal access token for authentication, and this setting won't affect other repositories


###_____________________________________________________________________________________________________________###
###|                               how-to-push-single-docker-image-layers-at-time                              |###
###-------------------------------------------------------------------------------------------------------------###

# Open 
/etc/docker/daemon.json 

# and add:
{
  "max-concurrent-uploads": 1
}

# then 
sudo service docker restart.

###_____________________________________________________________________________________________________________###
###|                                  curling with a domain req "traefik use"                                  |###
###-------------------------------------------------------------------------------------------------------------###

curl -H "Host: tra.aliveland.ir.local" http://10.0.0.201:8000
