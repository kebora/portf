import 'package:flutter_bloc/flutter_bloc.dart';

//The states
enum ChipStates {
  mobileapp,
  webapp,
  companies,
  videoTutorials,
  articles,
  art,
  contact,
  automation,
  latestapp
}

//The events
abstract class ModuleClickEvent {}

class MobileAppPressed extends ModuleClickEvent {}

class CompaniesPressed extends ModuleClickEvent {}

class WebAppPressed extends ModuleClickEvent {}

class VideoTutorialsPressed extends ModuleClickEvent {}

class ArticlesPressed extends ModuleClickEvent {}

class ArtsPressed extends ModuleClickEvent {}

class ContactPressed extends ModuleClickEvent {}

class AutomationPressed extends ModuleClickEvent {}

class LatestAppPressed extends ModuleClickEvent {}

class CustomChipsBloc extends Bloc<ModuleClickEvent, ChipStates> {
  CustomChipsBloc() : super(ChipStates.mobileapp) {
    on<MobileAppPressed>((event, emit) {
      emit(ChipStates.mobileapp);
    });

    on<CompaniesPressed>((event, emit) {
      emit(ChipStates.companies);
    });

    on<WebAppPressed>((event, emit) {
      emit(ChipStates.webapp);
    });

    on<VideoTutorialsPressed>((event, emit) {
      emit(ChipStates.videoTutorials);
    });

    on<ArticlesPressed>((event, emit) {
      emit(ChipStates.articles);
    });

    on<ArtsPressed>((event, emit) {
      emit(ChipStates.art);
    });

    on<ContactPressed>((event, emit) {
      emit(ChipStates.contact);
    });

    on<AutomationPressed>((event, emit) {
      emit(ChipStates.automation);
    });

    on<LatestAppPressed>((event, emit) {
      emit(ChipStates.latestapp);
    });
  }
}
