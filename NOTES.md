# The DSSG/DSaPP Stack

Updated: 11 December 2014

Author: Hunter Owens (howens@uchicago.edu)

## Main Stack

The main deployment of the stack is an OpsWorks setup, which is Amazon's custom Chef installation. This repo contains custom recipes. 

We have 2 layers, or different types of servers. 

- One type is a NFS server layer, of which Columbus is our main NFS server. It has 2 drives attached currently. 

- The other type is an project instance, which mounts the NFS drives and has all our users on it. Check the IAM provision in OpsWork to add users to instances. 

## Data Storage

### RDS
We have a main RDS postgres machine, along with a smaller mySQL machine in RDS. These are our database servers. At times, we have also deployed Redshift instances. 

### S3
We store CSVs and other blob info in S3. See each bucket for more info.

## Legacy Machines
The first summer, along with some machines this summer, live outside of OpsWorks. Each machine is different, but use the EC2 console to get info. 

## Other Hosts
We have information stored in various different cloud providers, see list below for info and reason. 

- Azure: Has MS SQL Server and .bak files from Educational Institutions. 

- Midway: Is a UChicago Cluster you have access to, can be used to schedule cluster jobs. [Docs](http://midway.rcc.uchicago.edu)

- Midway Postgres: RCC (the unit that) has a test postgres database that we have access to. Nothing is there currently. 

- OSDC: Open Science Data Cloud. Was used for HIPAA compliance. 
