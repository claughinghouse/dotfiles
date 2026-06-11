# ~/.pi

Global Pi configuration managed by this chezmoi dotfiles repository.

## Extension Dependency Workspace

Package-style global extensions stay in `agent/extensions/` so Pi can auto-discover them from:

- `~/.pi/agent/extensions/*.ts`
- `~/.pi/agent/extensions/*/index.ts`

This directory is the shared npm workspace root for extensions with their own `package.json` files.

Install or refresh extension dependencies from here:

```sh
npm install
```

Run workspace checks:

```sh
npm run check
```

After changing extension code, reload Pi with `/reload`.

## Conventions

- Manage changes in the chezmoi source directory, not directly in `~/.pi`.
- Prefer small, reviewed additions for global Pi behavior.
- Keep local auth, caches, generated packages, dependencies, and runtime state out of source control.
