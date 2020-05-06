import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'drawerpage.dart';
//void main() => runApp(new AddProduct());

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //title: 'HAAT BAJAR',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Sell a Product'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _catagories = <String>['', 'Vegitables', 'Fruits', 'Clothes', 'Electronics'];
  String _cataggory = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                   new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                         // icon: const Icon(Icons.color_lens),
                          labelText: 'Choose a Catagory',
                        ),
                        isEmpty: _cataggory == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _cataggory,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _cataggory = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _catagories.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                     // icon: const Icon(Icons.person),
                      hintText: 'Enter a product name',
                      labelText: 'Product Name',
                    ),
                  ),
                   new TextFormField(
                    decoration: const InputDecoration(
                     // icon: const Icon(Icons.person),
                      hintText: 'Enter a product name',
                      labelText: 'Product Image',
                        //ImageContainer();
                    ),
                  ),
                  //ImageContainer(),
                  new Container(
                    //text:Text('Product Image'),
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.grey,width:4.0),
                    ),
                    padding:const EdgeInsets.all(20.0),
                    child:Text('Product Image Here',
                             style:Theme.of(context).textTheme.headline,
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Product Price ',
                      labelText: 'Product Price',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter product quantity',
                      labelText: 'Product Quantity',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Product Location',
                      labelText: 'Product Location',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                     // icon: const Icon(Icons.email),
                      hintText: 'Enter Product Description',
                      labelText: 'Product Description',
                    ),
                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        //child:const Icon(Icons.plus),
                        child: const Text('Add Product',style:TextStyle(fontWeight:FontWeight.bold,)),
                        onPressed:(){
                           Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) =>NavDrawerExample()),  
            );    
                        },
                      )),
                ],
              ))),
    );
  }
}
class SecondRoute extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Second Screen"),  
      ),  
      body: Center(  
        child: RaisedButton(  
          color: Colors.blueGrey,  
          onPressed: () {  
            Navigator.pop(context);  
          },  
          child: Text('Go back'),  
        ),  
      ),  
    );  
  }  
}  
class ImageContainer extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body:SizedBox(
      width: 200.0,
      height: 300.0,
      child: const Card(child: Text('Product Image',
      style:TextStyle(fontWeight:FontWeight.bold,))),
)
    );
  }
}