# Deployment automation on AWS using Jenkins CI/CD

## Testing the project locally

1. Clone this project
```
git clone https://github.com/verma-kunal/AWS-Session.git
```
2. Setup the following environment variables - `(.env)` file
```
DOMAIN= "http://IP_ADDRESS:3000"
PORT=3000
STATIC_DIR="./client"

PUBLISHABLE_KEY="STRIPE_PUBLIC_API_KEY"
SECRET_KEY="STRIPE_SECRET_API_KEY"
```
3. Initialise and start the project
```
npm install
npm run start
```
