androidApplication {
    namespace = "org.example.app"

    // Declarative DSL may not support composeOptions/buildFeatures; keep dependency declarations only.

    // Keep testing dependencies only; avoid unsupported properties like failOnNoTests
    testing {
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

        // AndroidX TV Compose libraries are temporarily omitted to avoid unresolved artifacts.
        // Re-add when needed with valid versions published on Google Maven, e.g.:
        // implementation("androidx.tv:tv-foundation:<compatible-version>")
        // implementation("androidx.tv:tv-material:<same-version>")

        // Navigation
        implementation("androidx.navigation:navigation-compose:2.8.2")

        // Lifecycle ViewModel for Compose
        implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.5")

        // Media3 for playback (ExoPlayer and UI)
        implementation("androidx.media3:media3-exoplayer:1.3.1")
        implementation("androidx.media3:media3-ui:1.3.1")

        // Image loading
        implementation("io.coil-kt:coil-compose:2.6.0")

        // Compose tooling - pin version to match core Compose
        implementation("androidx.compose.ui:ui-tooling:1.6.7")
    }
}
