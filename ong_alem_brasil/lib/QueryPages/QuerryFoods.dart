
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pluto_grid/pluto_grid.dart';


class QuerryFoods extends StatefulWidget {
  const QuerryFoods({Key? key}) : super(key: key);

  @override
  State<QuerryFoods> createState() => _QuerryFoodsState();
}

class _QuerryFoodsState extends State<QuerryFoods> {
 final List<PlutoColumn> columns = <PlutoColumn>[
    
    PlutoColumn(
      width: 447,
      title: 'Quantidade',
      field: 'quantidade',
      type: PlutoColumnType.number(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      width: 447,
      title: 'Data de Recebimento',
      field: 'date',
      type: PlutoColumnType.date(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      textAlign: PlutoColumnTextAlign.center,
      frozen: PlutoColumnFrozen.none,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
  ];
  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'tipo': PlutoCell(value: 'Basica'),
        'quantidade': PlutoCell(value: 15),
        'date': PlutoCell(value: '2022-02-08'),
      },
    ),
    PlutoRow(
      cells: {
        'tipo': PlutoCell(value: 'Extra'),
        'quantidade': PlutoCell(value: 22),
        'date': PlutoCell(value: '2022-06-20'),
      },
    ),
    PlutoRow(
      cells: {
        'tipo': PlutoCell(value: 'Extra'),
        'quantidade': PlutoCell(value: 23),
        'date': PlutoCell(value: '2022-06-12'),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Quantidade de Produtos', fields: ['quantidade'], expandedColumn: true),
    PlutoColumnGroup(title: 'Data de Recebimento', fields: ['date'], expandedColumn: true),
  ];
  late final PlutoGridStateManager stateManager;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body:  Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: SizedBox(
              width: 900,
              child: PlutoGrid(
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
                      createFooter: (stateManager) {
                          stateManager.setPageSize(20, notify: false); // default 40
                          return PlutoPagination(stateManager);
                        },
                    ),
            ),
          ),
        ),
      );
  }
}
