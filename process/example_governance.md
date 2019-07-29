*NOTE: This document is intended to provide an example governance structure for any Zowe sub-project to consider as a starting point. All Zowe sub-projects are not bound by these governance polices, but in absence of any prior governance structure should consider this as a recommended structure*

# Overview

This project aims to be governed in a transparent, accessible way for the benefit of the community. All participation in this project is open and not bound to corporate affiliation.  Participants are all bound to the Project's [Code of Conduct](https://events.linuxfoundation.org/code-of-conduct/).

# Project Roles

Roles for participation in this project align with those defined by the ZLC ( see https://github.com/zowe/zlc/blob/master/process/roles.md ).

# Release Process

Project releases will occur on a scheduled basis as agreed to by the maintainers. Coordination of Zowe releases is led by the [CI/CD squad](https://github.com/zowe/community/tree/master/CI-CD/Meeting%20Minutes%20and%20Recordings), and all Zowe releases are to be approved by the ZLC.  Approval of the release will be done by vote on the [zowe-zlc@lists.openmainframeproject.org](mailto:zowe-zlc@lists.openmainframeproject.org) alias.  Votes will last 72 hours or until all current members of the ZLC have responded to the vote.

In addition, when a release containing binaries is completed a note will be sent to the current Director of the OpenMainframe Project informing them of the release so that they can log the release as being part of the LLC created as the owner of binary releases.


This project, just like all of open source, is a global community. In addition to The Linux Project's [Code of Conduct](https://events.linuxfoundation.org/code-of-conduct/), this project will:

* Keep all communication on open channels (mailing list, forums, chat).
* Be respectful of time and language differences between community members (such as scheduling meetings, email/issue responsiveness, etc).
* Ensure tools are able to be used by community members regardless of their region.

If you have concerns about communication challenges for this project, please contact the committers.

# Voting

Voting is the means of communicating and documenting community agreement in an area.  These areas could include new members, change in policies like build, DCO, or other community related obligations; as well as releases.


## Voting Lists
Votes are conducted on e-mail lists as appropriate.  Slack is not a substitute for voting at this time due to the ephemeral nature of the current contract.  To ensure communication is consistent please use the following e-mail aliases:

For ZLC Issues:  [zowe-zlc@lists.openmainframeproject.org](mailto:zowe-zlc@lists.openmainframeproject.org)
For Project Issues:  [zowe-dev@lists.openmainframeproject.org](mailto:zowe-dev@lists.openmainframeproject.org)
As a courtesy please copy: [zowe-user@lists.openmainframeproject.org](zowe-user@lists.openmainframeproject.org)

In the Subject line please include the prefix **[VOTE] - *repoName* - *description***.  This will enable users to quickly identify calls for action from information as well as easy filtering and awareness.

## Voting Duration
Due to the geographically distributed nature of the projects, Voting will be held open for 72 hours allowing all members an opportunity to express their vote.  If the voting members of the community ave all responded before the 72 hours have exprired, the vote may be tallied and closed.

## Binding versus non-Binding Votes
There are two types of votes.  **Binding** and **non-Binding**.  The **Binding** votes are cast by members of the community (comitters with write access to the repository who have made a contribution six [6] months prior to vote).  Only **Binding** votes are tallied.  **non-Binding** votes may be cast by Contributors and other community members and are intended to seek the collective perspective of the community.

## Expressing votes: +1, 0, -1 and fractions
 Votes are represented as numbers between -1 and +1, with '-1' meaning 'no' and '+1' meaning 'yes.'

The in-between values are indicative of how strongly the voting individual feels. Here are some examples of fractional votes and ways in which they might be intended and interpreted:

+0: 'I don't feel strongly about it, but I'm okay with this.'

-0: 'I won't get in the way, but I'd rather we didn't do this.'

-0.5: 'I don't like this idea, but I can't find any rational justification for my feelings.'

++1: 'Wow! I like this! Let's do it!'

-0.9: 'I really don't like this, but I'm not going to stand in the way if everyone else wants to go ahead with it.'

+0.9: 'This is a cool idea and i like it, but I don't have time/the skills necessary to help out.'

## Votes on Package Releases
Votes on whether a package is ready to be released use majority approval -- i.e. at least 51% of the current number of ZLC members must vote affirmatively for release, and there must be more positive than negative votes. **Releases may not be vetoed** Generally the community will cancel the release vote if anyone identifies serious problems, but in most cases the ultimate decision, lies with the individual serving as release manager. The specifics of the process may vary from project to project, but the 'minimum quorum of three +1 votes' rule is universal.
