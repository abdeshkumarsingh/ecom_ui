import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';

class FilterBottomSheet extends StatefulWidget {
  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  Map<String, bool> categories = {
    'Eggs': true,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'Fast Food': false,
  };

  Map<String, bool> brands = {
    'Individual Collection': false,
    'Cocola': true,
    'Ifad': false,
    'Kazi Farmas': false,
  };

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              // Top bar to indicate draggable
              Container(
                width: 40,
                height: 5,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Filters',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 48),
                ],
              ),

              Expanded(
                child: ListView(
                  controller: scrollController,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...categories.keys.map(
                      (key) => CheckboxListTile(
                        value: categories[key],
                        onChanged:
                            (val) => setState(() => categories[key] = val!),
                        title: Text(key),
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Brand',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ...brands.keys.map(
                      (key) => CheckboxListTile(
                        value: brands[key],
                        onChanged: (val) => setState(() => brands[key] = val!),
                        title: Text(key),
                        activeColor: Colors.green,
                        checkColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              WideButton(
                name: 'Apply Filter',
                onPressed: () {
                  Navigator.of(context).pop();
                  //your next code logics here
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
