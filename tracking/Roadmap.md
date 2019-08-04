# Zowe Roadmap

A document which provides insight into priority items being evaluated, discussed, and possibly implemented within Zowe. The Zowe Roadmap is not an official guarantee of delivery for any given item listed here nor does it exhaustively list items which may become part of Zowe.

## General Roadmap
* High Availability / Sysplex enablement
* Refactor installation to leverage SMP/e. (cross-squad)
* SSO overhaul (cross-squad)
* Contribute Java REST API SDK and Sample to enable onboarding of mainframe APIs

## Onboarding Roadmap
* Defining conformance criteria and benefits for Zowe extenders
* Zowe Application Directory / Marketplace

## Including Z Ports
* Include zos USS ports to improve compatibiity and useability of Zowe and other projects.

## CLI Roadmap
#### Shorter-term
* Change references from @brightside to @zowe in Zowe CLI, Imperative, and all plugins.
* Contribute the IMS CLI Plugin to Zowe
* Define Zowe CLI conformance criteria
* Allow users to interact with USS files in the VS Code extension
#### Longer-term
* TBD

## APIML Roadmap
#### Shorter-term
* Define Zowe API conformance criteria
* Extend API ML authentication service for additional Zowe SSO requirements
* Onboard Zowe services with API ML
* Integrate Zowe services with SSO
* Extend APIs as requested by Zowe
#### Longer-term
* TBD

## Zowe Application Framework Roadmap
#### Shorter-term
* Swagger Documentation Support
* Java Services Support for Servlet Applications
* Searchable UI within the Desktop (Search through Applications)
* Editor refactor
* Internationalization samples in react and angular
* APIML Integration - Desktop running behind the APIML by default
#### Longer-term
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

## Zowe Incubators Roadmap
* Evaluate FTP Plugin and if approved publish a deliverable
* Evaluate IMS REST APIs / IMS CLI Plugin and if approved publish deliverables

## Zowe Internal Roadmap
* Complete automation for normalized branch and version management
* Leverage new build infrastructure

## Tracking Potentially Breaking Changes
* (General) Refactor installation to leverage SMP/e. 
    - Notes: this does not create API breakage, but a complete overhaul of install/config/patch process should be considered within a major version revision.
* Installation scripts, packaging that allows partial-zos as alternative option to all-zos install
* (General) SSO overhaul 
    - Notes: this may not create breakage
* (Zowe App Framework) API & URL Namespace modifications
    - Notes: breaking change which will require cross-squad alignment
    - https://github.com/zowe/zlux-server-framework/issues/44
* 
* Make zlux "root services" into bonafied plugin services from external view (/unixfile, /auth, etc)
* Reorganize ui framework's uribroker parameters as needed
* Alter service headers for better security as needed
    * content disposition
    * framing
* Resolve any shortcomings on reserved characters in ID and resource strings (:,_,., etc)
* Make directories that should be read-only actually read-only
    * zlux&zss /deploy/product
    * app install directories
* Change any unauthenticated APIs to authenticated or semi-authenticated APIs as needed
    * zlux /plugins
* Change ui framework's html element IDs to start with "org-zowe" as needed
* Library updates as needed
    * Angular 6->8?
    * Typescript?
    * Webpack?
    * JQuery?
* Removal of bootstrap from web ui base
    * Apps must include as needed
