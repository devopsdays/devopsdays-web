+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Moving an enterprise monolith to Kubernetes"
Type = "talk"
Speakers = ["kris-nova"]
+++

It’s no secret that writing modern containerized applications is winning the hearts and minds of developers around the world.

There is however a lack of knowledge around solving migration into the new promised land of cloud native computing. The point of this talk is to prototype an application that is designed to be as hard as possible to containerize. Then we liberate the application and explore problem spaces encountered along the way.

The Prototype App

- Connects to a database on a local network
- Has home grown CI/CD
- Runs an a mysterious and undocumented system
- Has a mysterious untracked configuration
- Does not have clean entry points for running as a cloud native service

The Constraints

- The application must be kept online
- The migration must not suffer any downtime
- The migration must be as seamless as possible to an engineer

The Takeaways

- Concrete problems identified when migrating monolithic apps to kubernetes
- Concrete examples of ways to solve each of the problems
- Identified bottlenecks along the way

<a href="https://assets.devopsdays.org/events/2018/toronto/DevOpsDaysTO_May30_2018_KrisNova.jpg" target="_blank"><img src="https://assets.devopsdays.org/events/2018/toronto/DevOpsDaysTO_May30_2018_KrisNova_lores.jpg" alt="Graphic Recording Moving an enterprise monolith to Kubernetes" /></a>