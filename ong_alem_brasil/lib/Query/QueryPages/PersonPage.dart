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
    ),
    PlutoColumn(
      title: 'Celular',
      field: 'phone',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Email',
      field: 'email',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Data de nascimento',
      field: 'date_of_birth',
      type: PlutoColumnType.date(),
    ),
  ];
  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'Mike'),
        'phone': PlutoCell(value: '1199402030'),
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
      return 
        PlutoGrid(
          columns: columns,
          rows: rows,
          columnGroups: columnGroups,
          onLoaded: (PlutoGridOnLoadedEvent event) {
            stateManager = event.stateManager;
          },
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          configuration: const PlutoGridConfiguration(
            enableColumnBorder: true,
          ),
        );
  }
}
