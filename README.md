# CV App

Agyo Michael’s mobile CV, built with Flutter. The app presents professional experience, skills, education, contact information, and a gallery of project write-ups in a compact, navigable interface.

## What the app includes

- **Home / app gallery:** A responsive grid of project cards with images and descriptions. Selecting a card opens a detail page with a shared-element (Hero) transition.
- **Profile:** Expandable sections for experience, skills, and academic background. A floating action button reveals contact options; phone and email values can be copied, while links open externally.
- **Work history:** A scrollable list of roles and projects with their dates and descriptions.
- **Shared navigation:** A bottom navigation bar connects the gallery, profile, and work-history screens.

## How it was built

### Flutter and Dart

Flutter provides the app structure and cross-platform UI, while Dart defines the screens, reusable widgets, navigation, and CV content. `lib/main.dart` configures the `MaterialApp`, theme, named routes, and initial gallery screen. Flutter widgets such as `Scaffold`, `GridView`, `ListView`, `ExpansionTile`, and `FloatingActionButton` are composed to create the screens and interactions.

### CV content and UI organization

The CV is currently **local, static data** rather than content loaded from a server. `lib/assets/cv_data/cv_data.dart` defines the work history, academic background, skill set, and contact options. The pages read this data and pass each entry into reusable presentation widgets under `lib/widgets/`.

The app gallery is backed by the write-ups in `lib/assets/cv_data/` and images in `lib/assets/hero_images/`. `HeroTilePage` adjusts its grid column count to the available screen width, and `DetailPage` uses Flutter’s `Hero` widget to animate a selected card into its detail view.

### Packages and assets

- **`url_launcher`** opens contact links in an external application; Flutter’s clipboard APIs copy text contact details.
- **`flutter_svg`** renders the SVG icons used by the custom bottom navigation bar.
- **`flutter_native_splash`** supplies splash-screen configuration for Android and iOS.
- **Custom assets**—project images, SVG navigation icons, a splash image, and the Clash Display font—are registered in `pubspec.yaml` and used to style the interface.

The repository includes Flutter platform projects for Android, iOS, web, Windows, Linux, and macOS. The app’s CV content and screens are implemented in Dart, with the platform directories providing build and launch integration.

## Project structure

```text
lib/
  main.dart                  App setup, theme, routes, and initial page
  pages/                     Gallery, project details, profile, and work history
  widgets/                   Reusable cards, navigation, and contact UI
  animations/                Splash-screen widget
  assets/
    cv_data/                 CV entries and project descriptions
    fonts/                   Custom Clash Display font
    hero_images/             Gallery and project imagery
    icons/                   SVG navigation icons
test/                        Flutter widget tests
android/ ios/ web/ windows/ linux/ macos/
                             Flutter platform build projects
```

## Getting started

Install the [Flutter SDK](https://docs.flutter.dev/get-started/install), then run these commands from the repository root:

```bash
flutter pub get
flutter run
```

To choose a target device or platform, list available targets with `flutter devices`, then use `flutter run -d <device-id>`.

## Build

For example, build an Android APK with:

```bash
flutter build apk
```

Other targets can be built with Flutter’s platform-specific commands, such as `flutter build ios` (requires macOS and Xcode) or `flutter build web`.

## Tests and analysis

```bash
flutter analyze
flutter test
```

> **Test status:** `test/widget_test.dart` is still the generated counter-app smoke test, while the app now opens on the CV gallery. Update that test to cover the current screens and interactions before relying on it as a project test.

## Updating the CV

Edit the relevant entries in `lib/assets/cv_data/cv_data.dart` to update experience, education, skills, or contact options. Update project descriptions in the corresponding write-up files under `lib/assets/cv_data/`, and add or replace gallery images and icons in `lib/assets/`. Keep any new asset paths registered under the `flutter: assets:` section of `pubspec.yaml` so Flutter bundles them with the app.
