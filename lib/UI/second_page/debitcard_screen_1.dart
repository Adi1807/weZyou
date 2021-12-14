import '../../screens.dart';

class DebitCardScreen1 extends StatelessWidget {
  static const String routeName = 'checkout screen 1';

  const DebitCardScreen1({Key? key}) : super(key: key);

  Widget circleIcon() {
    return Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.circle,
          color: Colors.pink,
        ));
  }

  Widget dashedLine() {
    return Expanded(
      child: Container(
        height: 1,
        color: Colors.pink,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          circleIcon(),
                          dashedLine(),
                          circleIcon(),
                          dashedLine(),
                          circleIcon(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.pink),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.pink),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Save',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink,
                                  elevation: 0,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 20),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.pink),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Name on Card'),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Name on Card'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('Name on Card'),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('Name on Card'),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    )),
                horizontalTitleGap: 0,
                title: Text(
                  'Save this card details',
                  style: TextStyle(color: blackColor),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 55, vertical: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.pink),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 65, vertical: 20),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.pink),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFormFieldWidget(String labelName) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelName,
      ),
    );
  }
}
