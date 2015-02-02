inputs:

prompt project_name, prompt: "Project name: ",
					 default: "site-template"

yesno create_repo, prompt: "Create git repo?",
				   default: 1

actions:

tree contents

template inplace: package.json

shell "npm install"

if $create_repo then
	copy optional/gitignore, .gitignore
	shell "git init"
	shell "git add ."
	shell "git commit -m 'First commit'"
end