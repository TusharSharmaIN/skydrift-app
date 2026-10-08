APP_NAME ?= App
BUNDLE_ID ?= com.example.flutter_bricks_template
STR := $$(perl -MYAML -le 'print YAML::LoadFile(shift)->{version}' ./pubspec.yaml)
VERSION := $$( echo $(STR) | cut -d '+' -f 1 )
BUILD := $$( echo $(STR) | cut -d '+' -f 2 )

pub_get:
	@fvm flutter clean && fvm flutter pub get

build_runner:
	@fvm dart run build_runner build --delete-conflicting-outputs

clean_ios:
	@cd ios && rm -rf Podfile.lock Pods .symlinks && cd .. && fvm flutter clean && fvm flutter pub get && fvm flutter precache --ios && cd ios && pod install && cd ..

analyze:
	@fvm flutter analyze --fatal-infos --fatal-warnings

run_dev:
	@fvm flutter run --flavor dev -t lib/main_dev.dart

run_prod:
	@fvm flutter run --flavor prod -t lib/main_prod.dart

build_android_dev:
	@fvm flutter build apk --flavor dev -t lib/main_dev.dart --release

build_android_prod:
	@fvm flutter build appbundle --flavor prod -t lib/main_prod.dart --release

# After forking: change the visible app name (Android + iOS).
set_app_name:
	@fvm dart run rename setAppName --targets ios,android --value "$(APP_NAME)"
	@fvm dart run rename_app:main "$(APP_NAME)"

# After forking: change Android applicationId / iOS bundle id.
set_bundle_id:
	@fvm dart run change_app_package_name:main $(BUNDLE_ID)

# Replace assets/images/app_icon.png then run this.
icons:
	@fvm dart run flutter_launcher_icons

# Replace assets/images/splash_logo.png then run this.
splash:
	@fvm dart run flutter_native_splash:create

mason_get:
	@mason get
