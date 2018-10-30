Reference issue #37: https://github.com/zowe/zlc/issues/37

General Functionality

- SSO 
  - Single Sign-on support, when you log into any part of Zowe (i.e. the desktop), you don't have to get challenged again for passwords

- Multi-Factor Authentication
  - At least one use has stated that "basic authentication is an inhibitor to installing Zowe." Others have said that MFA is a must have before they use it. I think this is for the ZLI as well as the WebUI/REST APIs
  
- SCM and Maven Support
  - See issues submitted by peter: https://github.com/zowe/community/issues/12 and https://github.com/zowe/community/issues/13
  
- Extensibility
  - There are no licensing restrictions and the framework can be extended and new apps/components can be added
  - All supporting documentation, tutorials and samples are available

- Convience Build Available
  - Users can easily install and use Zowe
  - People have access to source code and can make their own deployments
 
 
 Daily Developer Use Cases
  - Web UI
    - A mainframe application developer can see which static test environments are available and access subsystems via a task manager/subsystem explorer
    - A mainframe app management developer can build a dashboard from scratch to see Zowe app status
    - A mainframe app management developer can build a dashboard using an existing web app (as iFrame) to see Zowe app status
    - A distributed web services developer can understand what is behind the mainframe web services
  - CLI
    - A mainframe app developer can use Zowe CLI to access source code on the mainframe through a SCM
    - A mainframe app developer access datasets that reside on the mainframe
    - A mainframe app developer can see which static test environments and subsystems are available via task manager APIs
    - A mainframe app developer can provision his own test environments
    - A mainframe app developer can write their own automated tests that are based in either javascript, python or other
    - A mainframe app developer can use familiar open source, free or commercial tools and develop scripts
    - A distributed DevOps engineer and continuous delivery guru can produce 100% automated delivery orchestration with mainframe applications
    - A distributed DevOps engineer and continuous integration guru can produce 100% automated integration orchestration with mainframe applications
    - A distributed web app developer can test and deploy an application on z/OS
  -API
    - A mainframe app developer can access z/OS files through a REST API including where an SCM is used
    - A mainframe app developer can access JES APIs
    - A mainframe app management developer can expose subsystem APIs through a task manager/sub-system explorer to build a dashboard for app status
    - A mainframe app developer can view and access available APIs through a Swagger catalog
    - The mainframe app developer can access the APIs through a single HTTPS endpoint (API Gateway)
    - A mainframe app developer can expose and discover APIs for automated testing
    - A mainframe app management developer can route APIs through the Zowe mediation layer catalog for app development








