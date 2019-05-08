# Zowe Roadmap

A document which provides insight into priority items being evaluated, discussed, and possibly implemented within Zowe. The Zowe Roadmap is not an official guarantee of delivery for any given item listed here nor does it exhaustively list items which may become part of Zowe.

## User-facing Items

### General Roadmap
* Refactor installation to leverage SMP/e. (cross-squad)
* SSO overhaul (cross-squad)

### Onboarding Roadmap
* Defining conformance criteria and benefits for Zowe extenders
* Zowe Application Directory / Marketplace

### CLI Roadmap
* TBD

### APIML Roadmap
* SSO Support
* TBD

### Zowe Application Framework Roadmap
* Swagger Documentation Support
* Java Services Support for Servlet Applications
* Searchable UI within the Desktop (Search through Applications)
* Editor refactor
* Internationalization samples in react and angular
* APIML Integration - Desktop running behind the APIML by default
* Multi-factor authentication support for desktop
* App-to-app communication overhaul for iframe applications.
* Java Services Support - Discovering Java Binaries dynamically
* API & URL Namespace modifications (breaking changes - to align across zowe)
* Application Packaging Updates
* Repository Structure Updates
* App Installation via Wizards Framework
* Library containerization mechanism - to support multiple versions of the same library in parallel
* Create Datasets Wizard
* Continued accessibility and internationalization enhancements

### Zowe Incubators Roadmap
* Evaluate FTP Plugin and if approved publish a deliverable
* Evaluate IMS REST APIs / IMS CLI Plugin and if approved publish deliverables

### Zowe Internal Roadmap
* Complete automation for normalized branch and version management
* Leverage new build infrastructure

### Tracking Potentially Breaking Changes
* (General) Refactor installation to leverage SMP/e. 
    - Notes: this does not create API breakage, but a complete overhaul of install/config/patch process should be considered within a major version revision.
* (General) SSO overhaul 
    - Notes: this may not create breakage
* (Zowe App Framework) API & URL Namespace modifications
    - Notes: breaking change which will require cross-squad alignment
* 
