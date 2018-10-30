# Release Process and Guidelines


## What is a Zowe release?

A release of the Zowe project contains two 'convenience' deliverables - CLI binaries, and a PAX file which contains the Zowe API Mediation Layer, Zowe Desktop, and Zowe Explorer-Server. The CLI binaries are obtainable either through standard npm install commands, or, for users with limited internet access, through a convience zip file which allows for offline installation. The CLI convenience zip and Zowe PAX are both available through the official [Zowe Website](https://www.zowe.org).

Each Zowe release comes with updates to user installation, configuration, and extension documentation. The documentation is developed in the [docs-site repository](https://github.com/zowe/docs-site), is accessible through the [Zowe Website](https://www.zowe.org), and is hosted directly on [Github.io](https://zowe.github.io/docs-site/).

The focus of this document refers to generating stable releases of Zowe. For bleeding edge Zowe builds, see [Zowe Nightly Builds](##Zowe%20Nightly%20Builds).

Generating any release of Zowe requires gathering artifacts from each of Zowe's subprojects, organizing them into the Zowe deliverables, testing said Zowe deliverables, signing the deliverables, and publishing the deliverables in sync with Release Notes / Documentation Updates.

## How do we generate a release? 

In order to generate a new release of Zowe, each of the below checklists must be completed. The checklists below are roughly ordered based on prerequisite resolution. 

### Subproject Checklist.
  
* Each subproject **must** confirm the version(s) of their planned deliverable artifacts. **Official Zowe deliverables must not depend on SNAPSHOTS or other imprecise artifact versioning schemas**. For details, see [Subproject Release Cadence](##Subproject%20Release%20Cadence).
* Each subproject **must** identify if any of their dependencies have changed since the last release.
* Each subproject **must** create release notes for their project. For details, see [Creating Release Notes](##Creating%20Release%20Notes)

### Zowe CLI Convenience Bundle Checklist

* Confirm @next versions of the core CLI as well as plugins for packaging.

### Zowe Documentation Checklist

* Aggregate release notes from the Zowe subprojects, and place them in the [docs-site repository](https://github.com/zowe/docs-site).
* Merge release notes and any other docs-site feature branches into the [docs-staging branch](https://github.com/zowe/docs-site/tree/docs-staging).

### Zowe PAX Checklist

* Build PAX
* Test PAX
    * Publish as RC candidate
    * Test RC candidate
          * Automated smoke tests
          * Manual verifications
    * Loop if necessary until candidate passes
* Sign the PAX

### Publish Release Checklist

* Publish signed PAX file to gizafoundation.org .
* Publish Zowe CLI bundle to Zowe.org website
* Update zowe.org website with new version information.
* Publish new documentation.
* Publish announcements (slack, mailing lists, elsewhere?).
* 

## Subproject Release Cadence
Stable Zowe releases **must** contain artifacts which have stable, addressable versions. Therefore, it is **recommended** that Zowe subprojects publish release versions in accordance with [Semantic Versioning](https://semver.org) guodelines. Pre-release or build metadata formats (1.0.0-xyz.date, 1.0.0+xyz.date) are conditionally acceptable as stable versions. Less precise formats such as the Maven 'SNAPSHOT' format are not acceptable as they cannot refer to a static artifact level. 

This guide does not dictate stable release cadence nor how to achieve said cadence, though frequent releases are preferable. For implemented examples on frequent release cadence, see the [Zowe CLI Subproject](https://github.com/Zowe/zowe-cli) or ???.

## Creating Release Notes
Release notes must have a human-readable summary of major changes compared to the prior release. 
Release notes must also identify every publicly known vulnerability with a matching CVE assignment.

## Zowe Nightly Builds
Zowe Nightly Builds may contain those less specific versions schemas that the stable release bans. Nightly builds are available for public consumption, but may contain bugs or incomplete features.

The nightly build allows subprojects to gain a head start on their release process, as they can download the nightly build at any time to test their bleeding edge components. If the nightly build is too unstable to be valuable to a subproject, then they should coordinate with the CI/CD team to create a PAX branch off of master. They can use this branch to test their components integration with the Zowe PAX before pushing the latest component to master.