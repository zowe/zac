Discuss runtime environments
  - Tomcat, Open Liberty, Liberty for z/OS
  
#z/OSMF "lite" 

#Mediation layer narrative 

#Access to z/OS instances for those who don't have Z 

#Metrics of the community 

#Do we want to help developers produce a common look-and-feel
Do we provide widgets to aid in item 1

#Do we want to provide reusable implementations of commonly needed features (such as grids, error dialogs, popup windows)
The above mentioned contributions are currently setup to include build output so developers can use the libraries without having to build. The drawback is that copyright/licensing information was being embedded in the build output, and we need to decide what is required for pre-built items from that perspective, then implement any required changes.

#The need to set up a commit process with identified approvers.

#Waffle and Zowe - Boards.
Socialize a possible integration between Waffle and Rally for CA teams. Any dissenting opinions allowing it?

#Zowe CLI And APIML Discussions on Open Channels
Zowe CLI and APIML are still pending open source contribution. Legal has approved discussinos on open channels for these products, so long as discussion remains within the domain of donated code. Any issues?

#Best approach for others to add agenda items / discussion for upcoming ZLC Meetings.

#What's our approach for deploying build artifacts?
Right now we use an artifactory server that is private access, and OMP has a SonarQube repository we could transition towards. What about build deliverables that go to NPM repositories - should we be publishing to the public npm registry (https://registry.npmjs.org/), or a public Maven repository? Any issues publishing to these open channels?

#Automation of the Developer Certificate of Origin flag on commits (-s)
Brief refresh - why don't we use a CLA?
What about GPG signing?
Are the above two considered larger impediments to contribution?

#Planned Donation of VSCode Plugin to Zowe
CA has a plugin for VSCode that allows for exploration of datasets interactively within Visual Studio, using brighside as its engine. We would like to donate this to Zowe / Open Source and publish this to the VSCode Marketplace with Zowe branding. What are the next steps / evaluations for this?

#Repository tagging so the project has a consistent tagging / mix of EBCDIC / ASCII

#Extended Community Contribution Guideline Discussions
Proposoal - "Community" repository containing guidelines for behavior and general best practices. Sub-directories for guidelines specific to language, and contribution guidelines per-repository for project-specific guidelines.
