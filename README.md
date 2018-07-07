Create a user on Gogs for posting build notifications (like 'buildbot') and generate a token for it. Insert the token as a drone secret.

    drone secret add dan/gogs-notify-test --name gogs_account_token --value $VALUE --event pull-request --event push --event tag --event deployment

Use in drone.yml:

    notify-gogs:
      image: mindstab/drone-gogs
      when:
        event: pull_request
      secrets: [gogs_account_token]
      gogs_url: https://git.openprivacy.ca


