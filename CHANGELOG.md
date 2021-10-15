# Changelog

All notable changes to this project will be documented in this file, including direct links to the releases

## [1.1.4](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.1.4)

### Changed

### Added

### Fixed

## [1.1.3](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.1.3)

### Changed

### Added

* Added cmdlets `Get-TaskbarShowChatIcon` & `Set-TaskbarShowChatIcon` to manage the chat icon on the taskbar

### Fixed

* Bug in `ConvertTo-Hash` private function that caused it to fail on null values, resolves [Issue 12](https://github.com/jaapbrasser/CustomizeWindows11/issues/12)

## [1.1.2](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.1.2)

### Changed

* Changed encoding from Unicode to UTF8

### Added

* Added new functions, 'Get-ExplorerNavExpandToCurrentFolder', 'Get-ExplorerNavShowAllFolder', 'Get-ExplorerNavShowAvailabilityStatus', 'Get-ExplorerNavShowLibrary', 'Set-ExplorerNavExpandToCurrentFolder', 'Set-ExplorerNavShowAllFolder', 'Set-ExplorerNavShowAvailabilityStatus', 'Set-ExplorerNavShowLibrary' to manage various NavBar settings, resolves resolve [Issue 10](https://github.com/jaapbrasser/CustomizeWindows11/issues/10)

### Removed

* Removed duplicate functions `Get-ExplorerHideFileExt` & `Set-ExplorerHideFileExt`, the `Get/Set-ExplorerHideFileExtion` functions can be used instead

## [1.1.1](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.1.1)

### Changed

### Added

* Added Get/`Set-TaskbarAdditionalCalendar` to set or remove additional calendars
* Added private function `ConvertTo-Hash` to resolve [Issue 9](https://github.com/jaapbrasser/CustomizeWindows11/issues/9)
* Added new functions

### Fixed

* Property display bug when using some Get-* cmdlets
* Updated documentation for `Set-TaskbarSize`
* Fixed PowerShell 5 bug in `Invoke-ConfigurationData`, resolves [Issue 9](https://github.com/jaapbrasser/CustomizeWindows11/issues/9)

## [1.1.0](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.1.0)

### Changed

* Updated documentation on all cmdlets

### Fixed

* Performance of all cmdlets by not using resolves [IISResetMe Tweet](https://twitter.com/IISResetMe/status/1445733947560841218?s=20)
* Get / `Set-TaskbarSize` now works as expected

## [1.0.0](https://github.com/jaapbrasser/CustomizeWindows11/releases/tag/1.0.0)

Initial release of Customize Windows 11 PowerShell module

### Added

* `Get-ClassicContextMenu`
* `Get-DesktopShowIcons`
* `Get-ExplorerCheckboxFileSelection`
* `Get-ExplorerHideFileExt`
* `Get-ExplorerHideFileExtension`
* `Get-ExplorerLaunchInSeparateProcess`
* `Get-ExplorerPrettyPath`
* `Get-ExplorerServerAdminUI`
* `Get-ExplorerShowCompressedFilesColor`
* `Get-ExplorerShowHidden`
* `Get-ExplorerShowIconsOnly`
* `Get-ExplorerShowInfoTip`
* `Get-ExplorerShowMapNetworkDriveButton`
* `Get-ExplorerShowStatusBar`
* `Get-ExplorerShowSuperHidden`
* `Get-ExplorerShowTypeOverlay`
* `Get-ExplorerSnapAssistFlyout`
* `Get-PerformanceListviewShadow`
* `Get-PerformanceTranslucentSelectionRectangle`
* `Get-SnapAssist`
* `Get-TaskbarAnimations`
* `Get-TaskbarAutoHideInTabletMode`
* `Get-TaskbarInCenter`
* `Get-TaskbarLock`
* `Get-TaskbarShowCortanaButton`
* `Get-TaskbarShowOnMultiMonitor`
* `Get-TaskbarShowStoreApps`
* `Get-TaskbarShowTaskViewButton`
* `Get-TaskbarShowWidgetIcon`
* `Get-TaskbarSize`
* `Get-TaskbarSmallIcon`
* `Set-ClassicContextMenu`
* `Set-DesktopShowIcons`
* `Set-ExplorerCheckboxFileSelection`
* `Set-ExplorerHideFileExt`
* `Set-ExplorerHideFileExtension`
* `Set-ExplorerLaunchInSeparateProcess`
* `Set-ExplorerPrettyPath`
* `Set-ExplorerServerAdminUI`
* `Set-ExplorerShowCompressedFilesColor`
* `Set-ExplorerShowHidden`
* `Set-ExplorerShowIconsOnly`
* `Set-ExplorerShowInfoTip`
* `Set-ExplorerShowMapNetworkDriveButton`
* `Set-ExplorerShowStatusBar`
* `Set-ExplorerShowSuperHidden`
* `Set-ExplorerShowTypeOverlay`
* `Set-ExplorerSnapAssistFlyout`
* `Set-PerformanceListviewShadow`
* `Set-PerformanceTranslucentSelectionRectangle`
* `Set-SnapAssist`
* `Set-TaskbarAnimations`
* `Set-TaskbarAutoHideInTabletMode`
* `Set-TaskbarInCenter`
* `Set-TaskbarLock`
* `Set-TaskbarShowCortanaButton`
* `Set-TaskbarShowOnMultiMonitor`
* `Set-TaskbarShowStoreApps`
* `Set-TaskbarShowTaskViewButton`
* `Set-TaskbarShowWidgetIcon`
* `Set-TaskbarSize`
* `Set-TaskbarSmallIcon`