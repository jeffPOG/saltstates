user_jeff_sikala:
  user.present:
    - name: jeff.sikala
    - fullname: Jeff Sikala
    - shell: /bin/bash
    - home: /home/jeff.sikala
    - uid: 1993
    - gid_from_name: True
    - groups:
      - wheel

jeff_sikala_key:
  ssh_auth.present:
    - name: jeff.sikala
    - user: jeff.sikala
    - source: salt://users/keys/jeff.sikala.pub
