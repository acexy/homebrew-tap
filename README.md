# Acexy Homebrew Tap

This tap distributes stable releases of Acexy command-line projects.

## Portway

[Portway](https://github.com/acexy/portway) is a secure reverse tunneling
client and server. Install only the component required on each host.

Install the client:

```bash
brew trust --formula acexy/tap/portway
brew install acexy/tap/portway
```

Install the server:

```bash
brew trust --formula acexy/tap/portwayd
brew install acexy/tap/portwayd
```

Install both components on the same host:

```bash
brew trust --formula acexy/tap/portway acexy/tap/portwayd
brew install acexy/tap/portway acexy/tap/portwayd
```

### Beta releases

Beta releases use separate formulae and do not replace the stable release during
`brew upgrade`. Install the beta client or server with:

```bash
brew trust --formula acexy/tap/portway-beta acexy/tap/portwayd-beta
brew install acexy/tap/portway-beta acexy/tap/portwayd-beta
```

The stable and beta formulae install the same command names and therefore cannot
be active at the same time. Remove the installed channel before switching. To
return to the stable release:

```bash
brew uninstall portway-beta portwayd-beta
brew install acexy/tap/portway acexy/tap/portwayd
```

Homebrew requires explicit trust before loading formulae from non-official taps.
The commands above trust only the requested formulae rather than every current
and future item in this tap.

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
