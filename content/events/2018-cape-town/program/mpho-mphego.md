+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Automated Qualification Testing for the 64 Antennas MeerKAT Correlator-Beamformer"
Type = "talk"
Speakers = ["mpho-mphego"]
+++

SKA South Africa, a Business Unit of the National Research Foundation. We are building the Square Kilometre Array radio telescope (SKA), located in South Africa and eight other African countries, with part in Australia. The SKA will be the largest radio telescope ever built and will produce science that changes our understanding of the universe. Construction of MeerKAT's 64 antennas completed earlier this year, and we have deployed a basic correlator for 64-antenna imaging using 40G Ethernet interconnected SKARAB processing engines. The talk will detail the development, tricks and hacks that was done in order to qualify the 64 antennas (4096 channels) Correlator-Beamformer deployed on a SKARAB processing nodes, with challenges ranging from auto-subscribing to 128 multicasts SKARAB IP's to capturing & processing high-speed data in real time. We will also detail, the automated qualification testing framework which also generates a pdfTex document, executed by Jenkins CI running on a Docker container environment with zero human intervention.
