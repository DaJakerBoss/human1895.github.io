dpkg-scanpackages -m debs /dev/null > Packages
rm Packages.gz Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2

read message 
git add .
git commit -m "$message"
git push

#copied from Dgh0st.github.io
