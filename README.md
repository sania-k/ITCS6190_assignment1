## Assignment Description
A two-container stack on transit time and cost in multiple cities using Docker. 
One container will run a PostgreSQL database containing dummy entries on the transit time and cost in the three cities.
The other container will host a Python application that will will connect to the database, query some number of rows,
compute the statistics below, and then print and save the results.
- Total number of trips
- Average fare by city
- Top N (default 10) trips by city, minutes, and fare

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

### 2. Define database port and number of cities[optional] 
Alter `compose.yml` to personalize the stack
- If the port 5432 on your local machine is occupied, go into the `compose.yml` file and alter the line 
`DB_PORT: "5432"` with a different port number
- If you want a different number of cities in your app summary, alter the line `APP_TOP_N: "10"` as desired



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
The results will print in your terminal, as well as save in `out/summary.json`

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


## Output
The output file will look similar to this:
```
{
  "total_trips": 24,
  "avg_fare_by_city": [
    {
      "city": "Chicago",
      "avg_fare": 32.266666666666666
    },
    {
      "city": "Houston",
      "avg_fare": 45.4
    },
    {
      "city": "Seattle",
      "avg_fare": 12.466666666666667
    },
    {
      "city": "Los Angeles",
      "avg_fare": 15.36
    },
    {
      "city": "New York",
      "avg_fare": 17.4
    },
    {
      "city": "San Francisco",
      "avg_fare": 13.566666666666666
    },
    {
      "city": "Boston",
      "avg_fare": 21.5
    },
    {
      "city": "Charlotte",
      "avg_fare": 17.283333333333335
    }
  ],
  "top_by_minutes": [
    {
      "city": "Los Angeles",
      "minutes": 56,
      "fare": 24.24
    },
    {
      "city": "Los Angeles",
      "minutes": 54,
      "fare": 8.54
    },
    {
      "city": "Los Angeles",
      "minutes": 43,
      "fare": 13.3
    },
    {
      "city": "Charlotte",
      "minutes": 34,
      "fare": 19.35
    },
    {
      "city": "Boston",
      "minutes": 28,
      "fare": 29.3
    },
    {
      "city": "Houston",
      "minutes": 26,
      "fare": 22.4
    },
    {
      "city": "Boston",
      "minutes": 26,
      "fare": 22.4
    },
    {
      "city": "Boston",
      "minutes": 25,
      "fare": 12.8
    },
    {
      "city": "Charlotte",
      "minutes": 21,
      "fare": 20.0
    },
    {
      "city": "Seattle",
      "minutes": 21,
      "fare": 12.2
    }
  ]
}
```

## Troubleshooting
- If the app exits immediately due to an inability to connect to the database, re-run `make up` to attempt reconnecting.
- If permission is denied for out/ folder, make sure that `out/` exists and has write permisions. To fix this you can run the following to remake the directory:
  ```
  rm -rf out && mkdir -p out
  ```
- If port 5432 is busy, edit `compose.yml` as described in step 2


