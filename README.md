# ListMonk - Email Marketing Platform

A self-hosted email marketing and newsletter management platform.

## Local Development

```bash
# Start the application
docker compose up -d

# Access the app
open http://localhost:9000
```

## Production Deployment on DigitalOcean App Platform

### Prerequisites
- DigitalOcean account
- GitHub account with this repository

### Deployment Steps

1. **Fork/Clone this repository to your GitHub account**
   - Make sure the repository is public or you have a paid DigitalOcean plan

2. **Update the configuration**
   - Edit `app.yaml` and replace `YOUR_GITHUB_USERNAME` with your actual GitHub username
   - Change `your_secure_password_here` to a strong password

3. **Deploy to DigitalOcean**
   - Go to [DigitalOcean App Platform](https://cloud.digitalocean.com/apps)
   - Click "Create App"
   - Choose "GitHub" as source
   - Select your ListMonk repository
   - DigitalOcean will automatically detect the `app.yaml` configuration
   - Click "Create Resources"

4. **Access your deployed app**
   - DigitalOcean will provide you with a URL like `https://your-app-name.ondigitalocean.app`
   - Login with username: `admin` and the password you set

### Configuration Notes

- The app runs on port 8080 (DigitalOcean standard)
- Database is automatically managed by DigitalOcean
- SSL certificates are automatically provisioned
- The app will auto-scale based on traffic

### Cost Estimate
- App: $5/month (basic-xxs instance)
- Database: $7/month (db-s-1vcpu-1gb)
- **Total: ~$12/month**

## Features

- Email list management
- Newsletter creation and sending
- Subscriber analytics
- Template management
- API for integrations

## Support

- [ListMonk Documentation](https://listmonk.app/)
- [GitHub Issues](https://github.com/knadh/listmonk/issues)
