A flask deployment spike.

## To Build

`docker build -t flask_spike .`

## To Run

`docker run -p 7777:5000 -d flask_spike`

Port 5000 is the default Flask debug port (container port).

7777 is an arbitrary port on the host machine.

## To validate

Navigate to `hostname:7777/` and see a hello world message.