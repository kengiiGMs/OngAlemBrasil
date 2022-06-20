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
      width: 212,
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
      width: 212,
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
      PlutoColumn(
      width: 160,
      title: 'Data de Nascimento',
      field: 'nascimento',
      type: PlutoColumnType.date(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
      PlutoColumn(
      width: 150,
      title: 'Sexo',
      field: 'sexo',
      type: PlutoColumnType.text(),
      readOnly: true,
      applyFormatterInEditing: false,
      enableContextMenu: false,
      frozen: PlutoColumnFrozen.none,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
      PlutoColumn(
      width: 160,
      title: 'Celular',
      field: 'celular',
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
        'name': PlutoCell(value: 'Douglas dos Santos'),
        'email': PlutoCell(value: 'douglas@email.com'),
        'nascimento': PlutoCell(value: '1994-04-12'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11994030943'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Roger da Motta'),
        'email': PlutoCell(value: 'roger@email.com'),
        'nascimento': PlutoCell(value: '1998-12-22'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11992404303'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Gabi Almeida'),
        'email': PlutoCell(value: 'gabi@email.com'),
        'nascimento': PlutoCell(value: '1997-02-06'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11993024502'),
      },
    ),
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Diana da Silva'),
        'email': PlutoCell(value: 'diana@email.com'),
        'nascimento': PlutoCell(value: '1991-07-29'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '119942039502'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Alice'),
        'email': PlutoCell(value: 'alice@email.com'),
        'nascimento': PlutoCell(value: '1992-03-11'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11994020323'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Helena'),
        'email': PlutoCell(value: 'helena@email.com'),
        'nascimento': PlutoCell(value: '1993-04-21'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11993920302'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Sophia'),
        'email': PlutoCell(value: 'sophia@email.com'),
        'nascimento': PlutoCell(value: '2000-01-14'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11992323845'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Laura'),
        'email': PlutoCell(value: 'laura@email.com'),
        'nascimento': PlutoCell(value: '2003-07-20'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11993029405'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Rafael'),
        'email': PlutoCell(value: 'rafael@email.com'),
        'nascimento': PlutoCell(value: '2002-10-17'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '119942039502'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Pedro'),
        'email': PlutoCell(value: 'pedro@email.com'),
        'nascimento': PlutoCell(value: '1989-06-07'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11994030495'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Lucas'),
        'email': PlutoCell(value: 'lucas@email.com'),
        'nascimento': PlutoCell(value: '2005-08-29'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11994023940'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Antonio'),
        'email': PlutoCell(value: 'antonio@email.com'),
        'nascimento': PlutoCell(value: '1981-01-27'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11994020302'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Eduarda'),
        'email': PlutoCell(value: 'eduarda@email.com'),
        'nascimento': PlutoCell(value: '1990-03-20'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11994020934'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Luana'),
        'email': PlutoCell(value: 'luana@email.com'),
        'nascimento': PlutoCell(value: '1999-09-14'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11992030492'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Danilo'),
        'email': PlutoCell(value: 'danilo@email.com'),
        'nascimento': PlutoCell(value: '1992-04-22'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11993234092'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Douglas'),
        'email': PlutoCell(value: 'douglas@email.com'),
        'nascimento': PlutoCell(value: '2002-11-02'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11993029456'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Andre'),
        'email': PlutoCell(value: 'andre@email.com'),
        'nascimento': PlutoCell(value: '2004-02-06'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11992320402'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Bruno'),
        'email': PlutoCell(value: 'bruno@email.com'),
        'nascimento': PlutoCell(value: '1993-02-12'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11994232502'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Rodrigo'),
        'email': PlutoCell(value: 'rodrigo@email.com'),
        'nascimento': PlutoCell(value: '2002-04-29'),
        'sexo': PlutoCell(value: 'masculino'),
        'celular': PlutoCell(value: '11992393950'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Beatriz'),
        'email': PlutoCell(value: 'beatriz@email.com'),
        'nascimento': PlutoCell(value: '2000-01-02'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '11997895950'),
      },
    ),
     PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Heloisa'),
        'email': PlutoCell(value: 'heloisa@email.com'),
        'nascimento': PlutoCell(value: '2001-12-23'),
        'sexo': PlutoCell(value: 'feminino'),
        'celular': PlutoCell(value: '119989764592'),
      },
    ),
  ];
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Nome', fields: ['name'], expandedColumn: true),
    PlutoColumnGroup(title: 'Email', fields: ['email'], expandedColumn: true),
    PlutoColumnGroup(title: 'Data de Nascimento', fields: ['nascimento'], expandedColumn: true),
    PlutoColumnGroup(title: 'Sexo', fields: ['sexo'], expandedColumn: true),
    PlutoColumnGroup(title: 'Celular', fields: ['celular'], expandedColumn: true),
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
                        onLoaded: (PlutoGridOnLoadedEvent event) {
                          event.stateManager.setShowColumnFilter(true);
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
