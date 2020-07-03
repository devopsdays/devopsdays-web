+++
description = ""
title = "Stop for Go"
type = "new-talk"
aliases = [
        "/events/2019-amsterdam/program/noam-tenne/",
]
speakers = [
        "noam-tenne",
]
+++
The rise of containers and preemptible VMs have introduced yet another software requirement - graceful halting. No longer being able to rely on ctrl-d, SIGINT and kill -9, I’ve developed a small library that can help your long running application to gracefully halt whenever needed.