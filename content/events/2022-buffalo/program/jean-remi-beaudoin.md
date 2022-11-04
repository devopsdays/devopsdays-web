+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Rendering 3D scenes with Blender on AWS Lambda, how we got there"
type = "talk"
speakers = ["jean-remi-beaudoin"]
sharing_image = "jean-remi-beaudoin-card.png"
+++

We built a serverless backend that renders 3D scenes with Blender — the leading open source 3D design tool — as part of a business application used at a large corporation. This reduced the time spent between resources being created by a team in Asia and their availability in a design tool used by teams around the world.

When first presented with this challenge, we were slightly anxious because it felt like we would have to deploy some sort of render farm that visual effects studios typically use. It felt like a daunting task… But we found out that a simpler solution was possible, in part thanks to Blender’s powerful Python API.

Choosing functions as a service for such a heavy computation task may sound like a bad idea due to their limited compute power. But it actually made sense in our use case. I will walk you through the other options we considered and I will explain how we built this service with AWS Lambda functions running container images.