import 'package:moor_flutter/moor_flutter.dart';

import 'dao/locations.dart';
import 'tables/location.dart';

part 'database.g.dart';

@UseMoor(
  tables: [
    TeslaLocations,
  ],
  daos: [
    LocationsDao,
  ],
  queries: {
    '_resetCategory': 'UPDATE todos SET category = NULL WHERE category = ?',
  },
)
class DatabaseService extends _$DatabaseService {
  DatabaseService()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAllTables();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // if (from == 1) {
        //   await m.addColumn(todos, todos.targetDate);
        // }
        m.createAllTables();
      },
    );
  }
}
