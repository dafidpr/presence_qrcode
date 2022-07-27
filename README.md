
# Presence QRCode Application

Attendance application by using scan qrcode and geolocation.

## Account Demo

- Username : dafidpr
- Password : 1234


## Installation

App installation

```bash
  git clone https://github.com/dafidpr/presence_qrcode.git
  cd presence_qrcode
  flutter pub get
```

After all the setup is complete, run the Android emulator or native device, then run the command:

```bash
  flutter run
```

After the application is installed perfectly, access the QRCode on the following link [http://absen.ngajar.in/showQR.php](http://absen.ngajar.in/showQR.php) to make attendance.


## App Features

- Monthly attendance summary
- Presence history
- QR Presence and Location
- Presence details


## API Reference
[API Repository](https://github.com/dafidpr/presence_qrcode_api)

#### API Base URL
Main url of API
```
https://api-presence-qrcode.herokuapp.com/api/v1/
```

#### Login
Request :
```http
  POST /auth/login
```

Response :
```http
  {
    "success": true,
    "data": {
        "token": "1|JRrOO98sbXeBofgILeSfe1SLhZK6LlgDycjJJ25F",
        "data": {
            "name": "Dafid Prasetyo",
            "username": "dafidpr",
            "email": "dafid@gmail.com"
        }
    },
    "message": "Berhasil login."
}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `username` | `string` | **Required**. Your Username |
| `password` | `string` | **Required**. Your Password |

#### Get This Month's  Attendance Summary
Request :
```http
  GET /presences/count
```

Response :
```http
{
    "success": true,
    "data": {
        "attendance": 0,
        "absence": 31
    },
    "message": "Berhasil mengambil jumlah absensi."
}
```



#### Get Attendance Data 
Request :
```http
  GET /presences/get-data?limit=10
```

Response :
```http
{
    "success": true,
    "data": [
        {
            "id": 2,
            "user_id": 1,
            "shift_id": 1,
            "date": "3 Mei 2020",
            "type": "checkout",
            "time_in": "14:00:00",
            "latitude": "-6.91748",
            "longitude": "107.61942",
            "description": "Pulang",
            "created_at": null,
            "updated_at": null
        },
        {
            "id": 1,
            "user_id": 1,
            "shift_id": 1,
            "date": "3 Mei 2020",
            "type": "checkin",
            "time_in": "06:00:00",
            "latitude": "-6.91748",
            "longitude": "107.61942",
            "description": "Masuk",
            "created_at": null,
            "updated_at": null
        }
    ],
    "message": "Berhasil mengambil data absensi."
}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `limit` | `string` | **Optional**. Limit to get data |


#### Get item
Request : 
```http
  GET /presences/get-data/${id}
```

Response : 
```http
{
    "success": true,
    "data": {
        "date": "3 Mei 2020",
        "shift": "Pukul 06:00:00 s/d 14:00:00",
        "type": "Masuk",
        "time_in": "06:00",
        "location": "-6.91748, 107.61942",
        "description": "Masuk"
    },
    "message": "Berhasil mengambil data absensi."
}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |


#### Store Data
Request :
```http
  POST /presences/store
```

Response :
```http
{
    "success": true,
    "data": {
        "date": "4 Mei 2022",
        "type": "checkin",
        "time_in": "19:51:47",
        "latitude": "1234",
        "longitude": "123",
        "description": "Masuk | Terlambat"
    },
    "message": "Berhasil menyimpan absensi."
}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `qr_data` | `string` | **Required**. Your QRCode Data |
| `latitude` | `string` | **Required**. Your Latitude |
| `longitude` | `string` | **Required**. Your Longitude |


#### Logout
Request :
```http
  GET /auth/logout
```

Response :
```http
{
    "success": true,
    "data": [],
    "message": "Berhasil logout."
}
```
