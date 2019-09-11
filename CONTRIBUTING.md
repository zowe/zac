Ensuring a clean code pedigree and lineage is critical to downstream adoption of open source code in industry.

Zowe requires the use of the [Developer’s Certificate of Origin 1.1 (DCO)](https://developercertificate.org/), which is the same mechanism that the [Linux® Kernel](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n416) and many other communities use to manage code contributions. The DCO is considered one of the simplest tools for sign offs from contributors as the representations are meant to be easy to read and indicating signoff is done as a part of the commit message.

Here is an example Signed-off-by line, which indicates that the submitter accepts the DCO:

<code>Signed-off-by: John Doe <john.doe@hisdomain.com></code>

You can include this automatically when you commit a change to your local git repository using <code>git commit -s</code>. You might also want to leverage this [command line tool](https://github.com/coderanger/dco) for automatically adding the signoff message on commits.

### Signoff for commits where the DCO signoff was missed

When bringing in a code repository for the first time, or commits done before the DCO checks are enabled, there would be a series of commits that don't include the sign-off statement. You can retroactively signoff commits you've made by make a commit with your DCO signoff that contains a new text file ( suggested name is dco_signoffs/past_commits_*name*.txt ) with the following contents:

````
I, <author_name> hereby sign-off-by all of my past commits to this repo subject to the Developer Certificate of Origin (DCO), Version 1.1. In the past I have used emails: <emails>

<COMMIT HASH> <COMMIT MSG>
...
````

Each user who has made the past commits should have thier own <code>Signed-off-by:</code> line in the commit message.
