# The Valley — DOJ Applications

Standalone Department of Justice recruitment portal for The Valley Roleplay.

## Website
After GitHub Pages is enabled:
https://itsthevalleyrp.github.io/DOJ-APPLICATIONS/

## Setup
1. Open **Settings → Pages** in this repository.
2. Choose **Deploy from a branch**, branch **main**, folder **/(root)**, then save.
3. Run `supabase/doj_form_setup.sql` in the shared Supabase SQL Editor.
4. Add the DOJ Pages URL to Supabase Authentication → URL Configuration allowed redirect URLs if needed.

## Access
- Applicants sign in with Discord, submit an application, and view their own status.
- DOJ review access is intended for the DOJ Department Head and Command Team. Assign the matching DOJ-scoped roles.
- The portal uses the shared Valley application tables and RPCs and filters application records to the DOJ department.
- The frontend uses the Supabase publishable key only. Never put a service-role key in browser code.

The form setup SQL safely upserts only the DOJ form definition. It does not delete existing applications, roles, or audit records.
