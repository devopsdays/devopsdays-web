+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Building Immutable Machine Images with Packer and Ansible"
Type = "talk"
Speakers = ["jason-harley"]
+++

Immutable Infrastructure promises stability and repeatability for your environment and is considered by many to be the "enlightened stage" of an Infrastructure as Code practice. The benefits of immutability in infrastructure seem obvious: if you know a system has been created via automation that you trust, and hasn't been changed since creation, then making changes quickly seems far less risky. In a cloud-based environment, Immutable Infrastructure starts with trusted, immutable machine images. Building these images can quickly outgrow bespoke scripts, and this bespoke tooling quickly begins to feel you're duplicating effort if you already have configuration management in house.

In this talk, HashiCorp's Packer will be paired with Ansible to iteratively build and test an immutable AWS AMI. The techniques and workflow should be transferrable to other configuration management tools (Chef, Puppet, Salt, et cetera) or cloud platforms (GCP, Azure, OpenStack, et cetera).