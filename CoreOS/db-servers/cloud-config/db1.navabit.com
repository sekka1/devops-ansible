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
      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
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
    name: db1.navabit.com
    addr: 198.27.74.208:4001
    peer-addr: 198.27.74.208:7001
  fleet:
    etcd_servers: https://198.27.74.208:4001
    endpoint: https://198.27.74.208:4001
    metadata: region=us-east,role=database,disk=ssd/hd,provider=ovh,name=db1
    verbosity: 0
  units:
    - name: etcd.service
      command: start
    - name: fleet.service
      command: start
  update:
    reboot-strategy: etcd-lock