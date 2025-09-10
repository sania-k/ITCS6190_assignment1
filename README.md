## Assignment Description
A two-container stack on transit time and cost in Charlotte, New York City, and San Francisco using Docker. 
One container will run a PostgreSQL database containing dummy entries on the transit time and cost in the three cities.
The other container will host a Python application that will will connect to the database, query some number of rows,
compute the statistics below, and then print and save the results.
- Total number of trips
- Average fare by city
- Top N (default 5) trips by city, minutes, and fare

## Setup and Execution
### Dependencies
First, confirm you have the following installed on your machine:
- **Docker Desktop** - Confirm you can run basic Docker commands such as `docker build`, `docker run`, and `docker ps`
- **Docker Compose** - Needed to run multi-container applications
- **Python** - Needed to run the app
- **Port 5432** - Confirm the port is free for the database using the following command:

  ```
  netstat -an | find ":5432"
  ```
  If it is busy, follow optional step 2 below
- **make** - Needed to build, run, stop, and delete the containers
  Can be installed from their [website](https://gnuwin32.sourceforge.net/packages/make.htm)
### 1. Clone the repo
Use the following command in your desired location through your terminal
```
git clone https://github.com/sania-k/ITCS6190_assignment1.git
```
Move into the repo
```
cd ITCS6190_assignment1
```

### 2. Define database port [optional] 
If the port 5432 on your local machine is occupied, go into the `compose.yml` file and alter the line 
`DB_PORT: "5432"` with a free port

### 3. Build the stack
Run the following command to build the app
```
make build
```

### 4. Run the stack
Run the following command to compose the stack:
```
make up
```
The results will print in your terminal

### 5. Stop the stack
Run the following to stop and remove the containers and volumes
```
make down
```

### 6. Clear data
Run the following to delete the output
```
make clear
```
This runs down (removing the containers and volumes) and removes the output folder to stop any overwriting errors

### 7. Reruns
In order to do the following with one command for reruns, use the following command
```
make all
```
This runs clean to clear all data and then rebuilds the app by running up

