import '../../screens.dart';

class DebitCardScreen2 extends StatelessWidget {
  static const String routeName = 'checkout screen 2';

  const DebitCardScreen2({Key? key}) : super(key: key);

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
                height: 20,
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
                  'Billing address is same as delivery address',
                  style: TextStyle(color: blackColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Street 1'),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('Street 2'),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: textFormFieldWidget('City'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('State'),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: textFormFieldWidget('Country'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Back',
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
                        'Next',
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
