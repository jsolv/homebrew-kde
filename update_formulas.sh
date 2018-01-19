list="$(grep -R sha256 ''

for file in $list; do
  url="$(grep -R url $file | sed "s/.*url '//g;s/'//g")"
  curl -s -L -o /tmp/$file $url
  sha256 ''
  sed -i "s/sha256 ''
  echo "Done for file: $file"
done
