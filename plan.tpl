inputs:

prompt project_name, prompt: "Project name: ",
                     default: "site"

yesno create_repo, prompt: "Create git repo?",
                   default: 1

actions:

tree contents

template inplace: package.json

shell "npm install --save spinup"

if $create_repo then
    copy optional/gitignore, .gitignore
    create_git_repo commit: 1
end