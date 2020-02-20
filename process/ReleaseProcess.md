# Release Process and Guidelines

## Table of Contents

- [What is a Zowe release](#what-is-a-zowe-release)
- [Zowe Support Policy](#zowe-support-policy)
    - [Version timeframe, Current, Active LTS, Maintenance](#version-timeframe-current-active-lts-maintenance)
    - [Version, Release, Modification](#version-release-modification)
    - [How many active distributions at a given time?](#how-many-active-distributions-at-a-given-time)
    - [Compatibility](#compatibility)
    - [Which defects will be fixed in Maintenance?](#which-defects-will-be-fixed-in-maintenance)
- [How to generate a release](#how-to-generate-a-release)
    - [Subproject Checklist.](#subproject-checklist)
    - [Zowe CLI Convenience Bundle Checklist](#zowe-cli-convenience-bundle-checklist)
    - [Zowe Documentation Checklist](#zowe-documentation-checklist)
    - [Zowe PAX Checklist](#zowe-pax-checklist)
    - [Publish Release Checklist](#publish-release-checklist)
- [Subproject Release Cadence](#subproject-release-cadence)
- [Creating Release Notes](#creating-release-notes)
- [Automated And Manual Testing](#automated-and-manual-testing)
    - [Automated Testing](#automated-testing)
    - [Manual Testing](#manual-testing)
- [Zowe Nightly Builds](#zowe-nightly-builds)

## What is a Zowe release

A release of the Zowe project consists of two 'convenience' deliverables - CLI binaries, and a PAX file which contains the Zowe API Mediation Layer, Zowe Desktop, and Zowe Explorer-Server. The CLI binaries are obtainable either through standard npm install commands, or, for users with limited internet access, through a convience zip file which allows for offline installation. The CLI convenience zip and Zowe PAX are both available through the official [Zowe Website](https://www.zowe.org).

Each Zowe release comes with updates to user installation, configuration, and extension documentation. The documentation is developed in the [docs-site repository](https://github.com/zowe/docs-site), is accessible through the [Zowe Website](https://www.zowe.org), and is hosted directly on [Github.io](https://zowe.github.io/docs-site/).

The focus of this document refers to generating stable releases of Zowe. For bleeding edge Zowe builds, see [Zowe Nightly Builds](#zowe-nightly-builds).

Generating any release of Zowe requires gathering artifacts from each of Zowe's subprojects, organizing them into the Zowe deliverables, testing said Zowe deliverables, signing the deliverables, and publishing the deliverables in sync with Release Notes / Documentation Updates.

## Zowe Support Policy

### Version timeframe, Current, Active LTS, Maintenance  

New Zowe versions will enter Current Release status for 6 to 9 months to allow consumers of Zowe technology to test, provide feedback, and adjust to any changes.  After the Current Release phase, Zowe will move to Active Long-Term Support (LTS) status and will be deemed ready by the community for general use. Active LTS will have additional releases with both fixes and enhancements. Following a period of Active LTS, the Zowe version will enter Maintenance for fixes only. 

The combination of Active LTS and Maintenance LTS release is designated as "long-term support”, which provides two guarantees:
- Critical defects will be fixed. The criteria for what constitutes a critical defect is covered in <provide link to description>. 
- Extenders who achieve Zowe conformance <!--provide link to Conformance Program description--> for the Long-Term Support version will not need to modify their product for it to remain functional when the Zowe community provides distributions within the release or modification level boundary within the same version.  

The length of Active LTS may vary but the total time period of Active LTS + Maintenance LTS will be at least 24 months. Production applications should only use Active LTS or Maintenance LTS releases due to the contract with extender products remaining functional and the community’s commitment to fix critical defects.

### Version, Release, Modification

Zowe distributions are given a version, release, and modification number.  Zowe 1.11.1 is version one, release 11, and modification one.  Zowe distributions are sequential, so 1.11.2, 1.12.0 or 2.0.0 are all later software distributions than 1.11.1.  Distributions that increment the modification number are created when the community recognizes the need to provide a fix mid iteration.  Distributions that increment the release number represent a rollup of all new content since the previous release distribution.  The frequency of releases distributions is determined by the community sprint cycle and is typically every 4 and 6 weeks.  

Distributions that increment the version number represent a change in the support relationship that a customer using Zowe or a vendor extending Zowe has with the underlying Zowe distribution.  Each Zowe version is associated with a conformance program that determines the contract an extender of Zowe has with the base Zowe distribution.  If an extension has achieved the criteria for Zowe version *n* conformance, then that extension will continue to work unmodified with all subsequent release or modification distributions within the same version n. Version n+1 will have new conformance criteria and a vendor product conformance with version *n* may need to be modified to  continue to work with *n+1*. 

### How many active distributions at a given time?

There will be only one Active LTS distribution at a given time. The dates of when current distribution switches to Active LTS and to Maintenance distribution will vary depending on the judgment of the Zowe community. The open community will be given at least 30 days notice of intent to declare and Active LTS or Maintenance distribution. 

A new current distribution that increments the version number of Zowe will be declared when there is a change impacting consumers of Zowe that the community needs.
- feedback on a new architectural direction that deprecates the prior version and/or 
- consumers of Zowe are likely to need time to develop, change and test and plan for implementation of software in advance of the next Active LTS distribution 
- a new conformance program for extenders to be made aware of any changes that they may need to accommodate based on the scope of new, deprecated or removed function

### Compatibility

Once an Active LTS is declared, it is the community's intent to maintain compatibility for APIs, CLI plug-ins and Application Framework applications within the same version. The intent is for any extensions that have achieved Zowe conformance status for the Active LTS version, to run without changes from one release in a version to the next. 

In current phase only, a new Zowe version may introduce a change that will limit prior extensions or cause them to become inoperable without the extension requiring modification.  This could be in the form of documentation, scripts or code requiring the extending offering to update their software. The Zowe community expects this to be a rare occurrence. If it does occur, the required changes to the extension will be communicated during a Current Release and Zowe extenders and consumers will be given at least 90 day notice of the required change.  All extensions who have Zowe conformance will be explicitly contacted and other communication will be made through mailing lists, slack, and other public channels. 

Changes affecting compatibility between version boundaries will be documented in each Zowe distribution and where possible warning messages will be generated to indicate the need to perform the recommended changes. Migration assistance will be provided where possible either in the form of documentation or utilities.  The Zowe conformance program will provide more detail on these changes.  

### Which defects will be fixed in Maintenance?

It is difficult to pre-determine all the conditions that will determine when a fix will be created for a Maintenance release, so this is not to be used as an exhaustive list.  Criteria that are considered include: 
- Unexpected downtime occurs or unacceptable performance
- No viable workaround can be provided through configuration workarounds
- Data corruption
- Conformant applications no longer function as expected
- Security vulnerabilities that compromise data or system integrity
- Critical business function is affected
- A fix can be made available without incurring a greater risk of introducing additional defects
- Wherever possible extenders and customers are encouraged to move from Maintenance to Active LTS versions of Zowe to keep up to date with defect fixes and new features

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

* Build Release Candidate PAX (Automated)
* Test Release Candidate PAX install + smoke (Automated)
* Test PAX with any manual tests not covered by automation. See [Leftover Manual Tests](##Manual%20Testing)
* IF errors exist within the PAX
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

## Automated And Manual Testing

### Automated Testing

Each release candidate build will be sanity validated with test cases designed in [zowe-install-test](https://github.com/zowe/zowe-install-test).

The most latest test result can be found from Jenkins server pipeline `zowe-install-test` master branch. Also the nightly build test status will be published to [#zowe-build](https://openmainframeproject.slack.com/messages/CC9QW5NJE/) Slack channel.

### Manual Testing

| subproject | manual test case | remediation |
|---|---|---|
| zowe-cli | validate version matches intended release | present information about bundled CLI versions clearly |
| zowe-cli | validate installation follow doc | automate installation of cli + plugins. Follow user guide doc must remain manual. |
| api-layer | 11 known manual tests | See [Manual Tests](https://github.com/zowe/api-layer/blob/master/docs/manual_tests.md) |

## Zowe Nightly Builds

Zowe Nightly Builds may contain those less specific versions schemas that the stable release bans. Nightly builds are available for public consumption, but may contain bugs or incomplete features. Nightly builds are generated from [zowe-install-packaging](https://github.com/zowe/zowe-install-packaging) repository **staging** branch, or **v?.x/staging** LTS branches.

The nightly build allows subprojects to gain a head start on their current release process, as they can download the nightly build at any time to test their bleeding edge components. If the new feature is too unstable to be included into current release, then they should coordinate with the CI/CD team to create a temporary **staging/\*** branch off of **staging**. This process is introduced in [Branches Guideline](BranchesGuideline.md) section. They can use this temporary staging branch to test their components integration with the Zowe PAX before pushing the latest component to master.
