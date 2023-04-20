module.exports = async ({github, context, core}) => {
  const { data: comments } = await github.rest.issues.listComments({
    owner: context.repo.owner,
    repo: context.repo.repo,
    issue_number: context.payload.pull_request.number,
  });
  const largeFileComment = comments.find((comment) =>
    comment.body.startsWith(":warning: Warning: This PR contains a PDF or large file")
  );
  if (!largeFileComment) {
    await github.rest.issues.createComment({
    owner: context.repo.owner,
    repo: context.repo.repo,
      issue_number: context.payload.pull_request.number,
      body: ":warning: Warning: This PR contains a PDF or large file. In most cases, you want to use the [asset repository](https://github.com/devopsdays/devopsdays-assets/)",
    });
  }
}
