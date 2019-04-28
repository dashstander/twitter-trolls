Sys.setenv("GCE_AUTH_FILE" = config::get("gce_auth_file"))

library(googleComputeEngineR)

project = gce_global_project(config::get("gce_project_id"))

vm <- gce_vm(template = "rstudio",
             name = "my-rstudio",
             username = "dstander", password = "o3i2u1y",
             predefined_type = "n1-highmem-2")
