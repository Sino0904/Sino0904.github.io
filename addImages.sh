sed -i '/<div class="gg-box">/,/<\/div>/{//!d}' index.html
for i in eb1/*.jpg; do echo "<img src='$i' />" >> img1.html; done;
sed -i '/<div class="gg-box">/r img1.html' index.html
rm img1.html
