import 'package:flutter/material.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountDeletionView extends StatefulWidget {
  const AccountDeletionView({super.key});

  @override
  State<AccountDeletionView> createState() => _AccountDeletionViewState();
}

class _AccountDeletionViewState extends State<AccountDeletionView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _reasonController = TextEditingController();

  String _selectedApp = 'All Apps';
  bool _confirmDeletion = false;

  final List<String> _apps = [
    'All Apps',
    'myPiseta',
  ];

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ModuleTitleTemplate(title: "Deletion"),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFF243447),
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.1),
                  //     spreadRadius: 1,
                  //     blurRadius: 10,
                  //     offset: const Offset(0, 3),
                  //   ),
                  // ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Request Account Deletion",
                        style: TextStyle(
                          fontSize: isMobile ? 20 : 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Please fill out the form below to request account deletion. This action is permanent and cannot be undone.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email Address *',
                          hintText: 'Enter your registered email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Email is required';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value!)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // Name Field
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Full Name *',
                          hintText: 'Enter your full name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Name is required';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // App Selection
                      DropdownButtonFormField<String>(
                        value: _selectedApp,
                        decoration: const InputDecoration(
                          labelText: 'Select App/Service *',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.apps),
                        ),
                        items: _apps
                            .map((app) => DropdownMenuItem(
                                  value: app,
                                  child: Text(app),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedApp = value!;
                          });
                        },
                      ),

                      const SizedBox(height: 20),

                      // Reason Field
                      TextFormField(
                        controller: _reasonController,
                        decoration: const InputDecoration(
                          labelText: 'Reason (Optional)',
                          hintText: 'Why do you want to delete your account?',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.comment),
                        ),
                        maxLines: 3,
                      ),

                      const SizedBox(height: 25),

                      // Warning Box
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          border: Border.all(color: const Color(0xFF243447)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.warning, color: Colors.orange.shade600),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Account deletion is permanent and cannot be undone. All your data will be lost.",
                                style: TextStyle(
                                  color: Colors.orange.shade800,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Confirmation Checkbox
                      CheckboxListTile(
                        value: _confirmDeletion,
                        onChanged: (value) {
                          setState(() {
                            _confirmDeletion = value ?? false;
                          });
                        },
                        title: const Text(
                          "I understand this action is permanent and irreversible *",
                          style: TextStyle(fontSize: 14),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                      ),

                      const SizedBox(height: 25),

                      // Submit Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _submitRequest,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF243447).withValues(alpha: 0.4),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Submit Deletion Request',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitRequest() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (!_confirmDeletion) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Please confirm that you understand this action is permanent'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Create email content
    final emailSubject = Uri.encodeComponent('Account Deletion Request');
    final emailBody = Uri.encodeComponent('''
Account Deletion Request

Name: ${_nameController.text}
Email: ${_emailController.text}
App/Service: $_selectedApp
Reason: ${_reasonController.text.isEmpty ? 'Not provided' : _reasonController.text}

User confirmed understanding that deletion is permanent.
Request submitted: ${DateTime.now().toString()}
''');

    final emailUrl =
        'mailto:danielmsimiyu71@gmail.com?subject=$emailSubject&body=$emailBody';

    try {
      await launchUrl(Uri.parse(emailUrl));

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Request submitted successfully! I will process it within 5-7 business days.'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 4),
          ),
        );

        // Clear form
        _emailController.clear();
        _nameController.clear();
        _reasonController.clear();
        setState(() {
          _selectedApp = 'All Apps';
          _confirmDeletion = false;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Could not open email client. Please contact me directly.'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _reasonController.dispose();
    super.dispose();
  }
}
