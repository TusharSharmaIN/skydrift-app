# Flutter Bricks Template

Starter for a **simpler** Flutter app using the same architecture as Corp Cash: feature-first Clean Architecture, Bloc, GetIt/injectable, go_router, Freezed DTOs/entities, Retrofit, and `dev` / `prod` flavors.

Pinned with **FVM** to Flutter **3.47.6** (latest stable at template creation).

## After you fork

```bash
cd flutter_bricks_template
fvm use
fvm flutter pub get
fvm dart run build_runner build --delete-conflicting-outputs
```

### Rename the app and bundle id

```bash
make set_app_name APP_NAME="My App"
make set_bundle_id BUNDLE_ID=com.company.my_app
```

Then search/replace the Dart package name `flutter_bricks_template` (imports, `pubspec.yaml` `name:`) — the CLI tools change native ids, not Dart imports.

### App icon and native splash (terminal)

1. Replace `assets/images/app_icon.png` (1024×1024 recommended).
2. Replace `assets/images/splash_logo.png`.
3. Run:

```bash
make icons
make splash
```

Configs live in `pubspec.yaml` under `flutter_launcher_icons` and `flutter_native_splash`.

## Run

```bash
make run_dev    # --flavor dev -t lib/main_dev.dart
make run_prod
```

VS Code launches: `.vscode/launch.json`.

Home-screen names and bundle ids are flavor-specific on **both** Android and iOS:

| Flavor | Display name | Android id | iOS bundle id |
| --- | --- | --- | --- |
| `dev` | App Dev | `com.example.flutter_bricks_template.dev` | `com.example.flutter_bricks_template.dev` |
| `prod` | App | `com.example.flutter_bricks_template` | `com.example.flutter_bricks_template` |

These are placeholders. In a **copy** of this repo, run `make set_app_name` / `make set_bundle_id`, then update `FLAVOR_APP_NAME` in `ios/Flutter/*-*.xcconfig`, `resValue("string", "app_name", …)` in `android/app/build.gradle.kts`, and `FlavorConfig`. Do not brand this template repo itself.

Set API hosts in `lib/flavor_config/flavor_config.dart`.

## New feature (Mason)

```bash
mason get
mason make feature
```

That generates `lib/features/<name>/` with domain / application / infrastructure / presentation stubs and runs `build_runner`.

Wire the new Bloc in `App` with `BlocProvider` + `locator.get<…>()` when it is needed across routes. Add Retrofit methods on the generated `*_api.dart`, map DTO → entity with `toDomain()`, return `Either<ApiFailure, T>` from the repository via `safeApiCall`.

## Layout (keep this)

```
lib/
  main_dev.dart / main_prod.dart
  bootstrap.dart
  app.dart
  di/injection.dart
  flavor_config/
  routes/
  theme/          # BaseColors, AppThemeData, AppTextStyle (Inter + Plus Jakarta Sans)
  core/           # network, errors, ScreenUtils, Assets, AppIcons
  features/
    splash/presentation/page/
    home/presentation/page/
```

Presentation must not import `infrastructure/`. User-visible copy goes in `StringsConstant`. SVG icons go in `assets/icons/` and `Assets` + `AppIcons.svg(...)`.

## What this template does not include

Session/auth, Hive, Firebase, analytics, jailbreak checks, Shorebird, connectivity banner. Add those when the product needs them.

## Makefile

| Target | Purpose |
| --- | --- |
| `make pub_get` | `fvm flutter pub get` |
| `make build_runner` | Codegen |
| `make analyze` | Analyzer with fatals |
| `make icons` / `make splash` | Launcher + native splash |
| `make set_app_name` / `make set_bundle_id` | Native rename |
