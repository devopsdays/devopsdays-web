+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Designing media optimized byte transfer and storage at Netflix"
Type = "talk"
Speakers = ["tejas-chopra"]
+++

Netflix is a media streaming company and a movie studio with data at exabyte scale. Most of the data generated, transferred and stored at Netflix is very media specific, for example, raw camera footage, or data generated as a result of encoding and rendering for different screen types.

In this session, I will throw light on how we design a media aware and optimized transfer, storage and presentation layer for data.

By leveraging this architecture at Netflix scale, we provide a scalable, reliable, and optimized backend layer for media data.

Major takeaways from this session

- Learn about the challenges of designing a scalable object storage layer for data while adhering to the file system POSIX semantics of media applications
- Learn about the optimizations applied to reduce cloud storage footprint, such as chunking, deduplication
- Learn about how different applications expect data to be presented at different locations and in different formats.