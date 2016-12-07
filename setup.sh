echo "" > /var/www/html/input.txt
chmod 777 /var/www/html/input.txt #TODO this lets anyone write and execute any program they want on this machine
cp -r php-frontend/www/* /var/www/html/
cp haskell-backend/.cabal-sandbox/bin/myRoomTonight /var/www/html
