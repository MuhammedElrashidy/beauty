import 'package:equatable/equatable.dart';

class SettingsState extends Equatable {
  final bool isSettingsSelected;
  final bool biometricEnabled;
  final bool animationEnabled;
  final bool notificationsEnabled;

  const SettingsState({
    this.isSettingsSelected = true,
    this.biometricEnabled = true,
    this.animationEnabled = true,
    this.notificationsEnabled = true,
  });

  SettingsState copyWith({
    bool? isSettingsSelected,
    bool? biometricEnabled,
    bool? animationEnabled,
    bool? notificationsEnabled,
  }) {
    return SettingsState(
      isSettingsSelected: isSettingsSelected ?? this.isSettingsSelected,
      biometricEnabled: biometricEnabled ?? this.biometricEnabled,
      animationEnabled: animationEnabled ?? this.animationEnabled,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }

  @override
  List<Object?> get props => [
    isSettingsSelected,
    biometricEnabled,
    animationEnabled,
    notificationsEnabled,
  ];
}
