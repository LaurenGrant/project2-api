# Project-2---Back-End
Back-end content for project 2


----- # User authentication -----

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "test4@test4.com",
    "password": "test",
    "password_confirmation": "test"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "test@test.com",
    "password": "test"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=830fe72293758fc09c75bcb05a27a57d" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=830fe72293758fc09c75bcb05a27a57d" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users

```
----- # Event authentication -----

## Create

```
curl --request POST --header "Authorization: Token token=e44eb9c532e4c086778578d93d77ae43" --header "Content-Type: application/json" -d '{
  "event": {
  "business_kind":"spa",
  "name":"you relax",
  "website":"www.you-relax.com",
  "phone_number":"207-555-5551",
  "event_date":"2015-10-11",
  "group_size":"9",
  "location_id":"29",
  "user_id":"70"
  }
}'  http://localhost:3000/events
```

## List all events from current user

```
curl --header "Authorization: Token token=e44eb9c532e4c086778578d93d77ae43" http://localhost:3000/events
```
## Update

```
curl --request PATCH --header "Authorization: Token token=edf32577e0f98884d8a900b59a26423c" --header "Content-Type: application/json" -d '{
  "event": {
  "business_kind":"spa",
  "name":"you relax",
  "website":"www.you-relax.com",
  "phone_number":"207-555-5551",
  "event_date":"2015-10-11",
  "group_size":"9",
  "location_id":"29",
  "user_id":"70"
  }
}'  http://localhost:3000/events/16
```

## Deletes 1 event from current user

curl --request DELETE --header "Authorization: Token token=e44eb9c532e4c086778578d93d77ae43" http://localhost:3000/events/12


Front-End Repo 'project2-api' link
https://github.com/LaurenGrant/Project-2---Front-End

Contact: Lauren Grant https://github.com/LaurenGrant
