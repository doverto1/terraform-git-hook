<p>#copy hooks/post-commit to .git/hooks/</p>

<p>#change the path for terraform in line #4
(you can get the executable path with the which command)
i.e which terraform</p>

<p>#make the hook executable<br />
<em>chomd +x .git/hooks/*</em></p>

<p>#commit from commandline <br/>
 git add . </br>
 git commit -m"try git commit hooks"</p> 