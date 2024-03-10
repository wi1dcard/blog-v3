---
title: "Docker in IPv6-Only Network"
date: 2024-03-10T14:26:50+08:00
---

Recently I've been using Hetzner Cloud with IPv6 only. I installed Docker and deployed some services. With the default settings of Docker, containers cannot access the IPv6 only network on the host.

The reason is that Docker daemon would normally just assign a IPv4 private CIDR. However, enabling IPv6 is relatively easy. Edit your `/etc/docker/daemon.json`:

```json
{
  "ipv6": true,
  "fixed-cidr-v6": "fd00:db8:1::/64",
  "experimental": true,
  "ip6tables": true,
  "default-address-pools": [
    { "base": "172.17.0.0/16", "size": 16 },
    { "base": "172.18.0.0/16", "size": 16 },
    { "base": "172.19.0.0/16", "size": 16 },
    { "base": "172.20.0.0/14", "size": 16 },
    { "base": "172.24.0.0/14", "size": 16 },
    { "base": "172.28.0.0/14", "size": 16 },
    { "base": "192.168.0.0/16", "size": 20 },
    { "base": "fd00:db8::/104", "size": 112 }
  ]
}
```

Then set IPv6 in `docker-compose.yaml`:

```yaml
networks:
  default:
    enable_ipv6: true
```

Done!

Reference: <https://docs.docker.com/config/daemon/ipv6/>
