#!/bin/sh

set -e
echo '$INPUT_DEPLOY_KEY === > '
echo $INPUT_DEPLOY_KEY

# setup ssh-private-key
mkdir -p /root/.ssh/
echo "$INPUT_DEPLOY_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa
ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts


REPOSITORY_PATH="https://github.com/${GITHUB_REPOSITORY}.git"
BRANCH="gh_page"

# deployment
# if [ "$INPUT_COMMIT_MSG" == "" ]
# then
#     npm run build
# else
#     hexo g -d -m "$INPUT_COMMIT_MSG"
# fi


echo "Clean folder ..."
./node_modules/hexo/bin/hexo clean

echo "Generate file ..."
./node_modules/hexo/bin/hexo generate

echo "copy CNAME if exists"
if [ -n "${CNAME}" ]; then
    echo $CNAME > public
fi

cd ./public

echo "Config git ..."

# Configures Git.
git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git remote add origin "${REPOSITORY_PATH}"

# Checks to see if the remote exists prior to deploying.
# If the branch doesn't exist it gets created here as an orphan.
# if [ "$(git ls-remote --heads "$REPOSITORY_PATH" "$BRANCH" | wc -l)" -eq 0 ];
# then
#   echo "Creating remote branch ${BRANCH} as it doesn't exist..."
#   git checkout --orphan $BRANCH
# fi

git checkout --orphan $BRANCH

git add --all

echo 'Start Commit'
git commit --allow-empty -m "Deploying to ${BRANCH}"

echo 'Start Push'
git push origin "${BRANCH}" --force

echo "Deployment succesful!"


echo ::set-output name=notify::"Deploy complate."