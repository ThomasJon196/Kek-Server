# Source: https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/use_cases/ssh/#connect-to-ssh-server-with-cloudflared-access

# Setup

1. Add SSH-tunnel in cloudflare dashboard. Point domain to localhost:22
2. Install cloudflared on client & host
3. On client add `~/.ssh/config`:

```txt
Host ssh.example.com
ProxyCommand /usr/local/bin/cloudflared access ssh --hostname %h
```

4. SSH keys/password authentication
5. Connect via `ssh user@example.com
