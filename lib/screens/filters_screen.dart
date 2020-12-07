import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _lactosFree = false;
  var _vegan = false;
  var _vegetarian = false;

  Widget _buildSwitchList(String title, String description, bool currentValue,
      Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filters"),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Adjust your meal section",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _buildSwitchList(
                  "Gluten Free",
                  "Only include gluten free meals",
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                _buildSwitchList(
                  "Lactos Free",
                  "Only include lactos free meals",
                  _lactosFree,
                  (newValue) {
                    setState(() {
                      _lactosFree = newValue;
                    });
                  },
                ),
                _buildSwitchList(
                  "Vegan Free",
                  "Only include vegan free meals",
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                _buildSwitchList(
                  "Vegetarian Free",
                  "Only include vegetarian free meals",
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
              ],
            ))
          ],
        ));
  }
}
