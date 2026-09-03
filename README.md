# Acexy Homebrew Tap

This is Acexy's personal public [Homebrew tap](https://brew.sh/), providing
Homebrew formulae for selected open-source projects and their releases.

## Available resources

| Resource | Formula | Project | Purpose |
| --- | --- | --- | --- |
| Portway Release | `portway` | [acexy/portway](https://github.com/acexy/portway) | Stable Portway client for secure reverse tunneling. |
| Portway Release | `portwayd` | [acexy/portway](https://github.com/acexy/portway) | Stable Portway server for secure reverse tunneling. |
| Portway Beta Release | `portway-beta` | [acexy/portway](https://github.com/acexy/portway) | Beta Portway client for testing upcoming releases. |
| Portway Beta Release | `portwayd-beta` | [acexy/portway](https://github.com/acexy/portway) | Beta Portway server for testing upcoming releases. |

The client and server formulae install the `portway` and `portwayd` commands,
respectively. Stable and beta formulae use the same command names within each
component and therefore cannot be installed alongside their corresponding
channel at the same time.

## Installation example

The following example shows how to add this tap and install a resource:

```bash
brew tap acexy/tap
brew install acexy/tap/portway
```

For example, to install another formula from the resource list:

```bash
brew install acexy/tap/portwayd
```

To install the beta channel instead:

```bash
brew install acexy/tap/portway-beta acexy/tap/portwayd-beta
```

Homebrew may require explicit trust before loading formulae from non-official
taps. In that case, trust only the formulae you intend to install:

```bash
brew trust --formula acexy/tap
brew install acexy/tap/portway
```

## Updates

```bash
brew update
brew upgrade
```
