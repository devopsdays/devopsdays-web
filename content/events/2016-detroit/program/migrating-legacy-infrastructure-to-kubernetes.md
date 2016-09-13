+++
City = "Detroit"
Year = "2016"
title = "Migrating legacy infrastructure to Kubernetes: Olark’s lessons from the trenches"
type = "talk"

+++

**Speaker**: Brandon Dimcheff, Olark

When you start building new infrastructure from scratch, it’s relatively easy
to take into account the constraints that Docker and Kubernetes impose.
Unfortunately most of us aren’t starting brand new projects, but are
maintaining and migrating legacy infrastructure that may not be well suited to
run on Kubernetes.  Over the past several months, Olark has migrated a number
of services that were never designed with Kubernetes or Docker in mind from
over 200 puppet-managed Ubuntu VMs to Google Container Engine.  Brandon will
share some of Olark’s successes and failures, so that hopefully you can have a
good starting point and avoid making the same mistakes that they did.  He’ll
also answer some questions like:  How can I set up DNS and VPN so that I can
route between my legacy infrastructure and Kubernetes services?  I have a
stateful application, can (or should) I still use Kubernetes?  What are some
things I can do to reduce the risk involved in a large-scale migration?
