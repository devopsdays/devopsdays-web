+++
Title = "yojenkins — A User-Friendly Command Line Interface Tool for Jenkins"
Type = "talk"
Speakers = ["ismet-handzic"]
+++

Jenkins server is a great open source CI/CD tool used by much of the DevOps industry for various automated tasks. While Jenkins offers its own CLI tool, this tool is far from well documented, used, or even known. This talk presents a new, more user-friendly, Jenkins CLI: yojenkins

Background
If you have been around the DevOps industry, you have more than likely heard or used a Jenkins CI server. Maybe you have run a stand-alone script, automatically deployed cloud infrastructure, or you may have just have reviewed the build logs of your latest application build. There are obviously many uses for Jenkins.

Interacting with Jenkins
There are a few different ways someone would be able to interface or communicate with a Jenkins server. All of the following have their own time and place to be used.

1. *Jenkins web browser user interface* — Using the web UI is the most common and most documented way of interacting with Jenkins. While it allows for a pretty visual UI with the ability to point/click/scroll/etc, the experience can be dependent on browser performance.

2. *REST API* — This is a more automated approach that can be used in an agnostic way to send HTTP based calls to Jenkins and receiving JSON responses back.

3. *3rd-Party Software Development Kits (SDKs)* — In order to package Jenkins REST API calls in a more usable way, this approach wraps calls to Jenkins in programming language specific building blocks for programmers to use in their code

4. *Official Jenkins CLI* — Jenkins provides a CLI allowing access for scripting or troubleshooting. While this Java-based CLI offers some great tools, it is not very user friendly, intuitive, and does not provide the greatest documentation. In essence, this CLI tool seems to be targeted more towards scripting.
As a avid terminal user, I immediately gravitate toward command-line interface (CLI) tools to make my work more efficient and my life easier. However, in this particular case, I have found that the official Jenkins CLI did not do that for me.

The official Jenkins CLI is essentially a Java binary with various commands and options. If you dig into the documentation of this CLI tool you will find that one, the documentation isn’t as great as it could/should be, and two, the setup, usage, terminal output, is not the greatest. In addition, complicated tasks beyond building and stopping jobs are very hard to do. Try programmatically creating a user account and adding specific permissions to that account with this CLI tool.

yojenkins
Dealing with Jenkins, I accumulated many bite-sized scripts I was using for specific Jenkins task automation. These scripts would typically be assembled after many hours on stackoverflow or Jenkins documentation. There was always a need for a terminal tool that is clear and efficient when interacting with Jenkins. I needed something more like AWS CLI or Docker CLI.

After some time I developed yojenkins. yojenkins is a command line interface tool used to manage one or multiple Jenkins servers.

yojenkins enables users to quickly do simple or complicated Jenkins tasks form the terminal or programmatically integrated into a script.

Installation is simple: pip install yojenkins, and usage is even simpler. Here are a few examples:

yojenkins folder create --type folder "My Folder" . - Creates a folder in the top directory
yojenkins job info "Some Folder/Some Job" --yaml - Gets the job information of a job in YAML format
yojenkins build logs "Some Job" --latest --follow - Follow the logs of the latest build of a job
yojenkins server plugins --yaml --list - Get a list of plugins installed on the server
yojenkins tools run-script --text 'println("Hello fun world")' - Run a groovy script on the server and return result
and more …
While this tool can be used a stand-alone CLI tool, it can definitely be included into a bash or Powershell script.