git status --short | grep ' D' | sed 's/ D //g' | xargs git rm
