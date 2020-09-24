for i in img/*.jpg; do echo "<img src='$i' />" >> img1.html; done;
sed -i '/<div class="gg-box">/r img1.html' index.html
