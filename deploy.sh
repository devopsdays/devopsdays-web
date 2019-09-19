hugo -v # command to build your site
cd public # cd into folder containing your built site

git init
git config user.name "Matt Stratton"
git config user.email "matt.stratton@gmail.com"

echo "www.devopsdays.org" > CNAME # domain your site will live at
git add .
git commit -m "Deploy from CircleCI" # this will always be the only commit in your gh-pages branch

# use --quiet to avoid printing token in build logs
git push --force --quiet "https://${GH_TOKEN}@github.com/devopsdays/devopsdays-web.git" master:gh-pages # path to your repo on GitHub, using token for authentication

