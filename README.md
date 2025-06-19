# 🧑‍💼 HR Dashboard with Metabase + PostgreSQL

This project sets up a basic HR management dashboard using Metabase and PostgreSQL. It includes:

- Employee Directory
- Attendance Records
- Leave Requests

## 🚀 How to Run

```bash
git clone https://github.com/yourusername/metabase-hr-dashboard.git
cd metabase-hr-dashboard
docker-compose up

```

## Connection Setup

### Environment Setup
1. Create a `.env` file with the following variables:
```env
POSTGRES_USER=metabase_user
POSTGRES_PASSWORD=your_secure_password
POSTGRES_DB=hr_dashboard
```

### Connecting Metabase to PostgreSQL
When setting up Metabase (http://localhost:3000), use these database connection details:

- **Host**: `db` (Docker service name)
- **Port**: `5432` (Internal Docker network port)
- **Database name**: `hr_dashboard`
- **Username**: `metabase_user`
- **Password**: (use the password you set in `.env`)

### Local PostgreSQL Connection
To connect to PostgreSQL from your local machine:
- **Host**: `localhost`
- **Port**: `5433` (External mapped port)
- **Database**: `hr_dashboard`
- **Username**: `metabase_user`
- **Password**: (use the password you set in `.env`)

## Getting Started
1. Create `.env` file with the credentials above
2. Run `docker-compose up -d`
3. Access Metabase at http://localhost:3000
4. Follow the setup wizard and use the PostgreSQL connection details provided above
