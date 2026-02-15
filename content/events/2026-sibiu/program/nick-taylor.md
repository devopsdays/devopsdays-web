+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Zero Trust Infrastructure for AI Agents: Securing Your Development Workflow"
Type = "talk"
Speakers = ["nick-taylor"]
+++

<h3>Securing AI Agents with Zero Trust and MCP</h3>

<h3>The Core Problem</h3>

<p>Your development team wants to deploy AI assistants that can:</p>

<ul>
  <li>Interact with internal systems</li>
  <li>Modify configurations</li>
  <li>Automate workflows</li>
</ul>

<p>Meanwhile, security teams are asking critical questions:</p>

<ul>
  <li>How much access do these agents need?</li>
  <li>How is that access controlled?</li>
  <li>How is it audited?</li>
</ul>

<p><strong>The challenge:</strong> How do you give AI agents the access they require without introducing new security risks?</p>

<p>In this talk, I demonstrate how to build secure AI agent infrastructure from day one using Zero Trust patterns and the Model Context Protocol (MCP).</p>

<p>Drawing from real-world production experience building MCP servers at Pomerium, I present practical, deployable patterns using open-source tooling.</p>

<h2>The Infrastructure Challenge</h2>

<p>AI agents require infrastructure access. However, traditional OAuth was not designed for AI-driven automation use cases.</p>

<p>OAuth scopes are typically too coarse-grained:</p>

<ul>
  <li>GitHub’s <code>repo</code> scope grants read/write access to everything repository-related.</li>
  <li>Slack’s <code>chat:write</code> allows agents to post anywhere.</li>
  <li>Internal API tokens often lack granularity entirely.</li>
</ul>

<p>The result is overprivileged AI agents.</p>

<p>An agent that only needs to create pull requests can also merge pull requests, delete branches, and modify repository settings.</p>

<p>The solution is not to block AI agents. The solution is to build proper infrastructure around them.</p>

<h2>A Practical Approach to AI Agent Security</h2>

<p>I demonstrate a dual-layer Zero Trust architecture using the Model Context Protocol (MCP) that works with any MCP server.</p>

<h3>Layer 1: Identity-Aware Proxy (Pomerium)</h3>

<ul>
  <li>Handles authentication</li>
  <li>Provides secure development tunnels</li>
  <li>Integrates with your existing SSO infrastructure</li>
  <li>No VPNs or bastion hosts required</li>
</ul>

<h3>Layer 2: Fine-Grained Authorization</h3>

<ul>
  <li>Transforms coarse OAuth scopes into precise tool-level permissions</li>
  <li>Policy-as-code stored in your infrastructure repository</li>
  <li>Real-time enforcement without agent code changes</li>
</ul>

<h2>Live Demonstration</h2>

<p>I demonstrate this architecture using the GitHub MCP server:</p>

<ol>
  <li><strong>Before:</strong> An AI agent with standard OAuth can perform any action allowed by the <code>repo</code> scope.</li>
  <li><strong>After:</strong> The same agent operates under fine-grained policies — it can create pull requests but is blocked from merging them.</li>
  <li><strong>Observability:</strong> Every AI action is logged with full context for audit trails.</li>
  <li><strong>Workflow:</strong> A complete development-to-production deployment with security built in.</li>
</ol>

<p>The same patterns apply whether you're securing GitHub access, Slack integrations, internal APIs, or any other service your AI agents interact with.</p>

<h2>Why This Matters for Your Team</h2>

<p><strong>Observability:</strong> Complete audit trails of AI agent activity integrated with your existing logging infrastructure.</p>

<p><strong>Developer Experience:</strong> Security patterns that do not slow down development workflows.</p>

<p><strong>Production Ready:</strong> Deploy today using open-source components under the Apache 2.0 license.</p>

<p><strong>Incremental Adoption:</strong> Add security controls to existing AI agent deployments without rewriting everything.</p>

<h2>Key Takeaways</h2>

<ul>
  <li>Infrastructure patterns for securing AI agents in development and production</li>
  <li>How to implement fine-grained authorization using Identity-Aware Proxies</li>
  <li>Observable, auditable AI workflows that satisfy compliance requirements</li>
  <li>A working reference implementation you can fork and adapt</li>
</ul>

<h2>Industry Context</h2>

<p>The Model Context Protocol is becoming a standard for extending AI assistants such as Claude, ChatGPT, and VS Code Copilot.</p>

<p>As DevOps teams deploy these agents into production workflows, solid infrastructure patterns make the difference between experimental tooling and production-ready systems.</p>

<p>The live demo uses Pomerium Zero to accelerate policy updates during the presentation. However, all demonstrated patterns are fully implementable in the open-source version via YAML configuration.</p>

<p>Open-source repository: https://github.com/pomerium/pomerium</p>

<h2>Reference Implementation</h2>

<p>The MCP server code and authorization policies will be available immediately after the talk:</p>

<p>https://github.com/nickytonline/github-mcp-http</p>

