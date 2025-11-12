androidApplication {
    namespace = "org.example.app"

    // Note: Declarative DSL for androidApplication in org.gradle.experimental.android-ecosystem
    // may not expose buildFeatures/composeOptions blocks yet, so we only declare dependencies here.

    dependencies {
        // Existing sample deps
        implementation("org.apache.commons:commons-text:1.11.0")
        implementation(project(":utilities"))

        // Activity Compose
        implementation("androidx.activity:activity-compose:1.9.3")

        // Compose Core - use explicit versions to avoid IR inliner mismatch with tv alpha artifacts
        implementation("androidx.compose.ui:ui:1.7.4")
        implementation("androidx.compose.ui:ui-tooling-preview:1.7.4")
        implementation("androidx.compose.foundation:foundation:1.7.4")
        // Explicit version for Material3 compatible with Compose 1.7.x
        implementation("androidx.compose.material3:material3:1.3.0")

        // TV Compose libraries - use latest stable artifacts available on Google Maven
        // Note: artifact ids are tv-foundation and tv-material under group androidx.tv
        implementation("androidx.tv:tv-foundation:1.0.0-alpha12")
        implementation("androidx.tv:tv-material:1.0.0-alpha12")

        // Navigation
        implementation("androidx.navigation:navigation-compose:2.8.3")

        // Lifecycle ViewModel for Compose
        implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.8.6")

        // Media3 for playback (ExoPlayer and UI)
        implementation("androidx.media3:media3-exoplayer:1.4.1")
        implementation("androidx.media3:media3-ui:1.4.1")

        // Image loading
        implementation("io.coil-kt:coil-compose:2.6.0")

        // Compose tooling (kept as implementation due to lack of variant scopes in current DSL)
        implementation("androidx.compose.ui:ui-tooling")
    }
}
