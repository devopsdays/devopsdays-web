+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Security in a Containerized World (Closing Keynote)"
Type = "talk"
Speakers = ["jessie-frazelle"]
googleslides = "1QnakgUC8AaNydPZCmKGYYja8gs2WoHbHRSjioIVdD9g"
+++

Everyone agrees that security is important, but in reality it's often a tickybox at the end. And by the time someone is thinking about security, many individual decisions have been made along the way that make security much more difficult than it has to be.

Let's look at the basics: all applications have vulnerabilities (known or not), so we want to sandbox them to limit the attack surface. Why doesn't this happen in all cases? Sometimes tools aren't user-friendly, requiring a lower-level knowledge of syscalls. To democratize application security, we can integrate seccomp filters into programming languages at build time. (We'll look at a proof of concept in Golang!)

In practice, we don't always have tools like seccomp and the Chrome sandbox at our disposal. We'll finish up with a practical look at the landscape of defensive security in our cloudy containerized world. What can you do with your language stacks in your organizations? How do containers help secure applications? What constraints are containers tied to for the amount of security they provide? What tools are available today for making application sandboxing simpler? You’ll leave empowered to make better decisions around application security. 
