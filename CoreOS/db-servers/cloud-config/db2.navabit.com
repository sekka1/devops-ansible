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
      MIIFaDCCA1KgAwIBAgIBCTALBgkqhkiG9w0BAQswLTEMMAoGA1UEBhMDVVNBMRAw
      DgYDVQQKEwdldGNkLWNhMQswCQYDVQQLEwJDQTAeFw0xNDExMjQyMzU1NDNaFw0y
      NDExMjQyMzU1NDVaMFIxDDAKBgNVBAYTA1VTQTEQMA4GA1UEChMHZXRjZC1jYTEY
      MBYGA1UECxMPZGIyLm5hdmFiaXQuY29tMRYwFAYDVQQDEw0xNDIuNC4yMTYuMjEw
      MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAx2BXTYM+w90fRh+QCB5x
      VS7NQmvZ8XzARtgyzKdpxdzJds6g2JiYiRdhBJpADaD3BN52UvtD5YR9Q6lfMQ7L
      wYMaMxlF5MVMHumTlNyA2MXvAm3ViFz8Hocs/8BEh7xclsB5wKejokIm/r3z8aeo
      TLkrr0t76Cjy15TjyWdx2eFJtkdRkS8IizWE4JQaaBTRwoGw2qRB1XKXHydVBTUe
      pCbOlf68je4azJgnmrtCd/DKIR6TwjjQRRJSfoW7WK6gAj07McNMgCrr1j1braX6
      NftjD3qDjncmpr7CflhIgET2tDtmi506RO9ELmQ5m+EURDXVz2AC2EZvYaujvtl3
      pgPR3sRuI4NvA3UXu3Lfgl2iLXKLfU0uiJ5zXcTUDJWCFcyycOzN1puJYEFhluXE
      FJ8SuorvNBHrSpAuggG+KDHHKB7OKRhBr9Uiveq1FMyOJDBWp9siz94yHXD3Q4vv
      emTJl6GYMYUwLHLuOafsmIJioyHaUrqHYwvQ1YUQ1IKel0Eof1FQVU8wQSu9O7nI
      dulKre8+42GBRnD0LGSZnBPedE05+aLiul3ZDZ/03lAL7pdPyzOIvMpHCeG5u/ov
      CgJSxcdjadB3Y85X9YoFRq3Dsap64Jo9r+bF97PSHwAOET8vxiSBEooJ2WKp2g4U
      UHJv/yMav5OeskOr/MdcZHMCAwEAAaNyMHAwHQYDVR0lBBYwFAYIKwYBBQUHAwEG
      CCsGAQUFBwMCMB0GA1UdDgQWBBRjc3jNBl13BoJ61SsTv1x4NwfBCjAfBgNVHSME
      GDAWgBRsjtWcVNpYAWlDs7KuJUKvJEruXDAPBgNVHREECDAGhwSOBNjSMAsGCSqG
      SIb3DQEBCwOCAgEASEZQxG6TB6Z3SaNLeuZJ3CeeVwKMTrAA0fVqxQ1ER4AoIiAn
      l0RFy0o8Kx31YJH3ux8elvythopiTRn9tNEo8IxvJk6pHwB6axKBfnrsv4eW0cgV
      hOwgYUi/utKFiclKFyM/z3XSuDqE1mjTmmSugaI3GNzI7L9MuRnqVEad61c8zd+c
      nWNG8BweG6s+o9+AZHSnT60ys1unX+LrRan8tBl0q3LpRTXELSJDAbRj/NC1QmHD
      jQwACgeD+lWqtWvB6N0+lCa5dz3R6A1XDaFyi4WJM1wkpi24iQ3g55HNdIi2gA9K
      Nk6xmYlrzhwZYL6m9PRJKt1Cumamy0jTJ2yOMZ+1qMdawvmVFeFGou2KFHTk9AHm
      H9FP4MASD6KyrKlfdRS11/b3zbdCg3Ua4BOncQGFXTOwnYVG60P5rmNTrxRCUuhy
      sK3zmQ+Pxdr4dTYxA5MEM7Z9CGofK0y6J4FaH83wOGiDOElPYWLleLkpASbLiLF9
      R2p0Uu7bYzf44zEs88O3G+5cwYffAqFAdOTxSocHZ1RH+465IMEDRG2iDVcuBOeb
      hMOgfpA6CLmBQnZRT46TK+ng+JpQWoHPdKWLd3XyZt5gFRO2y1vlrLXG71Mmds5B
      zEk9aL8WWNFrSNv/LUaF9Sj2sXepYoE20Ty+MWIan6tw15n4arv5G4mgjbc=
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
    name: db2.navabit.com
    addr: 142.4.216.210:4001
    peer-addr: 142.4.216.210:7001
  fleet:
    etcd_servers: https://142.4.216.210:4001
    endpoint: https://142.4.216.210:4001
    metadata: region=us-east,role=database,disk=ssd/hd,provider=ovh,name=db2
    verbosity: 0
  units:
    - name: etcd.service
      command: start
    - name: fleet.service
      command: start
  update:
    reboot-strategy: etcd-lock