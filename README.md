# 🛡️ SafeTrail — Smart Tourist Safety System

**Navi Mumbai Tourist Safety App with SOS, Live Map, Hotels & Emergency Services**

---

## 🚀 Quick Start

### Windows:
```
Double-click start.bat
```

### Mac / Linux:
```bash
bash start.sh
```

Then open: **http://127.0.0.1:5500**

---

## 📋 Features

- ✅ User Registration → saved to SQLite database
- ✅ SOS Button → triggers real Call + SMS + Email
- ✅ Official SOS Number: **+16064462384**
- ✅ Live GPS location sent in all alerts
- ✅ Navi Mumbai city services map
- ✅ Hotel & restaurant finder

---

## 🔧 Enable Real Call / SMS / Email

### 1. Twilio (Call + SMS) — Free Trial Available

1. Sign up at https://www.twilio.com/try-twilio
2. Get your **Account SID** and **Auth Token** from the Twilio Console
3. Open `Backend/App.py` and fill in:

```python
TWILIO_ACCOUNT_SID = "ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
TWILIO_AUTH_TOKEN  = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
TWILIO_ENABLED     = True   # ← Change False to True
```

> The SOS number +16064462384 is already set. This is the number all calls & SMS will come FROM.

### 2. Email (Gmail)

1. Enable 2-Step Verification on your Gmail account
2. Go to https://myaccount.google.com/apppasswords → create an App Password
3. Open `Backend/App.py` and fill in:

```python
SENDER_EMAIL    = "your_email@gmail.com"
SENDER_PASSWORD = "xxxx xxxx xxxx xxxx"   # 16-char App Password
EMAIL_ENABLED   = True   # ← Change False to True
```

---

## 📱 What Happens When SOS is Pressed

1. **📍 GPS captured** — live location locked
2. **📞 Voice Call** — Twilio calls emergency contact from +16064462384
3. **💬 SMS** — Text with GPS link sent to emergency contact from +16064462384
4. **📧 Email** — SOS email with map link sent to emergency email
5. **👮 Police alert** — Police email notified
6. **💾 Database** — Alert logged in SQLite

---

## 🗄️ Database

Location: `Database/safetrail.db`

View via SQLite browser or: `http://127.0.0.1:5500/api/test-db`

Tables:
- `users` — registered tourists
- `sos_alerts` — all SOS events
- `locations` — GPS history
- `city_services` — Navi Mumbai services
- `incidents` — incident log

---

## 🌐 API Endpoints

| Endpoint | Method | Description |
|---|---|---|
| `/api/register` | POST | Register new user → saves to DB |
| `/api/login` | POST | Login with phone |
| `/api/sos/trigger` | POST | Trigger SOS (call+SMS+email) |
| `/api/cities` | GET | List all cities |
| `/api/city/:name/services` | GET | Services for a city |
| `/api/admin/stats` | GET | DB stats + all users |
| `/api/test-db` | GET | DB health check |

---

## 📁 Project Structure

```
safe_tourist_integrated/
├── Frontend/
│   ├── index.html      ← Home + Registration
│   ├── sos.html        ← SOS Button
│   ├── map.html        ← Live Map
│   ├── hotels.html     ← Hotels
│   └── services.html   ← City Services
├── Backend/
│   ├── App.py          ← Flask server (edit credentials here)
│   └── requirements.txt
├── Database/
│   ├── schema.sql
│   └── safetrail.db    ← Created automatically on first run
├── start.bat           ← Windows launcher
└── start.sh            ← Mac/Linux launcher
```
