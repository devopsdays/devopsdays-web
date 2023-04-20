module.exports = async ({github, context, core}) => {
  const pr = context.payload.pull_request;
  const repo = context.repo;
  const issueNumber = pr.number;
  const { data: comments } = await github.issues.listComments({
    ...repo,
    issue_number: issueNumber,
  });
  const botComment = comments.find((comment) =>
    comment.body.startsWith(":warning: Warning: This PR contains a PDF or large file")
  );
  if (!botComment) {
    await github.issues.createComment({
      ...repo,
      issue_number: issueNumber,
      body: ":warning: Warning: This PR contains a PDF or large file. In most cases, you want to use the [asset repository](https://github.com/devopsdays/devopsdays-assets/)",
    });
  }
}
