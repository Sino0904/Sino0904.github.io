sed -i '/<div class="gg-box dark" id="square">/,/<\/div>/{//!d}' index.html
for i in dem/*.jpg; do echo "<img src='$i' />" >> img1.html; done;
sed -i '/<div class="gg-box dark" id="square">/r img1.html' index.html
rm img1.html
