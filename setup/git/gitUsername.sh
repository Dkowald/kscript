echo -n User Name : 
read userName

echo -n User Email :
read userEmail

git config --global user.name "$userName"
git config --global user.email "$userEmail"

