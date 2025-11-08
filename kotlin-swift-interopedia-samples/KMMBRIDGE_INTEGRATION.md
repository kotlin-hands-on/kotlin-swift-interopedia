# KMMBridge Integration Guide

This document outlines the steps taken to integrate KMMBridge for publishing and consuming pre-built KMP (Kotlin Multiplatform) Xcode Framework binaries.

## Overview

KMMBridge enables publishing Kotlin Multiplatform Mobile (KMM) Xcode Frameworks to a remote repository and consuming them via Swift Package Manager (SPM), eliminating the need for iOS developers to have Kotlin toolchain installed locally.

## Implementation Steps

### 1. Added KMMBridge Plugin

**File Modified:** `gradle/libs.versions.toml`
- Added KMMBridge version: `kmmbridge = "1.2.1"`
- Added plugin definition: `kmmbridge = { id = "co.touchlab.kmmbridge", version.ref = "kmmbridge" }`

**File Modified:** `shared/build.gradle.kts`
- Applied KMMBridge plugin: `alias(libs.plugins.kmmbridge)`

### 2. Configured KMMBridge Settings

**File Modified:** `shared/build.gradle.kts`
- Added KMMBridge configuration block:
```kotlin
kmmbridge {
    frameworkName.set("shared")
    githubReleaseArtifacts()
    githubReleaseVersions()
    versionPrefix.set("1.0")
    
    gitHubPublishVersion.set(
        if (project.hasProperty("versionOverride")) {
            project.property("versionOverride") as String
        } else {
            "1.0.${System.currentTimeMillis()}"
        }
    )
}
```

### 3. Created GitHub Actions Workflow

**File Created:** `.github/workflows/kmmbridge-publish.yml`
- Automated publishing workflow using KMMBridge GitHub workflow
- Supports manual triggers with custom version names
- Supports automatic triggers on git tags
- Uses Xcode 15.2 and JVM 17

### 4. Created Package.swift

**File Created:** `Package.swift`
- Swift Package Manager manifest for consuming the published framework
- Configured for iOS 13+ deployment target
- References framework from GitHub releases

## Usage Instructions

### Publishing a New Version

#### Option 1: Manual Workflow Dispatch
1. Go to GitHub Actions in the repository
2. Select "KMMBridge Publish" workflow
3. Click "Run workflow"
4. Enter desired version name (e.g., "1.0.0")
5. Click "Run workflow"

#### Option 2: Git Tag Release
1. Create and push a git tag:
```bash
git tag 1.0.0
git push origin 1.0.0
```

### Consuming the Framework in iOS Projects

#### Current Setup (Direct Framework Link)
The current iOS app uses direct framework linking via the `embedAndSignAppleFrameworkForXcode` Gradle task.

#### Migrating to Swift Package Manager

To migrate the iOS app to consume the framework via SPM:

1. **Remove Direct Framework Linking**
   - Open `iosApp.xcodeproj` in Xcode
   - Remove the shared framework from "Frameworks, Libraries, and Embedded Content"
   - Remove the build script phase that runs `embedAndSignAppleFrameworkForXcode`
   - Remove framework search paths pointing to `../shared/build/xcode-frameworks/`

2. **Add Swift Package Manager Dependency**
   - In Xcode, go to File → Add Package Dependencies
   - Enter repository URL: `https://github.com/udiscapp/kotlin-swift-interopedia-samples`
   - Select the appropriate version/branch
   - Add the `shared` package to your target

3. **Update Package.swift (After First Release)**
   - Update the `remoteKotlinUrl` in `Package.swift` to point to the actual release
   - Update the `remoteKotlinChecksum` with the SHA256 checksum of the framework ZIP

#### For New iOS Projects

1. Add the Swift package dependency in Xcode:
   - Repository URL: `https://github.com/udiscapp/kotlin-swift-interopedia-samples`
   - Product: `shared`

2. Import the framework in Swift files:
```swift
import shared
```

## Available Gradle Tasks

After KMMBridge integration, the following tasks are available:

- `./gradlew kmmBridgePublish` - Publishes the framework to configured repository
- `./gradlew shared:publishAndroidDebugPublicationToGitHubRepository` - Publishes Android artifacts
- `./gradlew shared:publishKotlinMultiplatformPublicationToGitHubRepository` - Publishes multiplatform metadata

## Configuration Details

### Framework Configuration
- **Framework Name:** `shared`
- **Deployment Target:** iOS 13.0+
- **Framework Type:** Static framework
- **Architectures:** arm64 (device), x86_64 + arm64 (simulator)

### Repository Configuration
- **Artifact Storage:** GitHub Releases
- **Version Management:** GitHub Releases
- **Repository:** `udiscapp/kotlin-swift-interopedia-samples`

## Benefits

1. **Simplified iOS Development:** iOS developers don't need Kotlin toolchain installed
2. **Faster Build Times:** Pre-compiled frameworks reduce build time
3. **Version Management:** Clear versioning through GitHub releases
4. **CI/CD Integration:** Automated publishing through GitHub Actions
5. **Swift Package Manager:** Standard iOS dependency management

## Troubleshooting

### Common Issues

1. **Missing Checksum:** Update the checksum in `Package.swift` after each release
2. **Version Conflicts:** Ensure version numbers are unique and properly incremented
3. **Framework Not Found:** Verify the GitHub release contains the framework ZIP file

### Verification Steps

1. Check that GitHub release contains `shared.xcframework.zip`
2. Verify Package.swift URL points to correct release
3. Confirm checksum matches the released ZIP file

## Next Steps

1. Publish the first version using the GitHub Actions workflow
2. Update `Package.swift` with the actual release URL and checksum
3. Test the SPM integration in a sample iOS project
4. Migrate existing iOS app from direct framework linking to SPM dependency