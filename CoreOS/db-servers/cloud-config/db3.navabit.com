#cloud-config

ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC641Tabto5333cceSZftvqibRr9OhbP0IPv+gqRo9OdED7shWhA2XuWqQnIok8yv0Wimi+CZ00tVbkZHA27NObDQnX/KZ2ntIuM9VY6Io+K40RbN2UFHwgC8v3PyMPTCiQuriFT9whtAEOY4biqiN6X38G80g6Y3qXXlD/IkZXrOao+0m9aMNrxWhWP1Q5whZoxeeOY0DBGiLgAfIqtV9gAttehWWND41kv8QMi5p1rDjuowM7cG1YbbuwEXDV1tOb99Pz/LFebWE6arPYkM3C2P/kDuQX1EmT6GnN2uIu0FgoNkj7zykqr5YbDKnjwDKk9GpsfWCx8buIu+bYJh9D gkan
  - ssh-rsa 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
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgPYlaLm3WXWmsQJ4jJ9E2PLK7mynuDgF6CoRmCv/XlcHMY2MgrMHRdYjXBXlS77xhsD0i9xjtXSoIi+2QLodllka6Zm4xXAuPq23tV5GK8ronVMbUs4EWvH+lnyQ+hjYw4gHed2u9Evwdh4yNRqb8tcuCBz2xFlXOitButgK5CJZn0LebgutqLzhWM6pctg6UMr9kWfqeATE1H5W0+mvSJXtbzYiNQCevzaJ676a04F1P3jVLoeyE9pqX6A+Wr6gngj+XbMqMiAwV9kAPc1Mo0OHixF/ZmH2DWYJ8wmr/1enQkTY/gVK0UTtPSyMYw9ss7VGUC+pNQUEOdxD3GhBJ styles@styles-desktop
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWCV0IbLAh+Lh8/gGsV6Qrs+4A2Yvwex8vEm8tPLLMdqNNF3L6vLTsAmGOUOk6YrdJQx0PV0zN09Bi/MrH/EsEMNRNO+qggPkLim0BAmUmcoROd3GQdHWF/BpgT7lwz80MqzlW+HMwzKgaax/tE3SxycdCgATvk8WGWVvlKtv6ahFn0moIstOFzFAuJiI5XHqWLCVHBDd0xHZ3Fv6qPkX9X9qb2G1ys29uScU1PGnVwPbwkrP1JcBwos/rUW4EPD3L3ONfWpilXoN8ljzbldxgdP7pbTOKvXUhZ4gK5RxWxbXOLWgYg53EZk81j5zcw947pE99oOXwYCN5m8urwzdD styles@styles-laptop

write_files:
  - path: /etc/systemd/system/fleet.socket.d/30-ListenStream.conf
    owner: root:root
    permissions: 0644
    content: |
      [Socket]
      ListenStream=0.0.0.0:49153

  - path: /run/systemd/system/etcd.service.d/30-certificates.conf
    permissions: 0644
    content: |
      [Service]
      # Client Env Vars
      Environment=ETCD_CA_FILE=/home/core/ca.crt
      Environment=ETCD_CERT_FILE=/home/core/key.crt
      Environment=ETCD_KEY_FILE=/home/core/key.key
      # Peer Env Vars
      Environment=ETCD_PEER_CA_FILE=/home/core/ca.crt
      Environment=ETCD_PEER_CERT_FILE=/home/core/key.crt
      Environment=ETCD_PEER_KEY_FILE=/home/core/key.key

  - path: /run/systemd/system/fleet.service.d/30-certificates.conf
    permissions: 0644
    content: |
      [Service]
      # Client auth certs
      Environment=FLEET_ETCD_CAFILE=/home/core/ca.crt
      Environment=FLEET_ETCD_CERTFILE=/home/core/key.crt
      Environment=FLEET_ETCD_KEYFILE=/home/core/key.key

  - path: /home/core/ca.crt
    permissions: 0644
    content: |
      -----BEGIN CERTIFICATE-----
      MIIFNDCCAx6gAwIBAgIBATALBgkqhkiG9w0BAQswLTEMMAoGA1UEBhMDVVNBMRAw
      DgYDVQQKEwdldGNkLWNhMQswCQYDVQQLEwJDQTAeFw0xNDExMjIwMTQxNDFaFw0y
      NDExMjIwMTQxNDVaMC0xDDAKBgNVBAYTA1VTQTEQMA4GA1UEChMHZXRjZC1jYTEL
      MAkGA1UECxMCQ0EwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDhMA4d
      cmOqIUFu3D9/ivGQntfdju9FT+fOva6Vl3FjfTU/LrveM9Mjy6KvRhvyc04yIqAL
      tXmlYWihZ/ZdhF1vYDM6uFG9WkIM9HZN2uFAbNvmXj65cLvQcX+tKZmh0YG/It8Q
      x0sIYF+YcGyLAkCM8/2QKh3Oj0TfvpKuFPSdRNpMeVuOMQnvC/MRsFknV3vNBaKV
      BA8oy+ZZk428M2Lm4NXQfAR3aurTUEUZ56Hl3Prx5fH03/ObxNxsFaDqio5u0Lw9
      w4Apzc4EbZnlq4JdjREYwTnTXxcELyVinQMpz9vfDWgfHsYVzJ8xCxDjLusoRreY
      mwZPEeUR3TEgIXSS3/3HHFNN+On5WqVbd32K9/4pB4g32h+7NOKRQbQxCcacCAfw
      gisTrztYLD1OkCR9g3lO/XKegll5atJxodosEuOZ2IQTdX8OrJ1cfTtSjRXhvlVt
      fWTjxzmVGxtJ48SF93fTe8WY+S/43sIlpzvFKb6LVH6nSSgnItEV+gkfGbQFjCTu
      7hOExTXVuYN/zYiAWAf0rUsTozJbivUumVD0ktTBAWfu5Hj8abTyfpG8ERW3w2NC
      3JWqYCSSU25AH38EysUFR5C0fTIJYhtRQzQIojWs760iGnsxBmOqA1989re/vHpY
      tMNlK1IjTXiJ9jaXQUGlJ7gXiNvox7ipjbLVGQIDAQABo2MwYTAOBgNVHQ8BAf8E
      BAMCAAQwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUbI7VnFTaWAFpQ7OyriVC
      ryRK7lwwHwYDVR0jBBgwFoAUbI7VnFTaWAFpQ7OyriVCryRK7lwwCwYJKoZIhvcN
      AQELA4ICAQCegQe/HvxJLt5su+HxEceOc02HbCCO8L3sMt31ySGQHqsAjWxqZfkn
      ZXKHqn13s0zEuP9NijOnix1R1c6x+0OMkE0P8SMnuDfQ2IgaYW4EGQU8ZlcEAtPx
      xwGfJTY5GMFRU1ucClTNS4trN933UshMRa/cWgf5mE5H9Id2hCXtobPui+4S60OB
      CnSqAAxfdcrx469TjFEqlh+2dJOkSq932YWfR0zIBBjdqtHe9rprtd/niTQ80xcX
      Zb8nfqxfJ9ZJNxjeoiqrX2YnyRotpNTFQS62PDkZohI7oYaVvMnVjLJAVWe9G1x5
      Xvw31PnCUYf+PnBBw5UY2uj+ejdf7qRbS/gV0AfQqj+vQ+Ee+6SUfS9KBQMhQfNf
      khr5C/p/Q7R8pwKZO1pmC82qdVG/iqB3/O0A9fWLQNRbtHQyE4CnHabJMgRpk8OO
      GjUKhlof0RM0tgrK8k3zBkF5mzYrIerxyKr/OsJavhCUGLwAxydsfbXN0/lfpdSM
      2YGC7f5+BZ5TJT1lACkmz6LevXAujqmR1KByvDVRGdU7EINquK9oLHzlb5XBzZ8d
      uspI73Bv5xp9v1f9hlwu6NW6Mv628CmKS0s7McdjsRdW0mbdWudiSybNKRFdaEKp
      xZ7cDnlc2LetP7Uc/l+OTdyQ6mnpXF3DNIsxo7deLMfVcd5GfuZBAg==
      -----END CERTIFICATE-----
      -----BEGIN CERTIFICATE-----
      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
      -----END CERTIFICATE-----

  - path: /home/core/key.crt
    permissions: 0644
    content: |
      -----BEGIN CERTIFICATE-----
      MIIFaTCCA1OgAwIBAgIBCjALBgkqhkiG9w0BAQswLTEMMAoGA1UEBhMDVVNBMRAw
      DgYDVQQKEwdldGNkLWNhMQswCQYDVQQLEwJDQTAeFw0xNDExMjQyMzU2NTJaFw0y
      NDExMjQyMzU2NTNaMFMxDDAKBgNVBAYTA1VTQTEQMA4GA1UEChMHZXRjZC1jYTEY
      MBYGA1UECxMPZGIzLm5hdmFiaXQuY29tMRcwFQYDVQQDEw4xOTIuOTkuMTAwLjIy
      ODCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMkZPBhA++QxHxxsVFJz
      I6mPGXdiyfV+3t6/bn7W8795aUseDn3alabewFl2U5hWrHSU87tLrKrbj/b6WMxM
      yoh3WwIXrzon2WDf0H8qPENPUxkGH67yjWkxUwuNFIUs+ZanChQPjsOq8qNuSUGm
      OeAR3sxCH0217sArm0hvpv2tj+aWhc01br0w9cpy3+eULG/z7HYTDhpile6nD5En
      pRadHlV6ODD4TRKEtDbcWy3B1MJiIT8XK3zzANy/M8gQ29LZCECwK0/nUCBOZkz+
      aXMuUIlI/fMFB6UAn1U6H5iHGeRDNZaU12hVF7fdCWmuNRRF+4AwrMUJAmj2uS+V
      CDPJ2dT4knv+nPoQ+JslmMu9XWCw/77x6zXHT+W4o1t21fFm+FwxhehKopoJeI9C
      82Pb9KIEF3mbRUMgHxyFGCyLP6rF0NJlxmiCmTj/9kYJDZa7mKGvv4h+ywQDyPn+
      6E0LDUEMYjVQNhVK6L+D+TkKtZokjkmy0363x6vybY7ItnU7ueuXUHXXoogm+WdK
      BiuduLpU85fRw0YnEQhkdYvFf1GA9EWG0iZvwC7UJNoBAvDZWk7O9U+RrRr5vyW3
      K+0zWvTqGzn0Iixuz1LYBgSxG79sSH63T+IV3xIsd9wTYrQ4KMyOAMG8Cc7QJ74U
      5lQKMTkSIDcxzarkzmPLZO4/AgMBAAGjcjBwMB0GA1UdJQQWMBQGCCsGAQUFBwMB
      BggrBgEFBQcDAjAdBgNVHQ4EFgQU/Q61JvURnTzK+g5nTvYSzDotbvowHwYDVR0j
      BBgwFoAUbI7VnFTaWAFpQ7OyriVCryRK7lwwDwYDVR0RBAgwBocEwGNk5DALBgkq
      hkiG9w0BAQsDggIBAEHcW14pR/fn+yXM+AHHQmYBcPYFsnnUuTqV9ng/yBXFL9IX
      rrLS8rhLzk0lpoMOu8cKhHz6O1gA18VZDMOkztAcyw/CS+GxfWeK/9pyTQw959Hs
      3qSSR50246slviOOVD6AykwgKsqP9+r6hvDBGR5B251OB5wyRiTVi2OpVHmq8cP2
      lCB8i5KksvKfmUUJI06DKkd5eNuKgSEyYv8s4+OdOBmxqydP2tBbV1aJ+nLFAaIs
      2RlI1st1HhwtkGcMUueYsUlBr86ni0KAoujTSnHIXfoTFNkDy4tAkkS16Z79BT6e
      os2NraogVX6rgE1ht3IkgjL3b9KV1SEI3Y3UOgquXsw+NIhj65831ZJKlNkRe1TD
      KwTWeDJARMRoRSWgmLczZZNloKRSn2r1xHZGSh+NqTSHIh7liNmOwgJ1v2xmU1My
      BGRIaXqLZUiJeAa75GI3DLAOYmDcsfv74J5cYLT32PADVApcvZrxaYcb/bhK5xoV
      /spptLZBriN6IyOxMfFpv1tHR8eHMRRIqcY5r8q7g3iX74gTmKemO/tS1CiFLwBL
      kK6CgPdXg9mIvMV7SBLeX+l2NJnDtAsDA9lb3rsazcWBGwRQd3EFapTCMMmL3fER
      lEQKtPnPmcYIUfC9i35Q5BpjkfcxOqOuQ060IIvokqIE5lfaG+5ETMS4zu8M
      -----END CERTIFICATE-----


  - path: /home/core/key.key
    permissions: 0644
    content: |
      -----BEGIN RSA PRIVATE KEY-----
      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
      -----END RSA PRIVATE KEY-----

coreos:
  etcd:
    # generate a new token for each unique cluster from https://discovery.etcd.io/new
    discovery: https://discovery.etcd.io/c7460b3dcab283afae741255a3f89ade
    name: db3.navabit.com
    addr: 192.99.100.228:4001
    peer-addr: 192.99.100.228:7001
  fleet:
    etcd_servers: https://192.99.100.228:4001
    endpoint: https://192.99.100.228:4001
    metadata: region=us-east,role=database,disk=ssd/hd,provider=ovh,name=db3
    verbosity: 0
  units:
    - name: etcd.service
      command: start
    - name: fleet.service
      command: start
  update:
    reboot-strategy: etcd-lock