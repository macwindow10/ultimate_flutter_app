// Value notifiers: hold the data
// ValueListenableBuilder: listen to the data (do not need setState)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);
