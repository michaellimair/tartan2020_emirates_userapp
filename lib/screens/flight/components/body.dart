import 'package:flutter/material.dart';
import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';

class Body extends StatelessWidget {
  Widget ticketDetailsWidget(String firstTitle, String firstDesc, String secondTitle, String secondDesc) {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    firstTitle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      firstDesc,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    secondTitle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      secondDesc,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterTicketWidget(
        width: 350.0,
        height: 500.0,
        isCornerRounded: true,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TicketDestinationAndClass(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Flight Ticket',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 40.0),
                      child: ticketDetailsWidget(
                          'Passengers', 'Michael', 'Date', 'Feb 15, 2020'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 40.0),
                      child: ticketDetailsWidget(
                          'Flight', 'EK203', 'Gate', '66B'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 40.0),
                      child: ticketDetailsWidget(
                          'Class', 'Business', 'Seat', '21B'),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                child: Container(
                  width: 250.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/assets/barcode.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
                child: Text(
                  '9824 0972 1742 1298',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TicketDestinationAndClass extends StatelessWidget {
  const TicketDestinationAndClass({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 120.0,
          height: 25.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(width: 1.0, color: Colors.green),
          ),
          child: Center(
            child: Text(
              'Business Class',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              'DXB',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.flight_takeoff,
                color: Colors.pink,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'JFK',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }
}