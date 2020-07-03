+++
description = ""
title = "How to Handle Errors and Retries in a Stateless Environment"
type = "new-talk"
speakers = [
        "nitzan-shapira",
]
+++
Errors happen in every application. In serverless, additional failures exist - timeouts, out of memory, and more. In many cases, errors are handled by the cloud vendor using a retry mechanism. Since the code is stateless, how can you be sure that the application actually works?