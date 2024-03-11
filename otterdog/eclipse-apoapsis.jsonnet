local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-apoapsis') {
  settings+: {
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "",
    name: "Apoapsis project",
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('ort-server') {
      allow_auto_merge: true,
      allow_squash_merge: false,
      has_wiki: false,
    },
  ],
}
