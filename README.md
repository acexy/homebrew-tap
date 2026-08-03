# Acexy Homebrew Tap

This tap distributes stable releases of Acexy command-line projects.

## Portway

[Portway](https://github.com/acexy/portway) is a secure reverse tunneling
client and server. Install only the component required on each host.

Install the client:

```bash
brew install acexy/tap/portway
```

Install the server:

```bash
brew install acexy/tap/portwayd
```

Install both components on the same host:

```bash
brew install acexy/tap/portway acexy/tap/portwayd
```

Upgrade installed components:

```bash
brew update
brew upgrade portway portwayd
```

Users who installed the original combined `portway` formula should migrate once:

```bash
brew update
brew upgrade portway
brew install acexy/tap/portwayd
```

Each formula only installs its matching command and does not create or overwrite
client or server configuration files.
Follow the [Portway configuration documentation](https://github.com/acexy/portway#configuration)
to create deployment-specific configuration. Homebrew service definitions are
not provided in the initial release.
