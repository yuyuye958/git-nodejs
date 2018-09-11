if [ -d $1 ]; then
  echo 'error: dir exists'
  exit 1
else
  mkdir $1
  cd $1
  mkdir css js
  touch css/style.css index.html js/main.js

  echo -e "<!DOCTYPE>\n<title>Hello</title>\n<h1>Hi</h1>" >> index.html

  echo -e "h1{color: red;}" >> css/style.css

  echo -e "var string = "Hello World"\nalert(string)" >> js/main.js

  exit 0
fi