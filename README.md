<p>#copy hooks/post-commit to .git/hooks/</p>

<p>#change the path for terraform in line #4
(you can get the executable path with the which command)
i.e which terraform</p>

<p>#make the hook executable
<em>chomd +x .git/hooks/*</em></p>

<p>#commit from commandline</p>
 

git add .
 

 git commit -m"try git commit hooks"