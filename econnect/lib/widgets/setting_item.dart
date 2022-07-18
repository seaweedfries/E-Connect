import 'package:flutter/material.dart';
import 'package:econnect/constants.dart';

class SettingItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final String? subtitle;
  final String? onTapp;
  final padding;

  SettingItem(
    {
    this.icon = Icons.error, 
    this.title = 'Error', 
    this.subtitle, 
    this.onTapp,
    this.padding
    }
  );

  @override
  Widget build(BuildContext context) {
    if(subtitle == null) {
      return ListTile(
        contentPadding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: icon == null ? null : Container(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: CustomColors.kIconColor,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: onTapp == null ? null : () => Navigator.pushNamed(context, onTapp!),
      );
    }
    return ListTile(
      contentPadding: padding ?? null,
      leading: icon == null ? null : Container(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: CustomColors.kIconColor,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle!
      ),
      onTap: onTapp == null ? null : () => Navigator.pushNamed(context, onTapp!),
    );
  }

}