list="$(grep -R sha1 . | grep './.*\.rb' | awk -F: '{print $1}' | sed 's#./##g')"

mkdir ./tmp

for file in $list; do
  url="$(grep -R 'url.*http' ./$file | sed "s/.*url '//g;s/'.*//g")"
  archive_name="$(basename $url)"
  echo -n "dowloading $archive_name for $file... "
  if curl --fail -s -L -o ./tmp/$archive_name $url; then 
    echo OK
  else
    echo fail
    continue
  fi
  sha256="$(shasum -a256 ./tmp/$archive_name | sed 's/ .*//g')"
  sed -i "s/sha1.*/sha256 '$sha256'/g" ./$file
done

