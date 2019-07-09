# Zowe Release Process

## Milestones and Release Candidates
Zowe Milestones are time-base releases that are scheduled on four week intervals. It consists of two week Sprints and a release candidate (RC) that may be made available at the end of the Sprint.  By choosing monthly releases, it greatly simplifies communication and scheduling. With smaller iterations we expect to get feedback quickly. Each Squad will decide if there will be a deliverable depending on the content that went into the Release. Squads are self governing and are free to have their own schedules as long as they meet the requirements of the release as defined by the community. As the project matures, nightly builds should be available for download, but might contain experimental features or bugs.

## Release Approval Procedure
The ZLC is informed by the Release Manager that a new release is ready for public distribution.  The ZLC will review the release and ensure that all requirements that are needed for legal and technical release are met.  These include, but are not limited to, updated Documentation, correct LICENSE files, code scans show no known vulnerabilities and some spot testing at the ZLC's discretion.

The ZLC will create a vote thread on zowe-zlc@lists.openmainframeproject.org to vote for the release.  +1 indicates concurrence, 0 is no opinion (and requires a reason to be given) and a -1 is a vote to block the release (rationale required).  The vote is to last no more than 1 week but can be completed sooner when all ZLC votes are cast.  The results will be communicated to the Release Manager.

The Release Manager will sign the release with their GPG keys for the Zowe project and the release will be made available.

Should the vote fail, the ZLC will communicate the issues that caused the release vote to be unsuccessful to the Release Manager who will address those issues and spin a new build.

## Release Numbering
Each release will be identified by a version number. These numbers are used according to a specific scheme that will give you additional information about the release.  The version numbers are of the form `x.y.z-[GA | beta | yyyymmdd]` (Semantic Versioning) or `major.minor.micro`.  The final designation indicates whether this is the official Generally Available (GA) version, a beta version or an interim build.

- The major version number is increased only when a significant amount of new functionality is added to the previous release. In such cases, the new release version number will be (x+1).0.0.
- The minor version number is increased only when some functionality is added to the new release, in which case the new release version number will be x.(y+1).0.
- When the new release consists mainly of bug fixes, there will be a so-called point release. The version number of the new release in such cases will only have the micro version number increased, resulting in x.y.(z+1).
- **GA** indicates that this release is an official, supported version of the Zowe project and is suitable for regular use.
- **beta** means that this build is a candidate build that is complete but is under active development and should not be considered for regular use.
- **yyyymmdd** indicates this is an interim build suitable for experimentation or development.  It is not intended for general usage and may contain defects that are known and being worked or unknown.

The code can be found [here](https://zowe.org/download/).

## Release Content
There are two significant and different release artifacts for Zowe.  The source release and the "convenience build."  

The project officially release source code which can be built into an executable version of Zowe.  This is the core deliverable of Zowe and is intended for downstream consumers that may use Zowe in their projects or products as well as other developers.

The "Convenience Build" is a courtesy release artifact that includes an installer and all available artifacts to run and use Zowe including sample applications.  The convenience build is intended for consumers that simply want to use Zowe and its APIs.  This is built from the source code release above.

## Playbacks
At the end of each Sprint, the Squads will present their work in the form of a Playback that is open to all where they will demonstrate the new capabilities introduced in the Sprint.  

Calendar invites to the Zowe playbacks will be posted [here](https://lists.openmainframeproject.org/g/zowe-dev/calendar).

Past Playbacks recordings are available [here](https://github.com/zowe/community/tree/master/Playbacks/Meeting%20Minutes%20and%20Recordings).

## Meetings
The various squads and Zowe Leadership Committee (ZLC) meet on a weekly basis. The squad schedules can be found [here](https://github.com/zowe/release-management/wiki/Meeting-Schedule) along with the meeting recordings and minutes.

## Communication Channels
The Zowe projects have three communication channels: a mailing list, a Slack channel, and a Waffle Board.
Ypu can find more details about each communication channel on the Zowe website [here](https://zowe.org/contribute).

## Conference Calls
All the conference calls are set up using Zoom. Each squad provides the details and call-in information in the invitation. To get an invitation, you must register on the Open Mainframe Project Group called "zowe-dev@lists.openmainframeproject.org" group at https://lists.openmainframeproject.org/g/zowe-dev

## Post Release Activities
Once it has been decided to ship a release, the Zowe Build team publishes the deliverable along with all documentation.