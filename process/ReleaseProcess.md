# Release Process and Guidelines

## What is a Zowe release

A release of the Zowe project consists of two 'convenience' deliverables - CLI binaries, and a PAX file which contains the Zowe API Mediation Layer, Zowe Desktop, and Zowe Explorer-Server. The CLI binaries are obtainable either through standard npm install commands, or, for users with limited internet access, through a convience zip file which allows for offline installation. The CLI convenience zip and Zowe PAX are both available through the official [Zowe Website](https://www.zowe.org).

Each Zowe release comes with updates to user installation, configuration, and extension documentation. The documentation is developed in the [docs-site repository](https://github.com/zowe/docs-site), is accessible through the [Zowe Website](https://www.zowe.org), and is hosted directly on [Github.io](https://zowe.github.io/docs-site/).

The focus of this document refers to generating stable releases of Zowe. For bleeding edge Zowe builds, see [Zowe Nightly Builds](#zowe-nightly-builds).

Generating any release of Zowe requires gathering artifacts from each of Zowe's subprojects, organizing them into the Zowe deliverables, testing said Zowe deliverables, signing the deliverables, and publishing the deliverables in sync with Release Notes / Documentation Updates.

## How to generate a release

Stable Zowe releases are generated from [zowe-install-packaging](https://github.com/zowe/zowe-install-packaging) repository **master** branch. The versions defined in [zowe-install-packaging](https://github.com/zowe/zowe-install-packaging) are Zowe official stable version.

In order to generate a new release of Zowe, each of the below checklists must be completed. The checklists below are roughly ordered based on prerequisite resolution. 

### Subproject Checklist.
  
* Each subproject **must** confirm the version(s) of their planned deliverable artifacts. **Official Zowe deliverables must not depend on SNAPSHOTS or other imprecise artifact versioning schemas**. For details, see [Subproject Release Cadence](#subproject-release-cadence).
* Each subproject **must** identify if any of their dependencies have changed since the last release.
* Each subproject **must** create release notes for their project. For details, see [Creating Release Notes](#creating-release-notes)

### Zowe CLI Convenience Bundle Checklist

* Confirm @next versions of the core CLI as well as plugins for packaging.

### Zowe Documentation Checklist

* Aggregate release notes from the Zowe subprojects, and place them in the [docs-site repository](https://github.com/zowe/docs-site).
* Merge release notes and any other docs-site feature branches into the [docs-staging branch](https://github.com/zowe/docs-site/tree/docs-staging).

### Zowe PAX Checklist

* Build PAX through automation
* Test PAX using automation 
* Test PAX with any manual tests not covered by automation. See [Leftover Manual Tests](##Manual%20Testing)
    * Publish as RC candidate
    * Test RC candidate
          * Automated smoke tests
          * Manual verifications
    * Loop if necessary until candidate passes
* Sign the PAX

### Publish Release Checklist

* Publish signed PAX file to https://projectgiza.org website.
* Publish Zowe CLI bundle to https://projectgiza.org website.
* Update zowe.org website with new version information on both PAX file and CLI bundle.
* Publish new documentation.
* Publish announcements (slack, mailing lists, zowe.org home page, elsewhere?).

## Subproject Release Cadence

Stable Zowe releases **must** contain artifacts which have stable, addressable versions. Therefore, it is **recommended** that Zowe subprojects publish release versions in accordance with [Semantic Versioning](https://semver.org) guidelines. Pre-release or build metadata formats (1.0.0-xyz.date, 1.0.0+xyz.date) are conditionally acceptable as stable versions. Less precise formats such as the Maven 'SNAPSHOT' format are not acceptable as they cannot refer to a static artifact level. 

This guide does not dictate stable release cadence nor how to achieve said cadence, though frequent releases are preferable. For implemented examples on frequent release cadence, see the [Zowe CLI Subproject](https://github.com/Zowe/zowe-cli) or ???.

## Creating Release Notes

Release notes must have a human-readable summary of major changes compared to the prior release. 
Release notes must also identify every publicly known vulnerability with a matching CVE assignment.

## Repository Branch Versioning Cadence

Zowe itself has own version life cycle, along with each subprojects may have independent cycles. The version life cycle is a combination of repository branches and dependencies of certain version of subprojects which represented as artifactory folders or npm registry entries.

There are 3 suggested types of branches related to the versions, and each project may choose what best fit in the subproject.

- **master**, which is always the latest stable build,
- **v?.?.x**, which is Long-Time-Support build thread, which we can continue build LTS versions and apply patches to it. These branches are optional, and created based on needs.
- **v?.?.?-staging**, which is future version, and some feature targets for that version, not current stable, should be merged into this branch. These branches are optional, and created based on needs.

For each stable version released from **master** branch, the repository should have a proper git tag for the version created.

The branch model is intended to protect **master** branch for building stable version and add ability to continue build on LTS versions.

### Zowe Branches

Here is a brief graph of how the branches and artifactory folders orchestrated together to final Zowe stable and staging builds.

```
├─ branch master: on v1.0.3, build results are published to artifactory snapshots/org/zowe/1.0.3-snapshot/ and prmoted to artifactory releases/org/zowe/1.0.3/
│   ├── subproject1 v0.1.2
│   ├── subproject2 v3.4.5
│   │   ├── subproject2-1 v2.1.0
│   │   ├── subproject2-2 v2.2.0
│   │   └── subproject2-3 v2.3.0
│   ├── subproject3 v6.7.8
│   └── subproject4 v9.10.11
├─ branch v0.9.x: on v0.9.20, build results are published to artifactory snapshots/org/zowe/0.9.20-snapshot/ and prmoted to artifactory releases/org/zowe/0.9.20/
│   ├── subproject1 v0.0.15
│   ├── subproject2 v3.1.0
│   │   ├── subproject2-1 v1.1.0
│   │   ├── subproject2-2 v1.2.0
│   │   └── subproject2-3 v1.3.0
│   ├── subproject3 v5.6.7
│   └── subproject4 v8.9.10
├── brnach v1.0.4-staging: on v1.0.4, build results are published to artifactory snapshots/org/zowe/1.0.4-staging/
│   ├── subproject1 v0.1.3
│   ├── subproject2 v3.7.0
│   │   ├── subproject2-1 v2.10.0
│   │   ├── subproject2-2 v2.20.0
│   │   └── subproject2-3 v2.30.0
│   ├── subproject3 v6.7.8
│   └── subproject4 v9.10.12
└── branch v1.1-staging: on v1.1.0, build results are published to artifactory snapshots/org/zowe/1.1-staging/
    ├── subproject1 v1.0.2
    ├── subproject2 v4.1.0
    │   ├── subproject2-1 v3.1.0
    │   ├── subproject2-2 v3.2.0
    │   └── subproject2-3 v3.3.0
    ├── subproject3 v6.7.8
    ├── subproject4 v10.0.5
    └── subproject5 v0.1.2
```

- Any changes which is not supposed to be included in v1.0.3 build, **SHOULD NOT** be merged into **master** branch. If it intends to be in next build, the pull request should be merged into **v1.0.4-staging** branch.
- The first commit in **v1.0.4-staging** branch **SHOULD** be bumping version to v1.0.4.
- After **v1.0.4-staging** branch is merged into **master**, **v1.0.4-staging** branch **SHOULD** be deleted. Now **master** branch will generate v1.0.4 builds.
- Before **v1.1-staging** branch, which is a staging branch on `minor` version level, merged into **master**, we **SHOULD** create a side branch name **v1.0.x** for long term support and build future v1.0.? version.

### Subproject Branches

For each of the subprojects, may follow similar pattern. But subproject itself may decide which version (major, minor or path) level it needs for staging branches and if they need legacy version branches. Here is example of subproject repository which creates staging branches on `minor` level:

```
├─ branch master: on v4.1.0, build results are published to artifactory snapshots/path/to/subproject2/4.1.0-snapshot/ and promoted to releases/path/to/subproject2/4.1.0/
│   ├── subproject2-1 v3.1.0
│   ├── subproject2-2 v3.2.0
│   └── subproject2-3 v3.3.0
├─ brnach v3.x: on v3.2.10, build results are published to artifactory snapshots/path/to/subproject2/3.2.10-snapshot/ and promoted to releases/path/to/subproject2/3.2.10/
│   ├── subproject2-1 v3.1.0
│   ├── subproject2-2 v3.2.0
│   └── subproject2-3 v3.3.0
└── brnach v4.2-staging: on v4.2.2, build results are published to artifactory snapshots/path/to/subproject2/4.2-staging/
    ├── subproject2-1 v3.1.1
    ├── subproject2-2 v3.2.2
    └── subproject2-3 v3.3.3
```

## Manual Testing

| subproject | manual test case | remediation |
|---|---|---|
| zowe-cli | validate version matches intended release | automate either version |
| zowe-cli | validate installation | automate installation of cli + plugins |

## Zowe Nightly Builds

Zowe Nightly Builds may contain those less specific versions schemas that the stable release bans. Nightly builds are available for public consumption, but may contain bugs or incomplete features. Nightly builds are generated from [zowe-install-packaging](https://github.com/zowe/zowe-install-packaging) repository **master** branch.

The nightly build allows subprojects to gain a head start on their current release process, as they can download the nightly build at any time to test their bleeding edge components. If the new feature is too unstable to be included into current release, then they should coordinate with the CI/CD team to create a **staging** branch off of master. This process is introduced in [Zowe Branches](#zowe-branches) section. They can use this staging branch to test their components integration with the Zowe PAX before pushing the latest component to master.
