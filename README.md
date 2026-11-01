# mail.a14n.net

Uses docker-mailserver for self-hosted email.

## Features

- ufw firewall
-

> ![warning]
> docker port mappings bypass ufw firewall rules.

### letsencrypt

Runs automatically in docker-mailserver but requires a persistent directory for certs.

Renewal hook reloads nginx to pick up new certs.

### node_exporter

Runs as a docker container. nginx provides TLS termination, provided by letsencrypt.

## Runbook

### Disaster recovery

DMS data is stored in `/mnt/data` on a dedicated Digital Ocean block volume. Digital Ocean snapshots are taken daily and expire after 7 days.

```
/dev/sda        /mnt/data       ext4    defaults,nofail,discard         0 0
```

UUID="f233651f-5eb5-4233-b6d9-c9376b04818a"
