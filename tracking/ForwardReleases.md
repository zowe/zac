# Zowe Forward Release Strategy

The Zowe project and its sub-projects may have a new major release version that is ready for user validation, but not ready to replace the prior LTS version posted on zowe.org. 

The zowe.org website should present this new version to the user as "Current", while the previously released major version (LTS) should be selected and presented by default.

## User Experience

Sample flow:

On the zowe.org/download page -

-----------------------------------------------

 **LTS Zowe v1.x**  (hyperlink active while Current selected)   |  Current Zowe v2.x (hyperlink active while LTS selected)               

 The latest version of Zowe v1.x is: v1.2.0.
 (Optional) The community support period for Zowe v1.x is: <>. Commercial support periods may extend beyond this. 

 ...Regular download flow / How to get started flow

-----------------------------------------------

 LTS Zowe v1.x   |  **Current Zowe v2.x**  

 The latest version of Zowe v2.x is: v2.0.0-alpha.1.
 (Optional) Support statement.... Zowe v2.x is supported by the community for ..time period.. after it is officially released. Commercial support periods may extend beyond this.

 ...Regular download flow / How to get started flow


 -----------------------------------------------

 In the future, will we have the below? 

 LTS Zowe v1.x | LTS Zowe v2.x | **Current Zowe v3.x**

 Should we avoid this by major release cadence being strictly controlled? Once per year? Enforced by the ZLC?


-----------------------------------------------

At the bottom of the zowe.org download page, should we present nightly builds? Provides bleeding edge code for anyone interested.

### Partial Releases

For future versions of Zowe (Zowe v2.x in the above example), it will be acceptable to release one component (CLI vs z/OS) and not the other. If one component is unavailable, then it should be clearly presented as unavailable at this time with a greyed out button and short message.

## Changes required May '19

Docs-site must be able to support future releases. There is a "Versions" dropdown in the upper right corner of the webpage that may be suitable for this. Links for any given Zowe version presented on zowe.org must link to the correct version of the documentation.

We need to follow proper release process for binaries delivered as forward versions, and we must submit all associated materials to LF/OMP (upload terms, sources, etc.).
