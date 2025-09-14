# Week 1 - Foundation \& Setup



📅 Monday 9/8/2025



Today was the beginning of my self-taught journey. I am using several different resources to assist me in this endeavor:



Textbooks: SC-200, AZ-500



Udemy



Microsoft Learn



Whizlabs



YouTube



✅ Achievements:



Created my first GitHub account and repository.



Built the initial file/folder structure and starter scripts.



This was originally scheduled for Wednesday, but I got ahead of schedule.



📅 Tuesday 9/9/2025



Today I created:



A Resource Group (RG)



A Network Security Group (NSG)



A Windows 11 Virtual Machine (VM)



📸 Evidence:



Screenshots were collected (to be cleaned up/redacted before upload).



📖 Progress:



Over halfway through the SC-200 course.



There are 17 practice exams; I plan to start tomorrow.



Notes taken so far are improving my understanding of Microsoft Sentinel.



Excited to deploy Sentinel in a lab and start building tasks/playbooks.



📅 Wednesday 9/10/2025



Installed and set up GitHub Desktop.



Created all repository folders.



Kept daily notes of progress.



Plan: consolidate these notes on Saturday and upload them into their respective folders.



📅 Thursday 9/11/2025



(May we NEVER forget – 9/11/01)



PowerShell Preparation



Today I prepared my PowerShell environment by downloading and installing modules:



Az



Primary Azure module for managing RGs, VMs, NSGs, Key Vault, etc.



Replaces older AzureRM.



Microsoft.Graph



Needed for Microsoft 365 \& Azure AD tasks (Conditional Access, users, groups, roles).



Replaces older AzureAD \& MSOnline.



ExchangeOnlineManagement (optional)



For Exchange Online and email/phishing lab automation.



Defender / Security \& Compliance



Enables security automation and investigation cmdlets.



Code Used (Run as Administrator)

\# Update PowerShellGet if needed

Install-Module PowerShellGet -Force -AllowClobber



\# Install core Azure module

Install-Module -Name Az -Repository PSGallery -Force



\# Install Microsoft Graph module

Install-Module -Name Microsoft.Graph -Repository PSGallery -Force



\# Optional: Exchange Online for M365 security work

Install-Module -Name ExchangeOnlineManagement -Repository PSGallery -Force



Import into Session

Import-Module Az

Import-Module Microsoft.Graph

Import-Module ExchangeOnlineManagement



Results



✅ Clobber already installed.



✅ Az module from PSGallery installed successfully.



✅ Microsoft Graph installed successfully after reinstall.



Needed to adjust scope:



Install-Module Microsoft.Graph -Scope CurrentUser -Repository PSGallery -Force





Verified by testing connections:



Connect-AzAccount



Connect-MgGraph



📖 Lesson Learned: Sometimes you must install modules at the CurrentUser scope instead of AllUsers depending on permissions.

