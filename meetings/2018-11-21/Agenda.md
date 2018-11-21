__2018-11-21__

**ZLC Members**  
[X] Matt Hogstrom
[X] Bruce Armstrong  
[X] Jean-Philipe  
[ ] Sean Grady  
[X] Mark Ackert  
[X] Jean-Louis  
  
**Participants**  
[X] Joe Winchester
[X] Tim Brooks  
[X] Alvin Tan  
[X] Nick Kocsis  
[ ] John Mertic  - vacation
[ ] Kyle Woodworth  
[ ] Michael Supak  
[ ] Petr Plajanik  
[ ] Robert Penny  
[ ] John Davies  
[ ] Rob Scott  
[ ] Jordan Cain  
[ ] Jax Shawley  
[X] Simone Gregg
[X] Kimberly Andersson
  
## Recording can be found here:  

## Issues to be discussed on 11-21-2018

### Vote on these to move forward and close
Clarify Zowe release 1.0 date to officially be Tuesday January 22, 2019.  Reasons for the move are to allow time for better integration, improved security features, better positioning post 2018 which has low visibility due to the holidays.

Two issues.  The new license is intended for the Rocket WebSite.  Rocket intends to allow Zowe to incorporate the ZSS without granting redistribution rights to downstream consumers.

Jean-Louis, people cannot build on top of Zowe because of this limitation.  Rocket is actively open sourcing the ZSS and are optimistic that they will have code in December but cannot guarantee that date.  Jean-Louis believes that we should defer the date until we have the ZSS.  

Tim needs to confirm what the impacts would be for 1.0 and does the OMP have redistribution permissoin of ZSS ?  What new LICENSE / doc needs to be included.

Alvin, what is the default expectation and support scenarios.  

Three issues, support, redistribution and source code availability

Are we expecting downstream consumers to package and redistribute.  

Customers are expecting API compliance, support, etc.

Alvin was promoting.  Compliance suite needed to ensure compliance and REST API stability.  User interface standards.

Jean-Louis indicated that Brightside is not a CA Trademark.  All to review the current use of Brightside to see if there are any issues.

Bruce, for the next build (0.9.4).  Nick, it is targetted for the 12/5.  

Zowe 1.0 Release, Tuesday, January 22, 2019
[ ] Matt Hogstrom
[ ] Bruce Armstrong  
[ ] Jean-Philipe  
[ ] Sean Grady  
[ ] Mark Ackert  
[ ] Jean-Louis  

### Discuss
Review https://github.com/zowe/zlc/blob/release-guidance/process/ReleaseProcess.md and verify this meets the release expectations by the ZLC.  Pleae provide discussion notes in this Agenda for reference.

[Remove dependencies on non-EPL 2.0 Code bases in progress](https://github.com/zowe/zlc/issues/17)  
CA - all proprietary dependencies removed   
IBM - Explorer  

[Discuss - DB2 Plugin Dependencies in progress](https://github.com/zowe/zlc/issues/48)  

[EPL-2.0 Component for ZSS enhancement to do](https://github.com/zowe/zlc/issues/26)  
This is the current proposal for ZSS, still under discussion.  
  For ZSS, Rocket will host ZSS on their website with Rocket terms and conditions  
  Zowe would not ship the ZSS component and would need to go to Rocket  
  There are no redistribution rights for downstream consumers  
  Perpetual free use with no support  

### Updates    
[Achieve CII Best Practices badge in progress](https://github.com/zowe/zlc/issues/38)  
Mark getting the other projects to integrate with SonarQube for all requirements  

[Investigate Code Analysis Tools in progress](https://github.com/zowe/zlc/issues/46)  
  
[Zowe Docker Hub in progress](https://github.com/zowe/zlc/issues/45)  
Leave open until Docker images are in nexus  
  
["Built on Zowe" Website section](https://github.com/zowe/zlc/issues/41)  
Targetted for the 0.9.4 release  
  
[Zowe GA 1.0.0 Goals](https://github.com/zowe/zlc/issues/37)  
 - Added Tim Brooks and asked him to update this issue with the 1.0 items that have been discussed.  
 - Proposal to release 1.0 in January (last Tuesday) to allow more time for integration, performance and testing.  
  
[Agenda update for 09-05 zLC meeting](https://github.com/zowe/zlc/issues/18)  
Close  

[Zowe Conformance Program](https://github.com/zowe/zlc/issues/52)  - Update planned on 2018-11/14  
John will take this issue and we will defer this issue.  Needs to be completed prior to 1.0.  
  
[Review @brightside usages for GA to do](https://github.com/zowe/zlc/issues/28) - Update from John on progress  
  1.  Mandate if the work needs to be completed  
  2.  If (1) passes vote, then declare a timeframe for completion. 1.0.0 or can it be pushed after 1.0.0?  
  3.  CA Technologies still owns the trademark on Brightside.  
  Next step: John to engage LF legal and then work with contributoer legal departments to get consensus.  Update at next ZLC 12-3-2018  
  
### Actions  

Hogstrom to update and close this issue when he returns from travel.
[Research / Implement pre-receive hooks rejecting unsigned commits in progress review](https://github.com/zowe/zlc/issues/47)  
Merge this into master  
Review outstanding commits to ensure that we have all signoffs  

  
### Post 1.0 Activities  
[Process - Project Planning (PI Planning)](https://github.com/zowe/zlc/issues/40)  
[Open Source Development Metrics](https://github.com/zowe/zlc/issues/3)  

### Closed  
