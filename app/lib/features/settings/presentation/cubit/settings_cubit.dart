import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void toggleSettingsSelection(bool isSettingsSelected) {
    emit(state.copyWith(isSettingsSelected: isSettingsSelected));
  }

  void toggleBiometric(bool enabled) {
    emit(state.copyWith(biometricEnabled: enabled));
  }

  void toggleAnimation(bool enabled) {
    emit(state.copyWith(animationEnabled: enabled));
  }

  void toggleNotifications(bool enabled) {
    emit(state.copyWith(notificationsEnabled: enabled));
  }

  void resetSettings() {
    emit(const SettingsState());
  }
}
