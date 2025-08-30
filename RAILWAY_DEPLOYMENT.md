# 🚂 Deploy ListMonk on Railway (Cheapest Option)

## 💰 **Cost: Only $5/month total!**
- ✅ App hosting included
- ✅ Database included  
- ✅ SSL certificates included
- ✅ Auto-deployment from GitHub

## 🚀 **Deployment Steps (10 minutes):**

### **Step 1: Sign up for Railway**
1. Go to [railway.app](https://railway.app)
2. Sign up with your GitHub account
3. Click "Start a New Project"

### **Step 2: Deploy from GitHub**
1. Choose "Deploy from GitHub repo"
2. Select your repository: `pjloury/ucsd-alumni-email`
3. Railway will automatically detect the Dockerfile
4. Click "Deploy Now"

### **Step 3: Add Database**
1. In your project, click "New"
2. Choose "Database" → "PostgreSQL"
3. Railway will automatically connect it to your app
4. **Important**: Wait for the database to fully provision before proceeding

### **Step 4: Set Environment Variables**
Railway will automatically set these from the database connection:
- `PGHOST` - From database connection
- `PGPORT` - From database connection  
- `PGUSER` - From database connection
- `PGPASSWORD` - From database connection
- `PGDATABASE` - From database connection
- `PORT` - Railway sets this automatically

**Note**: The app will use these to set the `LISTMONK_db_*` variables automatically.

### **Step 5: Access Your App**
- Railway will give you a URL like: `https://your-app-name.railway.app`
- Login with: `admin` / `K9#mP2$vL7@nQ4!xR8`

## 🔧 **What Railway Does Automatically:**
- ✅ Builds your Docker container
- ✅ Sets up PostgreSQL database
- ✅ Configures environment variables
- ✅ Provides SSL certificates
- ✅ Handles scaling and restarts
- ✅ Deploys from GitHub on every push

## 📱 **Railway Dashboard Features:**
- **Real-time logs** - See what's happening
- **Metrics** - Monitor performance
- **Environment variables** - Easy configuration
- **Database management** - Backup and restore
- **Custom domains** - Add your own domain later

## 🆚 **Railway vs DigitalOcean:**
| Feature | Railway | DigitalOcean |
|---------|---------|--------------|
| **Cost** | $5/month | $24/month |
| **Setup time** | 10 minutes | 30 minutes |
| **Database** | Included | Extra $7/month |
| **SSL** | Included | Included |
| **Auto-deploy** | Yes | Yes |
| **Complexity** | Simple | Medium |

## 🎯 **Why Railway is Perfect for You:**
1. **Cheapest option** - $5/month total
2. **Easiest setup** - Just connect GitHub and deploy
3. **Everything included** - No hidden costs
4. **Professional hosting** - Reliable and fast
5. **Easy management** - Simple dashboard

## 🚨 **Important Notes:**
- **Free tier**: Railway has a generous free tier for testing
- **Scaling**: Automatically scales based on traffic
- **Backups**: Database backups included
- **Support**: Good documentation and community

## 🔗 **Next Steps:**
1. Go to [railway.app](https://railway.app)
2. Sign up and create your project
3. Deploy from your GitHub repository
4. Add the PostgreSQL database
5. Access your app!

**Total cost: $5/month instead of $24/month!** 🎉

## 🚨 **Troubleshooting Common Issues:**

### **Database Connection Error: "dial tcp: lookup port=0: no such host"**
**Cause**: Database environment variables not properly set
**Solution**: 
1. Make sure you've added a PostgreSQL database to your project
2. Wait for the database to fully provision (green status)
3. Verify the database is connected to your app
4. Redeploy the app after database is ready

### **App Won't Start**
**Cause**: Missing environment variables
**Solution**:
1. Check Railway dashboard for environment variables
2. Ensure database connection variables are present
3. Verify `PORT` variable is set by Railway

### **Health Check Fails**
**Cause**: App not responding on correct port
**Solution**:
1. Check app logs in Railway dashboard
2. Verify `LISTMONK_app__address` is set to `0.0.0.0:${PORT}`
3. Ensure database is accessible from app
