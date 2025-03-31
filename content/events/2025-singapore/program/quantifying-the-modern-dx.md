+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
Title = "Quantifying the modern developer experience amid the rise of AI-equipped super-editors"
Type = "talk"
Speakers = ["noredeen"]
youtube = ""
speakerdeck = ""
+++


### Ignite

Modern code editors are constantly redefining what it means to be a software developer. From Vi, to Vim, Visual Studio Code, and today’s cutting edge editors like Cursor, the rapid progression of editor technology demands fast, accurate, and reliable ways to measure developer experience. As code editors absorb more of the software development process, we should aim to have the same level of observability into our code editors that we have into our production applications. Measuring both the behaviour and performance of editors at scale can paint a surprisingly accurate picture of engineering efficiency and developer productivity. By leveraging standardizations like the language server protocol (LSP) and model context protocol (MCP), we can capture and analyze code editing workflows in real-time, unlocking the ability to proactively iterate on the local development experience.

Most code editors rely on external tools to operate. Third-party language servers provide modern features like code completion, go-to-definition, type hints, etc., and LLMs provide context-aware code generation. The vast majority of a developer’s experience in an editor is determined by these various external tools; the editor essentially becomes a fronted for them. What if we start monitoring the communication between an editor and its external tools? Would we be able to calculate how long an LLM takes to return code generation results? Or how long it might take for code completions to load as we type characters into a file? Could we tell which files in our codebase have the worst editing experience? The answer to all of these questions is yes.

In fact, if you start collecting this kind of data from all engineers, remarkable patterns will start to emerge. You will understand how much time is lost to slow editors, which parts of the codebase are the most poorly modularized, who is having the worst code editing experience (likely due to subtle configuration problems), and more. These insights can inform large codebase restructuring and new investment into LLM performance. Perhaps most importantly, this type of instrumentation is completely transparent: It runs in the background and developers never need to think about it.

<!-- Observability, Developer Experience, Monitoring -->