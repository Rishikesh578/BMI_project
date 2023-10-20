import 'package:flutter/material.dart';

class classification extends StatelessWidget {
  const classification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left),
        
      ),
      body: Center(
        
        child: Column(
          children: [
        DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('Weight Status',style: TextStyle(fontWeight:FontWeight.bold))),
            DataColumn(label: Text(' BMI Values',style: TextStyle(fontWeight:FontWeight.bold))),
            DataColumn(label: Text(' Background Color',style: TextStyle(fontWeight:FontWeight.bold))),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Under Weight')),
                DataCell(Text('Below 18 or <18')),
                DataCell(
                  Container(
                    color: Colors.red.shade200,
                  )
                ),
                
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Healthy')),
                DataCell(Text('In between 18-25')),
                DataCell(
                  Container(
                    color:Colors.green.shade200,
                  )
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Over Weight')),
                DataCell(Text('Above 25 pr >25')),
                DataCell(
                  Container(
                    color:Colors.orange.shade200,
                  )
                ),
              ],  
            ),
          ],     
    ),
    SizedBox(height: 40),
    TextButton(
  onPressed: () {
    Navigator.of(context).pop();
  },
  child: Text('Go Back'),
)
        ]
        ),
    )
    );
      
  }
}