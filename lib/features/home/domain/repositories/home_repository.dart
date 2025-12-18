import 'package:ticket_platform_mobile/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<HomeEntity> getHomeData();
}
