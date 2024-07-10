<div align="center">
  <img height="170" src="http://github.com/project-serum/awesome-serum/blob/master/logo-serum.png?raw=true" />

  <h1>deriverse-dex</h1>

  <p>
    <strong>Deriverse exchange repository</strong>
  </p>

  <p>
    <!-- <a href="https://travis-ci.com/project-serum/serum-dex"><img alt="Build Status" src="https://travis-ci.com/project-serum/serum-dex.svg?branch=master" /></a>
    <a href="https://discord.com/channels/739225212658122886"><img alt="Discord Chat" src="https://img.shields.io/discord/739225212658122886?color=blueviolet" /></a> -->
    <a href="https://opensource.org/licenses/Apache-2.0"><img alt="License" src="https://img.shields.io/github/license/project-serum/serum-dex?color=blue" /></a>
  </p>

  <h4>
    <a href="https://www.deriverse.io/">Website</a>
    <!-- <a href="https://serum-academy.com/en/">Academy</a>
    <span> | </span>
    <a href="https://github.com/project-serum/awesome-serum">Awesome</a>
    <span> | </span>
    <a href="https://dex.projectserum.com/#/">DEX</a>
    <span> | </span>
    <a href="https://github.com/project-serum/serum-ts">TypeScript</a> -->
  </h4>
</div>

## Program Deployments

| Program     | Devnet | Mainnet Beta |
| ----------- | ------ | ------------ |
| [DEX](/dex) | `TBA`  | `TBA`        |

## Note

- **Deriverse is in active development so all APIs and protocols are subject to change.**
- **The code is unaudited. Use at your own risk.**

## Contributing

### Download the source

```bash
git clone https://github.com/project-serum/serum-dex.git
```

### Build, deploy, and test programs

See individual crates for documentation. For example, to build the dex see its [README](./dex/README.md).

## Running a local Solana cluster

The easiest way to run a local cluster is to use [solana-test-validator](https://docs.solana.com/developing/test-validator).

## Directories

- `assert-owner`: Solana utility program for checking account ownership.
- `common`: Common rust utilities.
- `dex`: Serum DEX program and client utility.
- `docker`: Docker image definitions.
- `pool`: Serum pool protocol.
- `scripts`: Bash scripts for development.
