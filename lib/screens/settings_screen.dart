// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(
                title: 'Profile',
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              SettingsTile(
                title: 'Notifications',
                leading: const Icon(Icons.notifications),
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              SettingsTile(
                title: 'Help & Support',
                leading: const Icon(Icons.help),
                onTap: () {
                  Navigator.pushNamed(context, '/help');
                },
              ),
              SettingsTile(
                title: 'Logout',
                leading: const Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'General',
            tiles: [
              SettingsTile(
                title: 'About',
                subtitle: 'Version 1.0.0',
                leading: const Icon(Icons.info),
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'Naija Social',
                    applicationVersion: '1.0.0',
                    applicationLegalese: 'Copyright 2022 Naija Social',
                  );
                },
              ),
              SettingsTile(
                title: 'Privacy Policy',
                subtitle: 'View our privacy policy',
                leading: const Icon(Icons.lock),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Privacy Policy'),
                        content: const Text(
                          'This is our privacy policy. We will not sell or share your personal information with anyone.',
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SettingsTile(
                title: 'Terms of Service',
                subtitle: 'View our terms of service',
                leading: const Icon(Icons.description),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Terms of Service'),
                        content: const Text(
                          'This is our terms of service. You must agree to our terms of service to use our services.',
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}