# entando-init-busybox-cds
Repository to manage the configuration of the CDS init container based on busybox

## Environment Variables

| Name      | Default Value                                                  | Description                                                 |
|-----------|----------------------------------------------------------------|-------------------------------------------------------------|
| REPO_PATH | https://raw.github.com/entando-ps/cds/entando720/entando-data/ | The path of the GitHub repository used to store the archive |
| ARCHIVE_NAME | entando730.tar.gz                                              | The name of the archive containing all the Entando static resources |
| FORCE_CDS | false                                                          | Needed to force the overwriting of the volume | 
| PAUSE   | false                                                          | Used to stop the init-container execution for a specified amount of time | SUSPEND_TIME |     | Pause for number
| PAUSE_TIME |                                                                | Pause for number seconds(default value). `s[default], m, h, d` can be specified as suffix to express:                  |

- **3s** -> 3 seconds
- **3m** -> 3 minutes
- **3h** -> 3 hours
- **3d** -> 3 days




If `PAUSE` is true, then also `PAUSE_TIME` must be specified.
