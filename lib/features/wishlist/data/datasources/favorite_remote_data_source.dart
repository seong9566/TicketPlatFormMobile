import 'package:dio/dio.dart';
import 'package:ticket_platform_mobile/core/network/api_endpoint.dart';
import 'package:ticket_platform_mobile/core/network/base_response.dart';
import 'package:ticket_platform_mobile/core/network/safe_api_call.dart';
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

  FavoriteRemoteDataSourceImpl(this._dio);

  @override
  Future<BaseResponse<List<FavoriteRespDto>>> getFavorites() async {
    return safeApiCall<List<FavoriteRespDto>>(
      apiCall: (options) =>
          _dio.get(ApiEndpoint.favoriteTickets, options: options),
      apiName: 'getFavoriteTickets',
      dataParser: (json) {
        if (json is List) {
          return json
              .map((e) => FavoriteRespDto.fromJson(e as Map<String, dynamic>))
              .toList();
        }
        return [];
      },
    );
  }

  @override
  Future<BaseResponse<FavoriteToggleRespDto>> toggleFavorite(
    FavoriteToggleReqDto req,
  ) async {
    return safeApiCall<FavoriteToggleRespDto>(
      apiCall: (options) => _dio.post(
        ApiEndpoint.favoriteTickets,
        data: req.toMap(),
        options: options,
      ),
      apiName: 'toggleFavorite',
      dataParser: (json) =>
          FavoriteToggleRespDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
