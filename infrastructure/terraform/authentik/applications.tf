module "oauth2-grafana" {
  source             = "./oauth2_application"
  name               = "Grafana"
  icon_url           = "https://raw.githubusercontent.com/grafana/grafana/main/public/img/icons/mono/grafana.svg"
  launch_url         = "https://grafana.${module.secret_authentik.fields["cluster_domain"]}"
  description        = "Infrastructure Monitoring"
  newtab             = true
  group              = "Infrastructure"
  auth_groups        = [authentik_group.infrastructure.id]
  authorization_flow = resource.authentik_flow.provider-authorization-implicit-consent.uuid
  client_id          = module.secret_grafana.fields["oidc_client_id"]
  client_secret      = module.secret_grafana.fields["oidc_client_secret"]
  redirect_uris      = ["https://grafana.${module.secret_authentik.fields["cluster_domain"]}/login/generic_oauth"]
}
