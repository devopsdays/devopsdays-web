+++
City = "Zurich"
Year = "2023"
talk_date = "2022-06-01"
talk_start_time = "14:25"
talk_end_time = "14:30"
title = "Setup a branch specific pipeline"
type = "talk"
speakers = ["marc-herren"]
youtube = ""
vimeo = ""
speakerdeck = ""
slideshare = ""
slides = ""
+++

### Workshop

In this workshop we will build up a simple Gitlab CI pipeline from scratch and take it a step further by adding a workflow which has the goal to perform different steps on different branches.

The end goal is to have a fully functional Gitlab CI pipeline which performs tests on a "merge-request" from a feature-branch, builds the images on the main-branch, scans the image on the integration-branch and finally rolls-out the image on the production-branch.

To accomplish this, we will create a version file of the frontend/backend image tag and reuse them in later stages