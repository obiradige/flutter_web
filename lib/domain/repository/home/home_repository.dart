import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:palet/application/locator.dart';
import 'package:palet/domain/model/all_classified_model.dart';
import 'package:palet/domain/model/classified_response_model.dart';
import 'package:palet/domain/model/create_advert_model.dart';

abstract class HomeRepository {
  Future<List<BaseAllClassifiedModel>?> getAllClassified();
  Future<List<BaseAllClassifiedModel>?> getMyClassified({required String companyId});
  Future<CreateAdvertResponse> createAdvert({required CreateAdvertRequest createAdvertRequest});
  Future<List<BaseClassifiedsResponse>> getClassifield();
}

class HomeRepositoryImpl implements HomeRepository {
  final Dio dio = getIt<Dio>();
  @override
  Future<List<BaseAllClassifiedModel>?> getAllClassified() async {
    try {
      final response = await dio.get('/V2/Classified/get_classifieds');
      return ClassifiedModel.fromJson(response.data).data;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? e.message;
      throw DioException(requestOptions: e.requestOptions, error: errorMessage);
    }
  }
  
  @override
  Future<List<BaseAllClassifiedModel>?> getMyClassified({required String companyId}) async {
    try {
      final response = await dio.get('/V2/Classified/my_get_classifieds',
          queryParameters: {'company_id': companyId});
      return ClassifiedModel.fromJson(response.data).data;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? e.message;
      throw DioException(requestOptions: e.requestOptions, error: errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
  Future<CreateAdvertResponse> createAdvert({required CreateAdvertRequest createAdvertRequest}) async{
    final formData = FormData();
    try {
      final List<Map<String, dynamic>> categoriesData = createAdvertRequest
          .categories
          .map((category) => category.toJson())
          .toList();

      final String categoriesJson = json.encode(categoriesData);

      formData.fields
          .add(MapEntry('company_id', createAdvertRequest.companyId));
      formData.fields.add(MapEntry('title', createAdvertRequest.title));
      formData.fields.add(MapEntry('piece', createAdvertRequest.piece));
      formData.fields.add(MapEntry('deadline', createAdvertRequest.deadline));
      formData.fields
          .add(MapEntry('payment_type', createAdvertRequest.paymentType));
      formData.fields.add(
          MapEntry('delivery_address', createAdvertRequest.deliveryAddress));
      formData.fields
          .add(MapEntry('explanation', createAdvertRequest.explanation));
      formData.fields
          .add(MapEntry('customer_seller', createAdvertRequest.customerSeller));
      formData.fields
          .add(MapEntry('payment_term', createAdvertRequest.paymentTerm));

      formData.fields.add(
          MapEntry('address_id', createAdvertRequest.addressId.toString()));

      formData.fields.add(MapEntry('categories', categoriesJson));

      formData.fields
          .add(MapEntry('city_id', createAdvertRequest.cityId.toString()));
      formData.fields
          .add(MapEntry('town_id', createAdvertRequest.townId.toString()));
      formData.fields.add(MapEntry('classifieds_remaining_time',
          createAdvertRequest.classifiedsRemainingTime));


      createAdvertRequest.techImages == null
          ? null
          : formData.files.add(
              MapEntry(
                'technical_image',
                await MultipartFile.fromFile(
                  createAdvertRequest.techImages ?? '',
                ),
              ),
            );

      for (var i = 0; i < createAdvertRequest.images.length; i++) {
        formData.files.add(
          MapEntry(
            'images[]',
            await MultipartFile.fromFile(
              createAdvertRequest.images[i].path,
            ),
          ),
        );
      }

      final response = await dio.post('V2/Classified/create', data: formData);
      return CreateAdvertResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
  
  @override
 Future<List<BaseClassifiedsResponse>> getClassifield() async {
    try {
      final response =
          await dio.get('/V2/Classified/classifieds_get_categories');
      return ClassifiedsResponse.fromJson(response.data).data!;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? e.message;
      throw DioException(requestOptions: e.requestOptions, error: errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }
}
