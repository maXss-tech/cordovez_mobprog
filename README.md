# cordovez_mobprog

A new Flutter project.


## Lab Activity 1: Discussion
Enhancement 1: Used PostImageWidget with Image class, BoxFit.cover and ClipRRect for the post image area.
Enhancement 2: Used AvatarWidget with CircleAvatar for user profile image.
Enhancement 3: Changed Like and Comment to widget-based ActionBarWidget using GestureDetector, showing only number of likes.

### 1. Managing Posts and Notifications Efficiently
* **Modular Components:** Utilized reusable widgets (`NewsfeedCard`, `NotificationWidget`, `AvatarWidget`, `CustomText`) to avoid code duplication.
* **Responsive Layouts:** Applied `flutter_screenutil` for scalable fonts, padding, and UI elements.
* **Stateful Navigation:** Combined a `PageView` and `BottomNavigationBar` in `HomeScreen` to toggle between `NewsfeedScreen` and `NotificationScreen` while dynamically updating the `AppBar` title.

### 2. Accomplished Enhancements
* **Profile Avatars:** Integrated `AvatarWidget` into `NotificationWidget` for consistent user visuals.
* **Notification Structure:** Organized user names, post references, and descriptions using `Row`, `Column`, and `Divider` widgets.
* **Dynamic Header:** Synchronized `setState()` across tab and page actions to update the active `AppBar` state seamlessly.

### 3. Challenges & Solutions
* **Layout & Text Overflow:** Wrapped columns in `Expanded` widgets to handle long descriptions without breaking horizontal constraints.
* **PageView Synchronization:** Replaced placeholder widgets and linked `_selectedIndex` across `onPageChanged` and `jumpToPage()`.
* **Asset Path Configuration:** Standardized `avatarPath` as an optional parameter and verified image assets in `pubspec.yaml`.