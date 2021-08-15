import 'package:flutter_spotify_clone/core/common/utils/api_result.dart';
import 'package:flutter_spotify_clone/core/common/utils/mock_utils.dart';

class HomeDatasource {
  Future<ApiResult> getAlbums() async {
    try {
      final mockData = await MockUtils.getMock('albums');

      return SuccessData(
        data: mockData,
      );
    } on Exception catch (_) {
      return ErrorData(
        errorMessage: '',
        data: null,
      );
    }
  }
}
