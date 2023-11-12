
import 'package:palet/domain/model/all_classified_model.dart';
import 'package:palet/domain/model/classified_response_model.dart';
import 'package:palet/domain/model/create_advert_model.dart';
import 'package:palet/domain/repository/home/home_repository.dart';

abstract class HomeServices {
  Future<List<BaseAllClassifiedModel>?> getAllClassified();
  Future<List<BaseAllClassifiedModel>?> getMyClassified({required String companyId});
  Future<CreateAdvertResponse> createAdvert({required CreateAdvertRequest createAdvertRequest});
  Future<List<BaseClassifiedsResponse>> getClassifield();
}

class HomeServicesImpl implements HomeServices{
  final HomeRepositoryImpl homeRepositoryImpl = HomeRepositoryImpl();
  @override
  Future<List<BaseAllClassifiedModel>?> getAllClassified() {
    return homeRepositoryImpl.getAllClassified();
  }
  
  @override
  Future<List<BaseAllClassifiedModel>?> getMyClassified({required String companyId}) {
    return homeRepositoryImpl.getMyClassified(companyId: companyId);
  }
  
  @override
  Future<CreateAdvertResponse> createAdvert({required CreateAdvertRequest createAdvertRequest}) {
    return homeRepositoryImpl.createAdvert(createAdvertRequest: createAdvertRequest);
  }
  
  @override
  Future<List<BaseClassifiedsResponse>> getClassifield() {
    return homeRepositoryImpl.getClassifield();
  }

}