A simple file watcher.

This will auto detect if the a given file ( relative path ) have change and will execture a given command when it dose.

This can be useful in development process when a repeated tasks should be done once a file has change.

The repeated tasks can be grouped in a script and the file_watcher will call whenever the target change in content.


Usage : 

./file_watcher {1} {2} {3-optional}

where :

1 is file to watch 

2 is command to execute or a script to call 

3 sleep time, deafult is 5, this can be helpful if the script to call is heave (ie. redeploying, rebuilding, .. ) 
