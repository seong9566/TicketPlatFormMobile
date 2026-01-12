import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/request/favorite_toggle_req_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/response/favorite_resp_dto.dart';
import 'package:ticket_platform_mobile/features/wishlist/data/dto/response/favorite_toggle_resp_dto.dart';

abstract class FavoriteRemoteDataSource {
  Future<BaseResponse<List<FavoriteRespDto>>> getFavorites();
  Future<BaseResponse<FavoriteToggleRespDto>> toggleFavorite(
    FavoriteToggleReqDto req,
  );
}

class FavoriteRemoteDataSourceImpl implements FavoriteRemoteDataSource {
  final Dio _dio;
  final String _endpoint = ApiEndpoint.favoriteTickets;

  FavoriteRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<List<FavoriteRespDto>>> getFavorites() async {
    final response = await _dio.get(_endpoint);

    return BaseResponse<List<FavoriteRespDto>>.fromJson(
      response.data as Map<String, dynamic>,
      (json) => (json as List)
          .map((e) => FavoriteRespDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Future<BaseResponse<FavoriteToggleRespDto>> toggleFavorite(
    FavoriteToggleReqDto req,
  ) async {
    final response = await _dio.post(_endpoint, data: req.toMap());

    return BaseResponse<FavoriteToggleRespDto>.fromJson(
      response.data as Map<String, dynamic>,
      (json) => FavoriteToggleRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
