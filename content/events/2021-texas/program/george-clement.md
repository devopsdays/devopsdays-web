+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Intel Memory Failure Prediction a new OOB feature for servers"
Type = "talk"
Speakers = ["george-clement"]
sharing_image = "george-clement.png"

+++

Intel has recently introduced a new capability called Intel Memory Failure Prediction (MFP). Intel® MFP uses machine learning to analyze server memory errors down to the DIMM, bank, column, row, and cell levels to generate a memory health score which can be used to predict potential failures. It’s a valuable tool to help customers analyze their hardware, and proactively make decisions on when to address a memory issue.

This capability helps by providing a detailed Realtime evaluation of memory health to improve several areas related to uptime:

Intel® MFP Enables Memory Reliability-aware Workload Migration By using Intel® MFP, it generated memory health scores that helped customers make memory reliability-aware decisions in workload scheduling, such as migrating the critical tasks running on distressed servers to other servers, giving them ample time to take actions and avoid critical application crashes.

Intel® MFP Reduces Unnecessary DIMM Replacements By analyzing memory errors and predicting potential memory failures before they happen, Intel® MFP can help improve DIMM replace strategy.

Intel® MFP Optimizes OS Page Offlining When there is a burst in the number of errors in a specific memory region, that region is likely to break down soon. By detecting this early, Intel® MFP can suggest disabling faulty memory pages, preventing them from being used again, and thus reducing the risk of uncorrectable errors. This is called Page Offlining and has become critical for large scale data centers today.

This capability is offered through our MFP partners AMI and Insyde, and the capability runs out of band with a restful interface for data collection.

In the talk I will review how the technology collects errors, analyzes and pattern matches, and results a health score to help drive awareness.