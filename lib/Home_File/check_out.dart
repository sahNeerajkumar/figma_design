
import 'package:flutter/material.dart';

import 'check_out2.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int _selectedOption = 0;
  bool isChecked =true;

  @override
  Widget build(BuildContext context) {
    var widthScreen =  MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.arrow_back_ios_new)))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Check Out',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                child: Row(children: [
                  InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/image/location.png'),
                      height: 25,
                      width: 25,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '.   .   .  .  .  .',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/image/credit-card.png'),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '.   .   .  .  .  .',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.grey,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text(
                  'STEP 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Shipping',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'First name*',
                      label: Text(
                        'First name*',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Last name*',
                          label: Text(
                            'Last name*',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Field is required',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExpansionTile(
                      title: Text(
                        'Country*',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      children: [
                        ListTile(
                          title: Text('India'),
                        )
                      ],
                    ),
                    Divider(
                      height: 2,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Street name*',
                      label: Text(
                        'Street name*',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'City*',
                      label: Text(
                        'City*',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'State/Province',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Zip-code*',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone number*',
                  ),
                ),
              ),
              //Shipping method
              RadioListTile(
                value: 0,
                groupValue: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Free'),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Delivery to home')
                  ],
                ),

                subtitle: Text('Delivery from 3 to 7 business days'),
                // secondary: Icon(Icons.check_circle, color: Colors.green),
              ),
              RadioListTile(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$9.90'),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Delivery to home')
                  ],
                ),
                subtitle: Text('Delivery from 4 to 6 business days'),
              ),
              RadioListTile(
                value: 2,
                groupValue: _selectedOption,
                onChanged: (int? value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\$9.90'),
                    SizedBox(
                      width: 12,
                    ),
                    Text('Fast Delivery')
                  ],
                ),
                subtitle: Text('Delivery from 2 to 3 business days'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Coupon Coude',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(
                      height: 80,
                      child: Card(
                        color: Colors.lightBlue.shade100,
                        child: Center(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Have a code? type it here...',suffix: Text('Validate'),
                              border: OutlineInputBorder(borderSide: BorderSide.none)

                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Billing Adress',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.8,
                      child: Checkbox(value: isChecked, onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                        activeColor: Colors.green.shade900,
                        checkColor: Colors.greenAccent,),
                    ),
                    SizedBox(width: 20,),
                    Text('Copy address data from shipping',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                  ],



                ),),
              Center(
                child: SizedBox(
                  height: 60,
                  width: widthScreen*0.8,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut2(),));
                      },style: OutlinedButton.styleFrom(backgroundColor: Colors.black), child: Text('Continue to payment',style: TextStyle(color: Colors.white,fontSize: 18),)),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
