# Pi Agent Workspace

This directory is managed by chezmoi and becomes `~/.pi` on the target machine.

## Ground truth

The source of truth is the dotfiles repository, under `dot_pi/`.

Current managed Pi files:

- `tsconfig.json`
- `package.json`
- `agent/settings.json`
- `agent/mcp.json`
- `agent/cloak.json`
- `agent/npm/.gitignore`
- reviewed files under `agent/extensions/`

## Working rules

- Edit the chezmoi source files first.
- Do not add secrets, auth tokens, generated caches, dependency directories, or session/runtime state.
- Keep MCP changes deliberate and minimal.
- Add global skills and extensions in small batches after reviewing their behavior.
- Use npm for the Pi extension workspace unless a specific extension says otherwise.

## Chezmoi path mapping

- `dot_pi/` maps to `~/.pi/`.
- `dot_pi/agent/` maps to `~/.pi/agent/`.
- `dot_gitignore` maps to `.gitignore`.

## Runtime safety

Pi extensions execute with local user permissions. Skills can guide the agent to run commands or follow workflows. Review all imported extensions and skills before enabling them globally.
