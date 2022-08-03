# Planespotter's Friend
# THIS FILE IS OBSOLETE. DO NOT USE UNLESS YOU REALLY HAVE TO.

Just a quick tool with VBScript I made when I was younger to parse data from FlightRadar24 into CSV format. 
It uses Bash for installation, but you can just run these files without the need for a clone.
I used VBScript's WshShell.SendKeys function for this, so it might be a bit clunky in 2022 - if anyone has any improvements, pull-request or email me on northpolaris@protonmail.com.
## Installation

You can download the raw 'flight.vbs' yourself, or clone this repo using:

```
git clone https://github.com/POLARIS183/plane.git
cd plane
```

Easy stuff!

## The program itself

Quick notice: Before you run the program, you'll need to have an idea of what flight you'd like to track.
So, for instance, the flight path for Kenya Airways 784 from Nairobi to Cape Town, taking off on the 3rd of February 2022, uses the URL:
```
https://www.flightradar24.com/data/flights/kq784#2ab2c104
```
When the the program asks for an ID, enter everything after the hash (#).
So:
```
2ab2c104
```
This should help in running the program.

### Running the program

Put this folder on your path for easier usage, or cd to the 'plane' folder, and use the command:
```
flight
```
OR
```
flight.vbs
```

That's it! Follow the instructions on screen, and you should get a CSV or JSON of your desired flight.


## Contributing

Contributions are always welcome!

Do you have an improvement you'd like to make?
Is there a bug in the code on some OS's?
Would you like to request another feature?

Just email me at northpolaris@protonmail.com, or send me a pull request.

Thanks for taking the time to read this README.
POLARIS183.
