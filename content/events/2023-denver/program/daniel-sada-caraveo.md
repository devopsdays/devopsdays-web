+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "How to sleep at night while having a cloud service"
Type = "talk"
Speakers = ["daniel-sada-caraveo"]
+++
I like to sleep at night.

Getting woken up in the middle of night because your service went down is not fun. Maintaining services with millions of users is hard. Maintaining them “hands off” and being able to have a good night’s sleep is even harder. In this talk I’ll show you the strategies I’ve employed to allow me to sleep at night while being responsible for millions of users. These few tips and tricks will help you make great architectural decisions and also sleep at night without too much worries. These tips are things that actually helped me over my time maintaining services.

They are divided in 3 “difficulty levels”:
Easy Mode

These steps are relatively easy to implement but yield high return on investment. If you aren’t doing it, you’ll be surprised how good quality of life is after you start adopting these. - Infrastructure as code - CI/CD - Load Balancers - RayIDs, CorrelationIDs/ UUIDs
OK Mode

These are usually more complicated than the previous ones, but if you grab the right tools, it can be easy, the ROI for small to medium companies is easy to justify. - Centralized Logging - Monitoring - Autoscaling
Hard Mode

These are hard, somewhat difficult to implement, you probably need a bit more resources to do these. So, for a small or medium company, it’s going to be hard to push with these, but if done correctly, they will make you sleep at night. - Blue Green Deployments - Idempotency - Anomaly Detection

With these tips, you should be able to conquer the world and sleep at night.


