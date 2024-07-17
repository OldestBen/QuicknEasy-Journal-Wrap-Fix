## QuicknEasy Journal Wrap Fix



## Overview

This repository contains two PowerShell scripts designed to fix journal wrap errors in Active Directory. Journal wrap errors can disrupt the normal replication process in a domain, and these scripts provide both authoritative and non-authoritative restore options to address the issue.
Scripts

  Journal Wrap Authoritative Restore.ps1: This script performs an authoritative restore to fix journal wrap errors.
  Journal Wrap Nonauthoritative Restore.ps1: This script performs a non-authoritative restore to fix journal wrap errors.

## Prerequisites

  PowerShell with administrative privileges.
  Appropriate permissions to perform Active Directory restores.
  Ensure you understand the implications of authoritative vs. non-authoritative restores before proceeding.

## Installation

  Clone the repository to your local machine:

 
```
git clone https://github.com/OldestBen/QuicknEasy-Journal-Wrap-Fix.git
```
Navigate to the repository directory:

```
cd QuicknEasy-Journal-Wrap-Fix
```
Usage
Authoritative Restore

Use the authoritative restore script if you want to forcefully update all other domain controllers with the state of the restored domain controller.

  Open PowerShell with administrative privileges.
  Run the authoritative restore script:


```
.\Journal Wrap Authoritative Restore.ps1
```

  Follow the on-screen prompts to complete the process.

Nonauthoritative Restore

Use the non-authoritative restore script if you want the restored domain controller to update itself with the state of other domain controllers.

  Open PowerShell with administrative privileges.
  Run the non-authoritative restore script:

```
.\Journal Wrap Nonauthoritative Restore.ps1
```
Follow the on-screen prompts to complete the process.
