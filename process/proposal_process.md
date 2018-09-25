# Zowe Sub-Project Proposal Process

Based on the [CNCF Project Proposal Process v1.1](https://github.com/CNCF/toc/blob/40abe6f81c2b46842a87d6c47cf4190f0d8c1856/process/project_proposals.adoc)

## Introduction

This governance policy sets forth the proposal process for sub-projects to be accepted into Zowe. The process is the same for both existing projects which seek to move into Zowe, and new projects to be formed within Zowe.

## Sub-Project Proposal Requirements

Projects must be proposed via a Zowe Leadership Committee (ZLC) issue to [https://github.com/zowe/zlc/issues](GitHub) with the "enhancement" label. Project proposals submitted to the ZLC must provide the following information to the best of your ability:

* Name of project (must be unique within Zowe)
* Project description (what it does, why it is valuable, origin and history)
* Statement on alignment with Zowe mission
* Sponsor from ZLC (sponsor helps mentor projects)
* License and contribution guidelines (Zowe project requires code contributions to Zowe are to be made under the [Eclipse Public License 2.0 (EPL-2.0)](https://spdx.org/licenses/EPL-2.0.html) and all non-code contributions are to be made under the [Creative Commons Attribution 4.0 International license (CC-BY-4.0)](https://spdx.org/licenses/CC-BY-4.0.html) unless otherwise approved by the Open Mainframe Project Governing Board, having each committer agree to the [DCO](https://developercertificate.org/)
* Review the [Zowe License and Copyright Guidence] (https://github.com/zowe/zlc/blob/master/process/LicenseAndCopyrightGuidance.md)
* Source control (GitHub by default)
* External dependencies (including licenses)
* Initial committers (how long working on project)
* Infrastructure requests (CI / OMP Cluster)
* Communication channels (slack, irc, mailing lists)
* Issue tracker (GitHub by default)
* Prefered maturity level (see Zowe Graduation Criteria below)

## Project Acceptance Process

* Projects are required to schedule and present their proposal at a ZLC meeting (https://lists.openmainframeproject.org/g/zowe-dev/calendar)
* Projects get accepted via a 2/3 supermajority vote of the ZLC
* All projects must adopt the OMP [Code of Conduct](code_of_conduct.md).
* All projects agree to transfer any relevant trademarks to ZLC and to assist in filing for any relevant unregistered ones. This assignment will be reversed if the project does not remain in the ZLC, as described below. Note that no patent or copyright assignment is necessary because the [Eclipse Public License 2.0 (EPL-2.0)](https://spdx.org/licenses/EPL-2.0.html) provides sufficient protections for other developers and users.
* All projects start at the Incubation stage by default unless the ZLC approves otherwise.

# Zowe sub-project Graduation Criteria

Every Zowe sub-project has an associated maturity level. Proposed Zowe projects should state their preferred maturity level. When a ZLC vote is held on a proposed sub-project entering Zowe, votes may either be for the project to enter as an Incubation or Active Stage sub-project, or not to enter at this time. A two-thirds supermajority is required for a sub-project to be accepted. If there is not a supermajority of votes to enter as a Active Stage sub-project, then any Active Stage votes are recounted as votes to enter as an Incubation Stage sub-project. If there is not a supermajority of votes to enter as an Incubation Stage sub-project, the project is rejected. This voting process is called fallback voting.

Projects of all maturities have access to all resources listed at [https://openmainframeproject.org/projects](https://openmainframeproject.org/projects) but if there is contention, more mature projects will generally have priority.

## Incubation Stage

To be accepted to the Incubation Stage, a sub-project must submit a ZLC issue [https://github.com/zowe/zlc/issues] and complete the proposal requirements listed above.

Every 12 months, each Incubation Stage sub-project will come to a vote with the ZLC. A supermajority vote is required to renew a sub-project at Incubation Stage for another 12 months or move it to active stage. If there is not a supermajority for any of these options, the sub-project is not renewed.

Incubation sub-projects may request to graduatte from the Incubation Stage ahead of the 12 month review timeline with a reccomendation from the sponsoring ZLC member.

In the case of an Incubation Stage sub-project that is not renewed with Zowe, the trademark will be returned to the project maintainers or an organization they designate.

## Active Stage

To graduate from Incubation Stage, or for a new sub-project to join as an Active Stage project, a sub-project must complete the listed above plus:

* Have committers from at least two organizations.
* Meets the Zowe achitectural and design guidelines. 
* Passes Zowe integration test [https://github.com/zowe/zowe-install-test]
* Provide appropriate documentation
* Receive a supermajority vote from the ZLC to move to accepted stage.

Sub-projects start at the Active Stage if they can demonstrate sufficient maturity. Sub-projects can remain in an Incubation Stage indefinitely, but they are normally expected to move to Active Stage within two years.

## Emeritus Stage

Sub-projects, like products have lifecycles, and often in open source the relevance for a given sub-project over time can dimenish. Nonetheless, having a home for sub-projects no longer recieving active development is crucial for long-term sustainability and asset management.

Sub-projects only can enter the Emeritus Stage by either:

* On request from the sub-project itself, requiring a supermajority votes of all active sub-project committers
* By a supermajority vote of the ZLC if there has been insufficent activity in the sub-project over the course of 6 months.

When in the Emeritus Stage, the sub-project's code repository adminstration is transfered to a designated individual by the ZLC. No new features or bug fixes will be addressed, unless it is deemed a security issue. Open Mainframe Project and Zowe will hold all assets in perpetuity.
