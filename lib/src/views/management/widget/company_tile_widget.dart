import 'package:flutter/material.dart';

import '../../../models/company.dart';

class CompanyTile extends StatelessWidget {
  final Company company;
  final VoidCallback onDelete;
  // final VoidCallback onEdit;

  const CompanyTile({
    super.key,
    required this.company,
    required this.onDelete,
    // required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      // elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          company.companyName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          'Money: \$${company.money}, Meal: ${company.meal}',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // IconButton(
            //   icon: const Icon(Icons.edit, color: Colors.blue),
            //   onPressed: onEdit,
            //   tooltip: 'Edit Company',
            // ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
              tooltip: 'Delete Company',
            ),
          ],
        ),
      ),
    );
  }
}
