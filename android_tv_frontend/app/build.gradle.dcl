androidApplication {
    namespace = "org.example.app"

    // Declarative DSL may not support composeOptions/buildFeatures; keep dependency declarations only.

    // Keep testing dependencies only; avoid unsupported properties like failOnNoTests
    testing {
        // Ensure unit test task does not fail the build if no tests are discovered.
        // The declarative plugin supports this property directly under testing in module scope.
        failOnNoDiscoveredTests = false

        dependencies {
            implementation("org.junit.jupiter:junit-jupiter:5.10.2")
            runtimeOnly("org.junit.platform:junit-platform-launcher")
        }
    }

    dependencies {
        // Core sample deps
        implementation("org.apache.commons:commons-text:1.11.0")
        implementation(project(":utilities"))

        // Align Compose stack to a compatible, resolvable set for compileSdk 34
        // Use stable Compose 1.6.7 to reduce risk of transitive resolution issues.
        implementation("androidx.activity:activity-compose:1.9.2")
        implementation("androidx.compose.ui:ui:1.6.7")
        implementation("androidx.compose.ui:ui-tooling-preview:1.6.7")
        implementation("androidx.compose.foundation:foundation:1.6.7")
        implementation("androidx.compose.material3:material3:1.2.1")

        // Navigation
        implementation("androidx.navigation:navigation-compose:2.8.2")

        // Lifecycle ViewModel for Compose
        implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.5")

        // Compose tooling - pin version to match core Compose
        implementation("androidx.compose.ui:ui-tooling:1.6.7")

        // Note:
        // - AndroidX TV Compose libraries are intentionally omitted for now.
        // - Media3 (ExoPlayer/UI) is also omitted to avoid resolution issues during AAR metadata checks.
        // Re-add in a future step once versions are confirmed resolvable from Google Maven.
    }
}
