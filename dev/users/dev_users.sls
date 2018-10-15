user_jose_smith:
  user.present:
    - name: jose.smith
    - fullname: Joseph Smith
    - shell: /bin/bash
    - home: /home/jose.smith
    - uid: 10001
    - gid_from_name: true
    - groups:
      - wheel

jose_smith_key:
  ssh_auth.present:
    - name: jose.smith
    - user: jose.smith
    - source: salt://users/keys/jeff.sikala.pub
