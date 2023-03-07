import 'package:actual/common/model/cursor_pagination_model.dart';
import 'package:actual/restaurant/model/restaurant_detail_model.dart';
import 'package:actual/restaurant/model/restaurant_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart' hide Headers;

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository {
  //'http://$ip/restaurant'
  factory RestaurantRepository(Dio dio, {String baseUrl}) =
      _RestaurantRepository;

  //'http://$ip/restaurant/'
  @GET('/')
  @Headers(<String, dynamic>{
    'accessToken': 'true',
  })
  Future<CursorPagination<RestaruantModel>> paginate();

  //'http://$ip/restaurant/:id'
  @GET('/{id}')
  @Headers(<String, dynamic>{
    'accessToken': 'true',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}
