## Zowe Backups

See https://github.com/zowe/zlc/issues/178 for background.

This document details current backups methods used by the Zowe community, and to identify any gaps that may exist.

### Source Code Backups

Source code is not backed up outside of Github. Github provides mechanisms for restoring the source code to a given state, but does not provide backup capabilities outside redundant storage architecture for data at rest. 

This is a possible gap, though, as far as I can tell, Github has never had an event with widespread data loss. We can still investigate [Github's article on backups](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/backing-up-a-repository).

### Binary Artifact Backups

Binary Artifacts (i.e., component releases, Zowe releases) are  backed by Artifactory cloud. The Artifactory cloud solution has an internal backup and restore procedure, [documented here](https://jfrog.com/knowledge-base/how-backup-works-for-artifactory-cloud/).

For Zowe artifacts which we provide on Zowe.org (Convenience PAX, SMP/e, CLI Core/Plugin ZIP), these artifacts are  cloned into Amazon S3, and can be restored from Artifactory.

All binary artifacts produced by Zowe can additionally be recreated from a source code snapshot.

### Infrastructure Backups

There are a few areas of infrastructure for Zowe:

* z/OS Build Environments
* Jenkins Build Environment
* Zowe websites: zowe.org and docs.zowe.org.

##### z/OS Build Environment

There are two parts to our z/OS build environments, zD&T and z/OS guests. Our zD&T is available as an image which can be redeployed at any point in time. Image storage is unknown; vendor internal. Our z/OS guests hosted by Marist do have snapshot backups, but I do not believe they are regularly created. We should work with Marist to determine if we can automatically snapshot the guests periodically. Loss of z/OS guests would vary in severity based on which guest(s) were lost. 

##### Jenkins Build Environment

There are two Jenkins build environments currently in use by Zowe, and two aspects to Jenkins backups.

First, we have two Jenkins environments: wash.zowe Jenkins and LinuxFoundation Jenkins (jenkins.zowe). The wash.zoweJenkins system is backed up periodically to Github. The LinuxFoundation Jenkins system is backed up by Linux Foundation team's process.

Second, the Jenkins builds themselves. Jenkins builds in Zowe use declarative or scripted pipelines on the whole, and are stored as code in Github - so they are subject to that backup solution. There are a few builds defined directly within Jenkins itself, and those backups are included in the Jenkins system backup. 

##### Zowe Websites

Both Zowe websites, zowe.org and docs.zowe.org, are stored as source code in Github, and deployed by Jenkins jobs. Therefore, both sites are backed up via Jenkins backups and Github source backups.

### Odds and ends

Zowe Sample Code. This code is present in Github, and is covered by Github source backups.
Community documentation - box, google docs, other? Github 