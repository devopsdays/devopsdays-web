+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Bash CI/CD with ShellCheck and Bats"
Type = "talk"
Speakers = ["jody-mcintyre"]
+++

Shell scripts using bash are an essential part of any DevOps toolchain. Unfortunately many shell scripts end up being neglected when considering CI/CD pipelines, leading to more manual work and bugs. This talk aims to correct that by introducing two tools: ShellCheck for linting and Bats for tests.

Shell scripts using bash are an essential part of any DevOps toolchain, either as full fledged programs or as "glue" to connect systems together. Unfortunately developing maintainable shell scripts is seen as a "black art" by many and they often end up being neglected when considering CI/CD pipelines, leading to bugs and security issues in shipped products. This talk aims to correct that by introducing two tools: ShellCheck for linting and Bats for tests, and by demonstrating some shell scripting best practices.

ShellCheck is essentially a linter for bash code. It helps developers avoid common pitfalls like incorrect quoting, bad `test` or conditional statements, and misuse of many external commands. The presenter will explain how to introduce ShellCheck into your project and show some examples of errors it catches, touching on several key best practices along the way.

Bats allows you to easily develop tests, including unit tests and integration tests, of bash scripts. The presenter will explain the basics of Bats and demonstrate the tool using some simple examples.
