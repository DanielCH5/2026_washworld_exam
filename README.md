# Wash World – Member App (2026 Exam Project)

A full-stack web app built as an exam project, inspired by the Danish car wash chain. It lets a member sign up, register their cars, pick a wash membership, find a wash hall on a map, and start a wash from their phone.

The UI is in Danish and designed mobile-first.

## Features

- **Accounts:** sign up with email verification, log in and out, update your profile, reset a forgotten password by email, and delete your account
- **Cars:** register cars by license plate, nickname, brand and model; edit or remove them
- **Memberships:** choose between three wash plans (Guld, Premium, Brilliant) per car, then upgrade, downgrade or cancel
- **Locations:** an interactive map of every Wash World location in Denmark, plus a detail page per location (opening hours, number of wash halls, max height and mirror width, extra facilities)
- **Washing:** order a wash at a location, choose add-ons, go through a mock payment step, and follow the wash with a live progress timer
- **Help:** a support page with contact details and FAQ

## Tech stack

| Layer | Technology |
|---|---|
| Frontend | Next.js 16 (App Router), React 19, TypeScript, Tailwind CSS 4 |
| Map | Leaflet / React Leaflet with OpenStreetMap tiles |
| Backend | Python 3.10, Flask 3, Flask-JWT-Extended, Flask-CORS |
| Database | MariaDB 10.6 (with phpMyAdmin for inspection) |
| Infrastructure | Docker Compose |
| Testing | Cypress (end-to-end) |

## Project structure

```
2026_washworld_exam/
├── backend/
│   ├── app.py                    # Flask app with all API routes
│   ├── x.py                      # DB connection, input validation, email helper
│   ├── templates/                # HTML email templates (welcome, forgot password)
│   ├── 2026_1_wash_world.sql     # Database schema and seed data
│   ├── Dockerfile
│   ├── docker-compose.yml        # Flask + MariaDB + phpMyAdmin
│   └── requirements.txt
├── frontend/
│   ├── app/                      # Next.js pages (one folder per route)
│   │   ├── hooks/                # Data-fetching hooks (cars, washes, add-ons, subscriptions)
│   │   ├── cars/  locations/  membership/  orders/  profile/  help/
│   │   └── forgot-password/  reset-password/[key]/
│   ├── components/               # UI components, grouped by feature
│   ├── context/AuthContext.tsx   # Logged-in user state
│   ├── types/                    # Shared TypeScript types
│   ├── cypress/e2e/              # End-to-end tests (login, cars)
│   └── public/                   # Fonts and map styles
└── README.md
```

## How it fits together

The Next.js frontend runs on `http://localhost:3000` and calls the Flask API on `http://localhost` (port 80). Authentication uses JWTs stored in cookies with CSRF protection, so the backend only accepts requests from the frontend's origin.

The MariaDB database holds 13 tables: `users`, `cars`, `brands`, `models`, `washes`, `addons`, `washes_addons`, `subscriptions`, `orders`, `addons_orders`, `status`, `locations` and `regions`.

Location data originally comes from Wash World's public locations API. The `/get-locations_da` endpoint imports it into the `locations` table, and the SQL dump already includes the imported data.

## API overview

| Area | Endpoints |
|---|---|
| Auth & users | `POST /api/user-signup`, `GET /verify/<key>`, `POST /login`, `POST /api/logout`, `GET /api/me`, `PATCH /api/update-user`, `DELETE /api/delete-user` |
| Password reset | `POST /api/forgot-password`, `GET /api/reset-password/<key>`, `PATCH /api/reset-password` |
| Cars | `GET /cars`, `POST /car`, `GET /car/<car_pk>`, `PATCH /car/<car_pk>`, `DELETE /car/<car_pk>`, `GET /models` |
| Memberships | `GET /washes`, `GET /memberships`, `POST /subscription`, `PUT /subscription/<pk>`, `DELETE /subscription/<pk>` |
| Washing | `GET /addons`, `GET /addons/<wash_pk>`, `POST /order`, `GET /order/new/<car_pk>`, `PATCH /order/status/<car_pk>` |
| Locations | `GET /get-data`, `GET /get-data/<location_pk>`, `GET /get-locations_da` |

## Getting started

### Prerequisites

- Docker and Docker Compose
- Node.js 20+ and npm

### 1. Configure the backend

Create `backend/.env`:

```env
DB_PASSWORD=your_database_password
APP_EMAIL=sender@gmail.com
APP_PASSWORD=your_gmail_app_password
APP_RECEIVER_EMAIL=receiver@gmail.com
```

The email settings are used to send verification and password-reset emails through Gmail SMTP. With 2FA enabled, `APP_PASSWORD` must be a Gmail app password.

### 2. Start the backend and database

```bash
cd backend
docker compose up --build
```

This starts:

- Flask API at http://localhost
- MariaDB on port 3306
- phpMyAdmin at http://localhost:8080

### 3. Import the database

Open phpMyAdmin at http://localhost:8080, select the `2026_1_wash_world` database, and import `backend/2026_1_wash_world.sql`.

### 4. Start the frontend

```bash
cd frontend
npm install
npm run dev
```

Then open http://localhost:3000.

## Testing

End-to-end tests are written in Cypress and expect both the frontend and backend to be running.

```bash
cd frontend
npm run cypress       # interactive runner
npm run cypress:run   # headless
```

## Notes

This is a school project, not a production app. Before deploying anything like it, you'd want to move the JWT secret into an environment variable, restrict CORS to the real domain, turn off Flask debug mode, and replace the mock payment flow with a real provider.
