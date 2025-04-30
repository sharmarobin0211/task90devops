FILE SYATEM OPERATION

# Navigate directories
cd /var/www/html      # Change to web root directory
cd ..                  # Move up one directory
cd ~                   # Return to home directory

# List files with details
ls -la                 # Show all files (including hidden) with permissions

# Create directories
mkdir project          # Create a new directory
mkdir -p src/public    # Create nested directories

# File operations
cp file.txt backup/    # Copy file to backup directory
mv old.html new.html   # Rename file
rm obsolete.js         # Remove file
rm -rf node_modules/   # Force remove directory (careful!)

# View files
cat config.json        # Display entire file
head -n 20 log.txt     # Show first 20 lines
tail -f error.log      # Follow log file in real-time
less large_file.txt    # View file with pagination

FILE PERMISSIONS

chmod 755 script.sh                                          # Make file executable (rwx for owner, rx for others)
chown www-data:www-data /var/www/html                        # Change file owner to web server user

Process Management

ps aux | grep node   		  # Find all Node.js processes
kill -9 1234              	  # Force kill process with PID 1234
top                               # Interactive process viewer
htop                              # Enhanced process viewer (if installed)

Network Operations

curl -I example.com                   # View HTTP headers
wget https://example.com/file.zip     # Download file
ping google.com                       # Check network connectivity
netstat -tulnp                        # List listening ports and processes
ssh user@server.com                   # Connect to remote server
scp file.txt user@server.com:/path/   # Secure copy to remote

PACKAGE MANAGEMNET

# Ubuntu/Debian
sudo apt update        # Update package list
sudo apt install nginx # Install package
sudo apt remove nginx  # Remove package



# Arch Linux

sudo pacman -S nginx
Text Processing
grep "error" log.txt           # Search for "error" in file
grep -r "function" src/        # Recursive search in directory
sed -i 's/old/new/g' file.txt  # Replace text in file
awk '{print $1}' data.txt      # Print first column
sort file.txt | uniq           # Sort and remove duplicates

System Information
uname -a               # Show system information
df -h                  # Disk space usage
du -sh /var/www/       # Directory size
free -h                # Memory usage
uptime                 # System uptime and load


COMPRESSONS/ARCHIVEING

tar -czvf archive.tar.gz /path/to/folder  # Create compressed archive
tar -xzvf archive.tar.gz                  # Extract archive
zip -r site.zip public_html/              # Create zip archive
unzip site.zip                            # Extract zip file
Git Commands
git clone https://github.com/user/repo.git
git status
git add .
git commit -m "Update"
git push origin main
git pull
git log –oneline

WEB SERVER MANAGEMENT

# Nginx
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo nginx -t              # Test configuration


Practical Script Example

Here is a bash script that automates some common web dev tasks:


# Simple deployment script
echo "🚀 Starting deployment..."

# 1. Pull latest changes
git pull origin main || { echo "❌ Git pull failed"; exit 1; }

# 2. Install dependencies
npm install --production || { echo "❌ npm install failed"; exit 1; }

# 3. Build project
npm run build || { echo "❌ Build failed"; exit 1; }

# 4. Restart server
sudo systemctl restart node-server || { echo "❌ Server restart failed"; exit 1; }

echo "✅ Deployment successful!"


Save this as deploy.sh, make it executable with chmod +x deploy.sh, and run it with ./deploy.sh.

These commands form the foundation of a web developer's Linux toolkit. As you work more with servers and development environments, you'll find yourself using these commands regularly.


