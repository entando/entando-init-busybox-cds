# entando-init-busybox-cds
Repository to manage the configuration of the CDS init container based on busybox

## Environment Variables

| Name      | Default Value                                                  | Description                                                 |
|-----------|----------------------------------------------------------------|-------------------------------------------------------------|
| REPO_PATH | https://raw.github.com/entando-ps/cds/entando720/entando-data/ | The path of the GitHub repository used to store the archive |
| ARCHIVE_NAME | entando720.tar.gz | The name of the archive containing all the Entando static resources |
| FORCE_CDS | false | Needed to force the overwriting of the volume | 



