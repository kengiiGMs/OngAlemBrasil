import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class QuerryPerson extends StatefulWidget {
  const QuerryPerson({Key? key}) : super(key: key);

  @override
  State<QuerryPerson> createState() => _QuerryPersonState();
}

class _QuerryPersonState extends State<QuerryPerson> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    
    PlutoColumn(
      width: 120,
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
      width: 120,
      title: 'Celular',
      field: 'phone',
      type: PlutoColumnType.text(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      width: 180,
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
      width: 150,
      title: 'Data de nascimento',
      field: 'date_of_birth',
      type: PlutoColumnType.date(),
      enableContextMenu: false,
      readOnly: true,
      applyFormatterInEditing: false,
      titleTextAlign: PlutoColumnTextAlign.center,
      textAlign: PlutoColumnTextAlign.center,
      frozen: PlutoColumnFrozen.none,
    ),
     PlutoColumn(
      width: 150,
      title: 'CEP',
      field: 'cep',
      type: PlutoColumnType.text(),
      enableContextMenu: false,
      readOnly: true,
      applyFormatterInEditing: false,
      titleTextAlign: PlutoColumnTextAlign.center,
      textAlign: PlutoColumnTextAlign.center,
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
        'cep': PlutoCell(value: '09830000'),
        
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Jack'),
        'phone': PlutoCell(value: '11993023040'),
        'date_of_birth': PlutoCell(value: '2021-02-01'),
        'email': PlutoCell(value: 'jack@email.com'),
        'cep': PlutoCell(value: '03029333'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Suzi'),
        'phone': PlutoCell(value: '11994024582'),
        'date_of_birth': PlutoCell(value: '2021-03-01'),
        'email': PlutoCell(value: 'suzi@email.com'),
        'cep': PlutoCell(value: '09402000'),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Nome', fields: ['name'], expandedColumn: true),
    PlutoColumnGroup(title: 'Celular', fields: ['phone'], expandedColumn: true),
    PlutoColumnGroup(title: 'Email', fields: ['email'], expandedColumn: true),
    PlutoColumnGroup(title: 'Data de Nascimento', fields: ['date_of_birth'], expandedColumn: true),
    PlutoColumnGroup(title: 'CEP', fields: ['cep'], expandedColumn: true),
    
  
  ];
  late final PlutoGridStateManager stateManager;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
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
                  columnHeight: 30.0,
                  rowHeight: 40.0,
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
