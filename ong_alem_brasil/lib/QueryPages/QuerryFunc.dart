import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pluto_grid/pluto_grid.dart';

class QuerryFunc extends StatefulWidget {
  const QuerryFunc({Key? key}) : super(key: key);

  @override
  State<QuerryFunc> createState() => _QuerryFuncState();
}

class _QuerryFuncState extends State<QuerryFunc> {
final List<PlutoColumn> columns = <PlutoColumn>[
    
    PlutoColumn(
      width: 180,
      title: 'Email',
      field: 'email',
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
      title: 'Nome',
      field: 'name',
      type: PlutoColumnType.text(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
  ];
  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Douglas'),
        'email': PlutoCell(value: 'douglas@email.com'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Roger'),
        'email': PlutoCell(value: 'roger@email.com'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Gabi'),
        'email': PlutoCell(value: 'gabi@email.com'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Diana'),
        'email': PlutoCell(value: 'diana@email.com'),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Nome', fields: ['name'], expandedColumn: true),
    PlutoColumnGroup(title: 'Email', fields: ['email'], expandedColumn: true),
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
