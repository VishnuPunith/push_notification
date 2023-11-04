#!/bin/bash
SERVER_KEY='AAAASMZ2ULc:APA91bEV_vpcLdgy_1G2T4e_2dCnHccKiVVNQzi-Kf9PU84aQ5RJpVaJZ0G84lVteOpLO2YVc9-WngpAz9z0fnk2ub_wNKqvye7T2S5cO6oZ2juc_KoHrji5Tpf-N_HbAw-15N1UH0s_'
DEVICE_REG_TOKEN='db9esLTDs96XNAXz09G1AW:APA91bF9riSbYaLRl65ifpWS0Ub1MVKbZ4cqgfIv5a3_Wlo0OM0UBHYlgk3TXYwwMsXD6KgK_bCA7C3qZP8TMsY90dAHYg8XoGjpSKFK8xgGzfYAVKPK7f-OsoVpOhUGWtCBtHAZe9z1'
CMD=$(cat <<END
curl -X POST -H "Authorization: key=$SERVER_KEY" -H "Content-Type: application/json"
   -d '{
  "data": {
    "notification": {
        "title": "FCM Message",
        "body": "This is an FCM Message",
        "icon": "/itwonders-web-logo.png",
    }
  },
  "to": "$DEVICE_REG_TOKEN"
}' https://fcm.googleapis.com/fcm/send
END
)

echo $CMD && eval $CMD
