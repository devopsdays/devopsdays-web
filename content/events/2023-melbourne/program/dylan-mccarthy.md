+++
Talk_date = "2023-03-16"
Talk_start_time = "10:25"
Talk_end_time = "10:55"
Title = "DevEx, what is it and how does it fit into DevOps?"
Type = "talk"
Speakers = ["dylan-mccarthy"]
+++

DevEx or Developer Experience is the focus of using DevOps tools to improve the experience of developers, but how do we actually start to do this and how does it fit with DevOps? With this talk, we can go over some of the pillars of DevEx and the ways that DevOps can be used to enable it.

Starting with the onboarding process, how developers get a machine provisioned, and how cloud platforms can create temporary or even permanent virtual machines to fill in gaps. Next, we look at the developer workflow and how we can utilise technologies such as containers to provide a more consistent experience across all developers on a project. Then, we look at how using CI/CD we can create ephemeral environments that can be used to enhance the code review process, providing developers with an on-demand instance of their application so it can be shared with other developers.

To close out the session I will show a demo using GitHub actions and Azure to create one of these ephemeral environments and show how it can provision on request and then clean up when not required anymore.