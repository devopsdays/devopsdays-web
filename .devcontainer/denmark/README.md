# This development container is designed to run on a CodeSpace.

**Contrary to the default container this development container doesn't run a `postCreateCommand`. So when the container is done loading you can start the `hugo server` command with the parameters of your liking.**

A few helpful notes...

## Run `development` configuration as CodeSpace from GitHub

When you Create the codespace, use the options (the three dots: **...**) rather than the default to main (the plus sign **+**)

<img width="691" alt="image" src="https://github.com/user-attachments/assets/faa6862a-4565-4d7e-b721-db3904d723d5">

Then in the form flip the Dev Container Configuration option to `Development`

<img width="793" alt="image" src="https://github.com/user-attachments/assets/4502d58a-a141-49d1-bcff-bdcc9612b032">

## Build and serve

You run `hugo serve` to build and serve the website, but you need to tweak a few parameters to make i compliant with the codespace environment:

In the `hugo serve` command the parameters `--baseURL`, `--appendPort` and `--port` are all required for compliancy with a GitHub codespace.

Execute the following command in the terminal and you'll be fine:

```shell
hugo server \
  --port 1313 \
  --bind=0.0.0.0 \
  -D \
  -F \
  -liveReloadPort=443 \
  --logLevel=debug
  --appendPort=false \
  --baseURL https://$CODESPACE_NAME-1313.$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN 
```

Run `hugo --help` to lean a ton of other options you can apply to tweek the development to your liking. Especially these two may prove themselves useful.

```
  -D, --buildDrafts                include content marked as draft
  -F, --buildFuture                include content with publishdate in the future 
```

## When the port hangs
When you kill the command `hugo serve` it should tear down and release the port as well. Occasionally that doesn't happen. Which means that the port `1313` is bound and you can't strt the command again on port `1313`. Instead you get an error:

```shell
Error: command error: server startup failed: listen tcp 127.0.0.1:1313: bind: address already in use
```

When that happens run the following command to learn which process is listening to the port:

```shell
netstat -pna | grep "1313"
```

It will reveal the process like this:

```shell
tcp6       0      0 :::1313                 :::*                    LISTEN      19729/hugo  
```
In this case PID `19729`.

Now simply kill it (e.g. `kill 19729`) and the port is released.

