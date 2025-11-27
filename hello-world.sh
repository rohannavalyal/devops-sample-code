# create project folder
mkdir devops-sample-code
cd devops-sample-code

# create script
cat > hello-world.sh <<'EOF'
#!/bin/bash
echo "Hello, Jenkins!"
EOF

# make executable
chmod +x hello-world.sh

# configure git (only if not configured yet)
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"

# initialize repo, commit, and push
git init
git add hello-world.sh
git commit -m "Add hello-world.sh"
# replace <username> and repo name with yours
git remote add origin https://github.com/<your-GitHub-username>/devops-sample-code.git
git branch -M main
git push -u origin main
