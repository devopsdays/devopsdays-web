+++ 
Talk_date = "" 
Talk_start_time = "" 
Talk_end_time = "" 
Title = "Cross Platform Streaming Video QoE Validation in CI/CD Pipelines" 
Type = "talk" 
Speakers = ["suresh-palus"]
+++

 The rapid growth of video streaming platforms across mobile, web, smart TV, and OTT devices has significantly increased the complexity of ensuring consistent Quality of Experience (QoE) for end users. While DevOps practices have successfully automated functional, performance, and security testing, 
 video QoE validation remains largely manual, reactive, and siloed, often detected only after customer complaints or production incidents. This gap creates a critical risk for streaming platforms operating at scale.
 This workshop presents a practical, cross-platform approach to integrating automated streaming video QoE validation directly into CI/CD pipelines, enabling teams to detect playback issues early and continuously across devices and environments.
 We will explore how video QoE can be objectively validated across web, mobile, smart TVs, and OTT devices by combining instrumentation, automated playback analysis, and AI-assisted signal processing. The session introduces techniques to automatically 
 detect and quantify common streaming failures such as startup delay, rebuffering events, bitrate instability, audio-video sync issues, black/white/blue screens, pixelation, and frame drops during pipeline execution.
 Participants will learn how to:
 Embed video playback probes into CI/CD workflows (GitHub Actions, Jenkins, GitLab CI)
 Capture and analyze video streams using FFmpeg, device logs, and network telemetry
 Apply computer vision and ML models to identify visual anomalies at scale
 Normalize QoE metrics across heterogeneous devices and platforms
 Define QoE quality gates that can fail builds before production deployment
 The workshop also covers real-world architecture patterns, including parallel execution strategies, cloud device farms, and cost-efficient pipeline design for high-volume test runs. Attendees will see how QoE metrics can be correlated with code changes, CDN configurations, and adaptive bitrate logic to enable faster root-cause analysis.
 By shifting video QoE validation left into CI/CD pipelines, engineering teams can move from reactive monitoring to proactive, automated quality enforcement, reducing customer churn, operational costs, and post-release incidents. This session is ideal for DevOps engineers, SREs, QA architects, and streaming platform engineers seeking to operationalize video quality  
 as a first-class DevOps metric.
