cd /d "C:\Users\ADM\Documents\GitHub\Vex2"

@echo off
echo === Збірка сайту Hugo ===

hugo --cleanDestinationDir

echo === Перехід у public ===
cd public


echo === Ініціалізація Git ===
echo git init
echo git remote add origin https://github.com/koloryt/Vex2.git

git add .

echo === Додавання і коміт ===
git commit -m "Deploy updated Hugo site with correct baseURL"


echo === Push у gh-pages ===
git push -f origin gh-pages


echo === Готово ===
pause