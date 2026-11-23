# Admin panel setup

## Run
Open PowerShell in this project folder (the folder containing `pom.xml`) and run:

```powershell
.\mvnw.cmd spring-boot:run
```

Open `http://localhost:8080/admin/login` for administrator sign-in. The home page also has an Admin Login link.

## First-run local demo credentials
- Username: `admin`
- Password: `Admin@123`

The application creates this administrator only if the `admins` table is empty. Existing admin accounts are not overwritten. The password is stored as a SHA-256 hash to match this project's existing password utility.

For a local environment, you can override the credentials before starting PowerShell:

```powershell
$env:APP_ADMIN_USERNAME = "your-admin-name"
$env:APP_ADMIN_PASSWORD = "use-a-strong-unique-password"
.\mvnw.cmd spring-boot:run
```

If an admin already exists, the initializer will not replace it. Do not use the demo credentials on a public deployment. This project is a learning/demo app; SHA-256 alone is not an appropriate password-storage scheme for a production system.

## Dashboard features
- Separate administrator login and session from voter login
- Registered voter and candidate counts
- Total votes cast
- Add, edit and delete candidates (a candidate with existing votes cannot be deleted)
- Registered voter list with voting status derived from actual vote records
- Election results link
