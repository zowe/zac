# ZLC Agenda - 11-13-19
**This is temporary boxnote for agenda until we re-establish the github meeting minutes (and prior meetings are documented). **



Nick, Matt and John M out on vacation 



1. **Based on email feedback there appears agreement to hold "special near-term election" for filling open seat on ZLC**

   1. Need John M back to oversee voting process 

   1. Joe W nominated by Matt 

   1. Nominations still open 

   1. Policy of 2 seats per Zowe founding company applies 

   1. Plan to revote ZLC seats in Feb 2020 still in place 

   1. Matt has not left the project - only the ZLC 

   1. Bruce running ZLC only as backup for Matt until new chair decided 

1. **Status of 1.7 release? **

1. **Do we need discussion of process for deciding on need of 1.8 release? **

   1. Follow up from last week discussion that monthly delivery may be too often - teams that don't have content for a release still need to do regression testing that diverts from their dev work. 

1. **Discussion of Backward Compatibility** [https://github.com/zowe/zlc/issues/152](https://github.com/zowe/zlc/issues/152)

   1. **Proposal**: Zowe declares an ‘n-1’ backwards compatibility guarantee for all major versions of Zowe.

      1. For any Zowe vX.Y release, adopters and extenders should expect their software/scripts to run without modification on Zowe v(X+1).Y .  

   1. **Alternate Proposal:** Zowe intends to reach an ‘n-1’ backwards compatibility guarantee, but does not yet declare it publicly. 

      1. Zowe 1.x -> Zowe 2.x will be the trial period by which we attempt to preserve backwards compatibility as if we declared it, but accept failure and take lessons forward with the intent to declare backwards support for Zowe 2.x -> Zowe 3.x.  

   1. **We do not have a formal deprecation strategy in Zowe,** and communicating API maturity and lifecycle is critical to extenders and adopters of Zowe. 

      1. Deprecation warnings for public-facing APIs should exist whether or not we declare backwards compatibility.

   1. **Relationship to Conformance**

      1. Developing a plugin or extension using a set of well defined framework APIs

      1. If we can say we have ‘n-1’ backwards compatibility, then conformant plugins know they will be ‘n+1’ compatible from an API perspective. 

      1. This means “Zowe 1.x certified, Zowe 2.x compatible”

1. **Status of Zowe Explorer naming discussion? **

   1. Name is public 

   1. Recommendation is to check with OMP that it meets their trademark usage rules 

1. **Quick update on Build/Test environment **

   1. Progress on install of ACF2/Top Secret 

   1. Marist looking for some high level time line of activity 

   1. We are on the way of having a 3 z/OS guests (one per security manager) 

1. **JWT testing status** 

   1. Do we have good understanding of what is needed to claim support and tagged as LTSR? 

1. Also - found a customer to help with MFA testing 

1. **Any update on hack-a-thon for 1Q2020 **

1. **Reminder to those involved in SHARE education - we need to nail down content and how/if we provide any hands on labs? **



