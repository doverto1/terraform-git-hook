#copy hooks/post-commit to .git/hooks/

change the path for terraform in line #4
(you can get the executable path with the which command)
i.e which terraform

#make the hook executable

chomd +x .git/hooks/*

#commit from commandline
 
 
 git add .
 

 git commit -m"try git commit hooks"