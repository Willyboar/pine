<h1 align="center">
<img src="https://user-images.githubusercontent.com/22755228/67495929-51342a80-f684-11e9-9d4a-53d15fa15acb.png" width="128">
 </h1>
<p align="center"><a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a></p>
<h1 align="center">Pine</h1>
<p align="center">A Nim Static Blog Generator (WIP)</p>


  * [Description](#description)
  * [Installation](#installation)
  * [Documentation](#documentation)  
  * [Examples](#examples)     
  * [Contributing](#contributing)  
  * [Issue Template](#issue-template)    
    * [Bug report](#bug-report)   
    * [Feature request](#feature-request)  
  * [Pull Requests](#pull-requests)  
  * [Membership](#membership)  
  * [License](#license)





  
## Description

Pine is a Nim Static Blog Generator. 




## Installation
To install it you must have Nim and Nimble Package Manager installed in your Computer. If you are then type:


```
$ nimble install pine
```
OR

```
$ nimble install https://github.com/thebigbaron/pine.git
```
press 

```
$pine -v 
```
or
```
$pine --version 
```
to see if everything been ok. You will see pine and nim version.

you can see the available options by pressing:

```
pine -h 
```
or
```
pine --help 
```
## Documentation
 Pine designed to simplicity in mind. After installation you can go to any folder you want and press: 
```
$ pine new
```
you will prompted to choose a project name. A Folder with your project would be created.  Press: ``` $cd <projectname>``` and go into your project folder.

You have a lot of options. With ``` $ pine page ```  you will be prompted to create a new page and with ``` $ pine post ``` a new post. 

After that you can edit your pages and posts using   [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) syntax. 

If you are ready you can build your static blog/site by pressing:
```
$ pine build
```
a folder with the name "build" would be created, with your static blog/site inside. You can take all the files and upload it in the internet in any service you want like Netlify. 

If you want to use Github Pages to host your site, pine offers easy deployments. Create a new repo and activate Github Pages targeting the master branch. Go into the build folder and press: 

```
$ pine init-deploy
```
you would be asked to give some info, like your username etc. 

> Be careful you must give the same name as the newly created repo.

you are ready. Every time you are created a new post or a new page you can deploy your page with : 

```
$ pine deploy
```



## Examples

See [Here](https://bigbaron.org) for a demo.

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method with the owners of this repository before making a change.

You may contribute in several ways like creating new features, fixing bugs, improving documentation and examples. 

## Issue Template

### Bug report

---
name: Bug report

about: Create a report to help us improve

title: 

labels: 

assignees: 

---

**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Desktop (please complete the following information):**
 - OS: [e.g. MACOS]
 - Browser [e.g. chrome, safari]
 - Version of Software or Programming Language [e.g. Nim 1.0.0]

**Additional context**
Add any other context about the problem here.


### Feature request
---
name: Feature request

about: Suggest an idea for this project

title: 

labels: 

assignees: 

---

**Is your feature request related to a problem? Please describe.**
A clear and concise description of what the problem is. Ex. I'm always frustrated when [...]

**Describe the solution you'd like**
A clear and concise description of what you want to happen.

**Describe alternatives you've considered**
A clear and concise description of any alternative solutions or features you've considered.

**Additional context**
Add any other context or screenshots about the feature request here.

## Pull Requests

### Description of the Change

 We must be able to understand the design of your change from this description. If we can't get a good idea of what the code will be doing from the description here, the pull request may be closed at the maintainers' discretion. Keep in mind that the maintainer reviewing this PR may not be familiar with or have worked with the code here recently, so please walk us through the concepts. 

### Alternate Designs

 Explain what other alternates were considered and why the proposed version was selected 

### Benefits

 What benefits will be realized by the code change? 

### Possible Drawbacks

 What are the possible side-effects or negative impacts of the code change? 

## Membership

New members are welcome if they have the same philosophy with the organization. 

## License

[MIT](https://opensource.org/licenses/MIT) - Free Software for Everyone.
