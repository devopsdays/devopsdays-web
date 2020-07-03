+++
description = ""
title = "Let's choose Kaizen instead of \"The Rewrite\""
type = "new-talk"
speakers = [
        "brandon-williams",
]
youtube = "_aWNyuD_iyY"
+++
I have been a part of teams where ""scripts"", particular build and deploy scripts, lack automated tests. The question of how to improve the code arises and one answer usually ends up being a rewrite. I have seen several rewrites and during these:

1) requirements/existing features are missed

2) they take longer than expected

3) new bugs are introduced

The rewrites have been proposed because the code is perceived to be too big/complex to get tests around it. So if rewrites are not the answer, what can we do?

Kaizen is the philosophy of continuous improvement of working practices. You decide to just make the script 1% better today instead of doing the rewrite. We will explore two options for doing so, both of which involve automated testing. We can write the first characterization test for the script or unit test just our new piece of functionality. We'll talk about both approaches and why you might choose one over the other. In time, this script may undergo the "rewrite" that you initially dreamed of but you went about it in a much safer way."