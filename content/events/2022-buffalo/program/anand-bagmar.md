+++
talk_date = ""
talk_start_time = ""
talk_end_time = ""
title = "Automating the real-user scenarios across multi-apps, and multi-devices"
type = "talk"
speakers = ["anand-bagmar"]
sharing_image = "anand-bagmar-card.png"
+++

Simulating real-user scenarios as part of your automation is a solved problem. You need to understand the domain, the product, the user, and then define and implement your scenario.

But there are some types of scenarios that are complex to implement. These are the real-world scenarios having multiple personas (users) interacting with each other to use some business functionalities. These personas may be on the same platform or different (web / mobile-web / native apps / desktop applications).

Example scenarios:

- How do you check if more than 1 person is able to join a zoom / teams meeting? And that they can interact with each other?
- How do you check if the end-2-end scenario that involves multiple users, across multiple apps works as expected?
  Given user places order on Amazon (app / browser)
  When delivery agent delivers the order (using Delivery app)
  Then user can see the order status as "Delivered"

Even though we will automate and test each application in such interactions independently, or test each persona scenarios independently, we need a way to build confidence that these multiple personas and applications can work together. These scenarios are critical to automate!

In this session, I will demonstrate teswiz, an open-source framework can easily automate these multi-user, multi-app, multi-device scenarios. I will also mention how to run these tests on local and in CI pipelines.

Example: Multi-user, Multi-device test scenario  
@multiuser-android-web @videoRequest  
Scenario: Host (on Android) requests Guest (on Web) to start video  
Given "Host" signs up (using API), logs-in and starts an instant meeting on "android"  
And "Guest" joins the meeting from "web"  
When "Host" asks "Guest" to turn on the "video"  
Then "Guest" should be able to select "later" from video request  
And "Host" should receive a toast saying, "Guest" will switch on the "video" later  
When "Host" asks "Guest" to turn on "video"  
Then "Guest" should be able to select "allow" from video request

Example: Multi-user, Multi-app, Multi-device test scenario  
@multiuser-android  
Scenario: Verify my order status when delivery-agent delivers the app successfully  
Given "I" order a "One Plus 9" phone from "amazon" using the "android app"  
When "delivery-agent" delivers the app using the "delivery-agent" "android app"  
Then "I" can see the item delivered in Order Status

Teswiz enables, and guides you to implement your automated tests while adhering to the principles of test automation, like - independent tests that run in parallel, against multiple environments using environment-specific-test-data and generate rich and contextual reports (and test execution trends) in reportportal.

Test coverage is increased by using Applitools Visual AI, along with Applitools Ultrafast Test Cloud.

In addition, teswiz takes away the pain of managing your browsers, and android / ios / windows devices for automation. The automated tests can run on local browsers / devices, or against any cloud provider, such as HeadSpin, BrowserStack, SauceLabs, pCloudy.

The following features makes teswiz unique:

The ability to do:

- Multi-user scenario automation between all platforms (android, iOS, Web, Windows desktop applications)
- Managing browsers / devices and parallel execution automatically
- Completely configurable options - means no code change required to run different combinations of tests, on demand
- Integration with Applitools Visual AI and Applitools Ultrafast Test Cloud
- Rich contextual reports (including screenshots, browser / device logs) and trend analysis via ReportPortal.io
