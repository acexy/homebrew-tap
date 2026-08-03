# Acexy Homebrew Tap

This tap distributes stable releases of Acexy command-line projects.

## Portway

[Portway](https://github.com/acexy/portway) is a secure reverse tunneling
client and server. The formula installs both commands:

- `portway`
- `portwayd`

Install Portway:

```bash
brew install acexy/tap/portway
```

Upgrade an existing installation:

```bash
brew update
brew upgrade portway
```

Verify the installed version:

```bash
portway version
portwayd version
```

Uninstall Portway:

```bash
brew uninstall portway
```

The formula does not create or overwrite client or server configuration files.
Follow the [Portway configuration documentation](https://github.com/acexy/portway#configuration)
to create deployment-specific configuration. Homebrew service definitions are
not provided in the initial release.
