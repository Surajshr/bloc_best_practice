import 'package:varosha_app/core/services/storage_service/base_storage_service.dart';

class ProductLocalDataSource extends BaseStorageService {
  static const String _tableName = 'favorite_products';

  ProductLocalDataSource()
      : super(
          tableName: _tableName,
          databaseName: 'ecommerce.db',
          createTableQuery: '''
            CREATE TABLE $_tableName(
              product_id INTEGER PRIMARY KEY
            )
          ''',
        );

  Future<List<int>> getFavoriteProductIds() async {
    final results = await getAll();
    return results.map((row) => row['product_id'] as int).toList();
  }

  Future<void> toggleFavorite(int productId) async {
    final isFavorited = await isFavorite(productId);

    if (isFavorited) {
      await delete(
        where: 'product_id = ?',
        whereArgs: [productId],
      );
    } else {
      await insert({'product_id': productId});
    }
  }

  Future<bool> isFavorite(int productId) async {
    final results = await query(
      where: 'product_id = ?',
      whereArgs: [productId],
    );
    return results.isNotEmpty;
  }
}
