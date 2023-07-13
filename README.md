# Deployment automation on AWS using Jenkins CI/CD

![project](https://github.com/verma-kunal/Cloud-Deployment-Automation/assets/72245772/e64c29b3-615c-451e-b8fa-b2affdec04cf)

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

PUBLISHABLE_KEY="TEST_STRIPE_PUBLIC_API_KEY"
SECRET_KEY="TEST_STRIPE_SECRET_API_KEY"
```

> Follow the steps mentioned in the [guide](https://stripe.com/docs/keys) to get your Stripe API keys for testing purposes.

3. Initialise and start the project
```
npm install
npm run start
```

## Tutorial

A detailed guide on how to build this project can be in the [blog post](https://kverma.hashnode.dev/aws-cloud-deployment-automation-with-jenkins-ci).
