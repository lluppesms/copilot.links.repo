## GitHub Copilot Initial Setup

Instructions for setting up a full GitHub EMU account, creating Enterprise Teams and onboarding Copilot only users. This set-up will not require GitHub Enterprise seats.
	
### Step 1:  Create GitHub Enterprise Managed User (EMU) Trial
- <a target="_blank" href="https://github.com/account/enterprises/new">Start here</a>
- <a target="_blank" href="https://docs.github.com/en/enterprise-cloud@latest/admin/concepts/identity-and-access-management/enterprise-managed-users">About Enterprise Managed Users</a>
- <a target="_blank" href="https://docs.github.com/en/enterprise-cloud@latest/admin/managing-iam/understanding-iam-for-enterprises/getting-started-with-enterprise-managed-users">Getting started with Enterprise Managed Users</a>
- You can configure authentication either by using OIDC set up or SAML. We recommend using OIDC which includes support for CAP.
- <a target="_blank" href="https://docs.github.com/en/enterprise-cloud@latest/admin/managing-iam/configuring-authentication-for-enterprise-managed-users/configuring-oidc-for-enterprise-managed-users#configuring-oidc-for-enterprise-managed-users">Configuring OIDC for Enterprise Managed Users</a>
- <a target="_blank" href="https://www.youtube.com/watch?v=OEUzMxQ5Hxs">Configure SSO for your GitHub Tenant</a> (Video)

### Step 2: Create Enterprise Teams
- <a target="_blank" href="https://docs.github.com/en/enterprise-cloud@latest/admin/managing-accounts-and-repositories/managing-users-in-your-enterprise/create-enterprise-teams">        Creating enterprise teams</a>

### Step 3:  Add an Azure Subscription
- <a target="_blank" href="https://www.youtube.com/watch?v=RY8_rEBTSVo">Add an Azure Subscription</a> (Video)
- <a target="_blank" href="https://docs.github.com/en/billing/how-tos/set-up-payment/connect-azure-sub#connecting-your-azure-subscription-to-an-organization-or-enterprise-account">Connecting your Azure subscription to an enterprise account</a>

### Step 4: Assigning GitHub Copilot Business licenses via Enterprise Teams.
- <a target="_blank" href="https://www.youtube.com/watch?v=In_bCzuCZ6o">Assign GitHub Copilot Licenses</a> (Video)


---

### Other Reference Links:

- <a target="_blank" href="https://devblogs.microsoft.com/all-things-azure/tutorial-videos-setting-up-github-copilot-for-your-company/">Tutorial Videos: Setting up GitHub Copilot for your Company | All things Azure</a>  
    > Great short video series covering the entire process
- <a target="_blank" href="https://learn.microsoft.com/en-us/entra/identity/saas-apps/github-enterprise-managed-user-tutorial#prerequisites">Configure a GitHub enterprise with Enterprise Managed Users for SAML Single sign-on with Microsoft Entra ID</a> (Microsoft Learn)
- <a target="_blank" href="https://learn.microsoft.com/en-us/entra/identity/saas-apps/github-enterprise-managed-user-provisioning-tutorial">Configure GitHub Enterprise Managed User for automatic user provisioning with Microsoft Entra ID</a> (Microsoft Learn)

---

### Tips:

Two new features (July 2026) for Copilot Enterprise admins to apply even more control where needed:

- <a target="_blank" href="https://github.blog/changelog/2026-07-01-enterprise-managed-settings-json-is-generally-available/">managed-settings.json</a> This lets the enterprise centrally define governance and policy for Copilot across the org — managed as code, in one place.
- <a target="_blank" href="https://github.blog/changelog/2026-07-01-enterprises-can-default-to-auto-model-selection/">Enterprises can now default to Auto model selection</a> Admins can set model to auto in the enterprise managed-settings.json to make Copilot's auto model selection the default for new conversations.