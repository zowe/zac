# Zowe Organization Repositories

## About

This document aims to track any salient information about the subprojects within the larger Zowe organization. 



## Core Zowe Subprojects

### Zowe CLI Repositories
The following repositories are associated with the Zowe CLI subproject.

| Repository | Short Description | Included in Zowe Release? | 
| ---        | ---               | ---                  |
| [imperative](https://www.github.com/zowe/imperative) | Imperative CLI Framework | Yes |
| [vscode-extension-for-zowe](https://www.github.com/zowe/vscode-extension-for-zowe) | Visual Studio Code Plug-in for Zowe, which lets users interact with z/OS data sets on a remote mainframe instance. Powered by Zowe CLI. | No - Separate deployment |
| [zowe-cli](https://www.github.com/zowe/zowe-cli) | Zowe CLI | Yes |
| [zowe-cli-db2-plugin](https://www.github.com/zowe/zowe-cli-db2-plugin) | DB2 Plugin for the Zowe CLI | Yes |
| [zowe-cli-cics-plugin](https://www.github.com/zowe/zowe-cli-cics-plugin) | CICS Plugin for the Zowe CLI | Yes |
| [zowe-cli-sample-plugin](https://www.github.com/zowe/zowe-cli-sample-plugin) | Plugin Tutorial for Zowe CLI | No |
| [zowe-cli-profile-migration](https://www.github.com/zowe/zowe-cli-profile-migration) | Zowe CLI Profile Migration Tool | No |
| [zowe-cli-standalone-package](https://www.github.com/zowe/zowe-cli-standalone-package) | Jenkins pipeline which generates a Zowe CLI ZIP containing the base CLI and Zowe plugins.  | Yes - Creates deliverable |
| [zowe-cli-sample-scripts](https://www.github.com/zowe/zowe-cli-sample-scripts) | Demo scripts for the Zowe CLI | No |
| [perf-timing](https://www.github.com/zowe/perf-timing) | Performance tests  | No |
| [zowe-cli-version-controller](https://www.github.com/zowe/zowe-cli-version-controller) | Main controller and maintainer of the versioning scheme | No |
| [vscode-uss-extension-for-zowe](https://www.github.com/zowe/vscode-uss-extension-for-zowe) | An extension for VSCode that provides access to Unix System Services (USS) files  | No - Separate deployment |
| [zowe-cli-ims-plugin](https://www.github.com/zowe/zowe-cli-ims-plugin) | Zowe CLI Plug-in for IBM® Information Management System (IMS)™ | No - Incubation |
| [zowe-cli-ftp-plugin](https://www.github.com/zowe/zowe-cli-ftp-plugin) | Zowe CLI FTP Plugin | No - Incubation |


### Zowe Application Framework / Desktop Repositories
| Repository | Short Description | Included in Zowe Release? | 
| ---        | ---               | ---                  |
| [sample-angular-app](https://www.github.com/zowe/sample-angular-app) | null | Yes |
| [sample-iframe-app](https://www.github.com/zowe/sample-iframe-app) | null | Yes |
| [tn3270-ng2](https://www.github.com/zowe/tn3270-ng2) | A TN3270 emulator written in Angular and Javascript  | Yes |
| [vt-ng2](https://www.github.com/zowe/vt-ng2) | A simple USS/Unix/VT terminal emulator written in Angular and Javascript  | Yes |
| [zlux](https://www.github.com/zowe/zlux) | The top-level superproject for zLUX. zLUX includes the Zowe Desktop framework in addition to several built-in apps and an example server implementation. | N/A - superproject |
| [zlux-app-manager](https://www.github.com/zowe/zlux-app-manager) | zLUX Framework components for management of zLUX Apps. Used for window managers or web layouts. | Yes |
| [zlux-build](https://www.github.com/zowe/zlux-build) | Repository for common build scripts among various superprojects | No |
| [zlux-charts](https://www.github.com/zowe/zlux-charts) | null | Yes |
| [zlux-app-server](https://www.github.com/zowe/zlux-app-server) | A collection of build, deploy, and run scripts & configuration files for running a simple zLUX server. | Yes |
| [zlux-file-explorer](https://www.github.com/zowe/zlux-file-explorer) | null | Yes  |
| [zlux-file-properties](https://www.github.com/zowe/zlux-file-properties) | null | Yes |
| [zlux-grid](https://www.github.com/zowe/zlux-grid) | null | Yes |
| [zlux-ng2](https://www.github.com/zowe/zlux-ng2) | Angular Hosting Environment for the zLUX Framework's web components  | No |
| [zlux-platform](https://www.github.com/zowe/zlux-platform) | null | Yes |
| [zlux-server-framework](https://www.github.com/zowe/zlux-server-framework) |  Contains essential zLUX proxy server components including SSO and service catalogs | Yes |
| [zlux-shared](https://www.github.com/zowe/zlux-shared) |  zLUX framework components that are utilized both by the server and in the web browser | Yes |
| [zlux-widgets](https://www.github.com/zowe/zlux-widgets) | null | Yes |
| [zlux-workflow](https://www.github.com/zowe/zlux-workflow) | null | Yes |
| [zos-subsystems](https://www.github.com/zowe/zos-subsystems) | An example app showing z/OS infrastructure | No |
| [zosmf-auth](https://www.github.com/zowe/zosmf-auth) | Auth handler for App server to connect to z/OSMF through standard z/OSMF login | Yes |
| [zss-auth](https://www.github.com/zowe/zss-auth) | Auth handler for App server to connect to ZSS through standard ZSS login | Yes |
| [zlux-editor](https://www.github.com/zowe/zlux-editor) | A simple editor in a browser | Yes  |
| [file-transfer-app](https://www.github.com/zowe/file-transfer-app) | An App for transfering files to and from a mainframe | Yes |
| [sample-react-app](https://www.github.com/zowe/sample-react-app) | Sample to showcase a react app that natively can be presented into the Zowe desktop  | Yes |
| [db-browser](https://www.github.com/zowe/db-browser) | A database viewer and editor for working with a variety of databases within the Zowe Desktop | Yes |
| [db-browser-db2](https://www.github.com/zowe/db-browser-db2) | db2 module for db-browser App for Zowe | Yes |
| [jupyter-app](https://www.github.com/zowe/jupyter-app) | A Zowe App for displaying Jupyter | No |
| [zss](https://www.github.com/zowe/zss) | Zowe Secure Services Server for enabling low-level microservices  | Yes |
| [zowe-common-c](https://www.github.com/zowe/zowe-common-c) | C Libraries for various OS & Networking needs  | Yes |


### Zowe API Mediation Layer Repositories
| Repository | Short Description | Included in Zowe Release? |
| ---        | ---               | ---                  |
| [api-layer](https://www.github.com/zowe/api-layer) | Zowe API Mediation Layer | Yes |
| [spring-boot-jzos-sample](https://www.github.com/zowe/spring-boot-jzos-sample) | An example of a Spring Boot sample to be statically linked into the API Gateway  | No |
| [sample-spring-boot-api-service](https://www.github.com/zowe/sample-spring-boot-api-service) | Sample REST API service that integrates with Zowe API Mediation Layer  | No |


## Additional Zowe Subprojects

### Zowe IMS Repositories
| Repository | Short Description | Included in Zowe Release? |
| ---        | ---               | ---                  |
| [ims-operations-api](https://www.github.com/zowe/ims-operations-api) | null | No - Incubation |

### Zowe REST API Extensions

| Repository | Short Description | Included in Zowe Release? |
| ---        | ---               | ---                  |
| [explorer-jes](https://www.github.com/zowe/explorer-jes) | null | Yes |
| [explorer-mvs](https://www.github.com/zowe/explorer-mvs) | null | Yes |
| [explorer-uss](https://www.github.com/zowe/explorer-uss) | null | Yes |
| [orion-editor-component](https://www.github.com/zowe/orion-editor-component) | null | Yes |
| [jobs](https://www.github.com/zowe/jobs) | Repo for the jobs api controller and code | Yes |
| [explorer-api-common](https://www.github.com/zowe/explorer-api-common) | common repo for explorer api projects | Yes |
| [explorer-jes-fvt](https://www.github.com/zowe/explorer-jes-fvt) | Functional tests for jes explorer | No |
| [explorer-ui-server](https://www.github.com/zowe/explorer-ui-server) | Simple HTTPS web server, used by explorer UI plugins | Yes |
| [data-sets](https://www.github.com/zowe/data-sets) | Repo for the springboot based data set APIs | Yes |

## Organizational Repositories
These repositories are used by the entirety of the Zowe Organization, and do not fall within the scope of a specific subproject.

| Repository | Short Description | Included in Zowe Release? | 
| ---        | ---               | ---                  |
| [ZLC](https://www.github.com/zowe/zlc) | Zowe Leadership Committee collaboration | No |
| [Zowe Documentation [docs-site]](https://www.github.com/zowe/docs-site) | Documentation for the Zowe project | No |
| [Release](https://www.github.com/zowe/release-management) | Material and activities related to release management | No | 
| [zowe-install-packaging](https://www.github.com/zowe/zowe-install-packaging) | Packaging repository for the Zowe install scripts and files | No |
| [zowe-install-test](https://www.github.com/zowe/zowe-install-test) | Perform Zowe installation and smoke test | No |
| [workshop-starter-app](https://www.github.com/zowe/workshop-starter-app) | An App to provide at the start of a workshop session to showcase Zowe App development & App-to-App communication | No |
| [workshop-user-browser-app](https://www.github.com/zowe/workshop-user-browser-app) |  Starter files & a tutorial README to get started on building a simple Zowe App | No |
| [webui-scenarios](https://www.github.com/zowe/webui-scenarios) | Several sample projects that create WebUI's that integrate into Zowe | No |
| [community](https://www.github.com/zowe/community) | Community Engagement - Contribution Guidelines, Meeting Minutes, and more | No |
| [zowe.github.io](https://www.github.com/zowe/zowe.github.io) | Testing GitHub Pages for Community WebSite as an Alternative to Wordpress | No |
| [zowe-promote-publish](https://www.github.com/zowe/zowe-promote-publish) | Zowe Pipeline to Promote and Publish a PAX Candidate | No |
| [blog](https://www.github.com/zowe/blog) | null | No |
| [jenkins-library](https://www.github.com/zowe/jenkins-library) | Jenkins Pipeline Library | No |
| [Onboarding-scripts](https://www.github.com/zowe/Onboarding-scripts) | Template scripts for extenders to onboard their products with   | No |
| [jenkins-slave-images](https://www.github.com/zowe/jenkins-slave-images) | null | No |
| [ztrial-scenarios](https://www.github.com/zowe/ztrial-scenarios) | This repo tracks the zTrial scenarios for Zowe. | No |
| [cpu_usage_sample](https://www.github.com/zowe/cpu_usage_sample) | An example of a Spring Boot application | No |
| [sample-node-api](https://www.github.com/zowe/sample-node-api) | A sample node js api for finding cars and accounts for a dealership | No |
| [sample-trial-react-app](https://www.github.com/zowe/sample-trial-react-app) | Sample React App | No |
| [sample-trial-app](https://www.github.com/zowe/sample-trial-app) | null | No |
| [ztrial-sample-cli-plugin](https://www.github.com/zowe/ztrial-sample-cli-plugin) | null | No |
| [jenkins-library-fvt-nodejs](https://www.github.com/zowe/jenkins-library-fvt-nodejs) | A node.js example project for testing zowe/jenkins-library | No |
| [ci-management](https://www.github.com/zowe/ci-management) | Management repository for Jenkins CI | No |
| [jenkins-library-fvt-gradle](https://www.github.com/zowe/jenkins-library-fvt-gradle) | A gradle example project for testing zowe/jenkins-library | No |

## Archived Repositories

These repositories are no longer in active development and are marked as read-only.

| Repository | Short Description | 
| ---        | ---               | 
| [explorer-model](https://www.github.com/zowe/explorer-model) | The Explorer server model project |  
| [explorer-server](https://www.github.com/zowe/explorer-server) | Explorer Server component contribution |  
| [explorer-server-tests](https://www.github.com/zowe/explorer-server-tests) | Explorer Server Tests |  
| [explorer-utilities](https://www.github.com/zowe/explorer-utilities) | Explorer shared utilities project |  
| [explorer-server-auth](https://www.github.com/zowe/explorer-server-auth) | null | 
| [explorer-injector](https://www.github.com/zowe/explorer-injector) | null | 
| [explorer-wlp-packaging](https://www.github.com/zowe/explorer-wlp-packaging) | null | 
| [docs-site-temp](https://www.github.com/zowe/docs-site-temp) | null | 








