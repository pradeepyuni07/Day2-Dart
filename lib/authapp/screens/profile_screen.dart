import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/user.dart';
import '../profile/profile_bloc.dart';
import '../profile/profile_event.dart';
import '../profile/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  const ProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileBloc()..add(ProfileDataEvent(user)),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileDataState) {
            final user = state.user;

            return Scaffold(
              appBar: AppBar(
                title: const Text("My Profile"),
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
              ),
              body: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.deepPurple,
                      child: Text(
                        user.name.substring(0, 1).toUpperCase(),
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(height: 15),
                    Text(
                      user.name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Member",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),

                    const SizedBox(height: 30),

                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                        child: Column(
                          children: [
                            profileTile(Icons.email, "Email", user.email),
                            const Divider(),
                            profileTile(Icons.phone, "Phone", user.phone),
                          ],
                        ),
                      ),
                    ),

                    const Spacer(),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Logout",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget profileTile(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurple, size: 26),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              const SizedBox(height: 3),
              Text(value, style: TextStyle(color: Colors.grey.shade700)),
            ],
          ),
        )
      ],
    );
  }
}
