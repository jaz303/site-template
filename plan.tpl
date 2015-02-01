prompt project_name, prompt: "Project name: ",
					 default: "site-template"

tree

template inplace: package.json

shell "rm plan.tpl README.md"
shell "npm install"