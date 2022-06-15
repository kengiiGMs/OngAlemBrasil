import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({ Key? key }) : super(key: key);

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    
    PlutoColumn(
      
      title: 'Nome',
      field: 'name',
      type: PlutoColumnType.text(),
    /*  type: PlutoColumnType.select([
          'Apple', 'Banana', 'Orange',
      ]), */
      enableContextMenu: false,
      readOnly: true,
      applyFormatterInEditing: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      
      title: 'Celular',
      field: 'phone',
      type: PlutoColumnType.text(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      
      title: 'Email',
      field: 'email',
      type: PlutoColumnType.text(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      
      title: 'Data de nascimento',
      field: 'date_of_birth',
      type: PlutoColumnType.date(),
      enableContextMenu: false,
      readOnly: true,
      applyFormatterInEditing: false,
      frozen: PlutoColumnFrozen.none,
    ),
  ];
  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Mike'),
        'phone': PlutoCell(value: '11994020310'),
        'date_of_birth': PlutoCell(value: '2021-01-01'),
        'email': PlutoCell(value: 'mike@email.com'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Jack'),
        'phone': PlutoCell(value: '11993023040'),
        'date_of_birth': PlutoCell(value: '2021-02-01'),
        'email': PlutoCell(value: 'jack@email.com'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Suzi'),
        'phone': PlutoCell(value: '11994024582'),
        'date_of_birth': PlutoCell(value: '2021-03-01'),
        'email': PlutoCell(value: 'suzi@email.com'),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Nome', fields: ['name'], expandedColumn: true),
    PlutoColumnGroup(title: 'Celular', fields: ['phone'], expandedColumn: true),
    PlutoColumnGroup(title: 'Email', fields: ['email'], expandedColumn: true),
    PlutoColumnGroup(title: 'Data de Nascimento', fields: ['date_of_birth'], expandedColumn: true),
  
  ];
  late final PlutoGridStateManager stateManager;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:  PlutoGrid(
                rowColorCallback: (rowColorContext) =>Colors.lightGreen,
                columns: columns,
                rows: rows,
                columnGroups: columnGroups,
                onLoaded: (PlutoGridOnLoadedEvent event) {
                  stateManager = event.stateManager;
                  stateManager.setShowColumnFilter(true, notify: false);
                },
                onChanged: (PlutoGridOnChangedEvent event) {
                  print(event);
                },
                configuration: PlutoGridConfiguration(
                  columnHeight: 50.0,
                  rowHeight: 60.0,
                  enableColumnBorder: true,
                  gridBackgroundColor:Colors.green,
                  gridBorderColor:Colors.black,
                  activatedColor: Colors.lightGreenAccent,
                  activatedBorderColor: Colors.white,
                  gridBorderRadius: BorderRadius.circular(5),
                ),
              ),
      );
  }
}


