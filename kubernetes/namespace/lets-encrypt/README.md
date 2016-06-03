Lets Encrypt
===================

https://github.com/letsencrypt/letsencrypt

-quick docs: https://letsencrypt.org/howitworks/

-full docs: https://letsencrypt.readthedocs.org/en/latest/intro.html

-user guide: https://letsencrypt.readthedocs.org/en/latest/using.html#installation

-docker container: http://letsencrypt.readthedocs.org/en/latest/using.html#running-with-docker

## The setup

There are some pre-requisites for getting certs from lets-encrypt.  

* You need to run their cli tool to talk to their servers to generate the certs
* When generating the cert they will do a URL call back to the domain you are trying to get a cert for and verify that
you own the domain.
* The URL call back is at: `http://<domain_name>/.well-known/acme-challenge/<unique string>`
* The unique string will be given to you when trying to generate a new cert with the lets-encrypt cli

To make this work this is how we are setting it up

                     ___(route: /) goes to the app's pod
                    /
    Ingress---------
                    \___(route: /.well-known/acme-challenge/) goes to the lets-encrypt pod
                    
This is assuming you already have a valid domain name that is pointing to this ingress b/c hopefully your app works
on this ingress with the domain name.
                     
We are running one `lets-encrypt` pod per Kube namespace and binding all Ingress to this one that wants a cert.
                                    
                
## Procedures to create a new cert using the CLI

	docker run -h gar-test.kube-prod1.vungle.io -it -p 443:443 -p 80:80 -v /tmp/letsencrypt:/opt -v /tmp/letsencrypt-etc:/etc/letsencrypt ubuntu:14.04.1 bash

	apt-get install -y vim git

	cd /opt

	git clone https://github.com/letsencrypt/letsencrypt.git

	cd letsencrypt
	
	./letsencrypt-auto --help

	#./letsencrypt-auto certonly --standalone --email garlandk@gmail.com -d gar-test.kube-prod1.vungle.io

	./letsencrypt-auto certonly --manual --email garlandk@gmail.com -d gar-test.kube-prod1.vungle.io
	
	
Create one cert that has all the domains pointed to the ingress
	
	./letsencrypt-auto certonly --manual --email devops@vungle.com \
	-d vungle.io \
	-d billboard.vungle.com \
	-d ingest-qa.kube-prod.vungle.com \
	-d elastikube.vungle.com \
	-d gor-replay.vungle.io \
	-d shh.vungle.io \
	-d influxdb2.vungle.com \
	-d jaeger.vungle.com \
	-d kubana.vungle.com \
	-d ltv-data-api.kube-prod.vungle.com \
	-d ltv-spark-webui.kube-prod.vungle.com \
	-d data-ext.vungle.com
	
	
* It will check every single domain with a callback and unique URL	
	
## Procedure on how to create the cert in kube (manual way)

Currently we only have a manual way of creating the cert and renewing them.  We will need to automate this process after
we know we want to use this and it is working.

1) In the namespace get the lets-encrypt pod IP

2) With the pod's IP open up 2 web browser windows to
  
    http://<IP>:57575
    
    User: root
    password: password
    
3) Run the steps in this section `Procedures to create a new cert using the CLI`

It will give you some commands to create a simple web server to serve out the unique string for the lets-encrypt
URL callback.  Copy this.

4) In the second web browser window, paste in the code snippet

5) Go back to the first window and hit the enter key.  It will try to hit the URL.  

If you look at your second window, it should have registered a `GET` request.  If not then there is something wrong.
Your ingress route might not be correct.  You will have to fix this.  You can test if it will work when you redo this
by making sure you can hit this URL:

    http://<domain_name>/.well-known/acme-challenge/<unique string>
    
6) The certs has been generated.

## Procedure to create the kube secret from the cert

1) Certs are located in /etc/letsencrypt/live/ for the domain

2) Base64 encode the 2 keys

    cat /etc/letsencrypt/live/vungle.io/fullchain.pem | base64 -w0
    
    cat /etc/letsencrypt/live/vungle.io/privkey.pem | base64 -w0

3) Put the values into the cert-secret-template.yaml

4) Create the secret in kube

5) Save the entire /etc/letsencrypt to S3 for next time and renewal of this cert
