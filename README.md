# Homebrew tap for GDMS

This tap distributes [GDMS](https://github.com/rsheyd/google-docs-markdown-sync), a self-hosted macOS service that synchronizes selected Google Docs with Markdown files and Google Sheets with CSV directories.

## Install

```sh
brew install rsheyd/tap/gdms
```

Then follow the [GDMS installation guide](https://github.com/rsheyd/google-docs-markdown-sync/blob/main/docs/installation.md) to configure Google authorization and install the background service.

## Upgrade

```sh
brew update
brew upgrade gdms
gdms install-service
```

Reinstalling the service after an upgrade refreshes the versioned Homebrew Cellar paths stored in the launchd configuration and Finder Quick Actions.
