import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiftclean_admin/MVVM/utils/constants.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/Dashboard/Dashboard.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/User/Profile_user.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/User/Reviews_User.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/worker/Verification_Worker.dart';
import 'package:swiftclean_admin/MVVM/view/pages.dart/worker/profile_Worker.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  String selectedTile = "Dashboard";
  String? expandedTile;

  final List<String> _suggestion = ["1", "2", "3"];

  // Pages based on selected tile
  Widget getSelectedPage() {
    switch (selectedTile) {
      case "Dashboard":
        return Dashboard();
      case "Profile":
        return const ProfileWorker();
      case "Verification":
        return const VerificationWorker();
      case "User Profile":
        return const ProfileUser();
      case "Reviews":
        return const ReviewsUser();
      case "Interior":
        return const Center(child: Text("Interior Service Page"));
      case "Vehicle":
        return const Center(child: Text("Vehicle Service Page"));
      case "Pet":
        return const Center(child: Text("Pet Service Page"));
      case "Transactions":
        return const Center(child: Text("Transactions Page"));
      case "Refunds":
        return const Center(child: Text("Refunds Page"));
      case "FAQs":
        return const Center(child: Text("FAQs Page"));
      case "Contact":
        return const Center(child: Text("Contact Page"));
      default:
        return Center(
          child: Text(
            "Selected: $selectedTile",
            style: const TextStyle(fontSize: 24),
          ),
        );
    }
  }

  void onTileExpandToggle(String titleTile) {
    setState(() {
      expandedTile = expandedTile == titleTile ? null : titleTile;
    });
  }

  void onItemSelected(String subItem) {
    setState(() {
      selectedTile = subItem;
    });
  }

  Widget buildExpansionTile(String title, IconData icon, List<String> subItems) {
    return ExpansionTile(
      title: Text(title),
      leading: Icon(icon),
      initiallyExpanded: expandedTile == title,
      onExpansionChanged: (_) => onTileExpandToggle(title),
      children: subItems
          .map(
            (subItem) => ListTile(
              title: Text(subItem),
              selected: selectedTile == subItem,
              onTap: () => onItemSelected(subItem),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefultBackround,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 300,
            color: AppColors.drawer,
            child: Drawer(
              backgroundColor: AppColors.drawer,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo Header
                      Column(
                        children: [
                          Image.asset("assets/icon/logo.png", scale: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icon/SWIFT.png"),
                              const SizedBox(width: 5),
                              Image.asset("assets/icon/CLEAN.png"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                        
                      // Dashboard as ListTile
                      ListTile(
                        leading: const Icon(Icons.dashboard),
                        title: const Text("Dashboard"),
                        selected: selectedTile == "Dashboard",
                        onTap: () => onItemSelected("Dashboard"),
                      ),
                        
                      // Menu Items with sub-items
                      buildExpansionTile("Workers", Icons.engineering, [
                        "Profile",
                        "Verification",
                      ]),
                      buildExpansionTile("Users", Icons.people, [
                        "User Profile",
                        "Reviews",
                      ]),
                      buildExpansionTile("Services", Icons.cleaning_services, [
                        "Interior",
                        "Vehicle",
                        "Pet",
                      ]),
                      buildExpansionTile("Payments", Icons.payment, [
                        "Transactions",
                        "Refunds",
                      ]),
                      buildExpansionTile("Support", Icons.support_agent, [
                        "FAQs",
                        "Contact",
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Main Content Area
          Expanded(
            child: Column(
              children: [
                // Autocomplete Search Bar
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Autocomplete<String>(
                    fieldViewBuilder:
                        (context, controller, focusNode, onFieldSubmitted) {
                      return TextFormField(
                        controller: controller,
                        focusNode: focusNode,
                        onFieldSubmitted: (value) => onFieldSubmitted(),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Search here",
                          hintStyle: TextStyle(color: AppColors.textcolor1),
                          suffixIcon: const Icon(CupertinoIcons.search,
                              color: AppColors.textcolor1),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.border),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style: TextStyle(color: AppColors.black),
                      );
                    },
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<String>.empty();
                      }
                      return _suggestion.where((item) =>
                          item.toLowerCase().contains(textEditingValue.text.toLowerCase()));
                    },
                    onSelected: (selection) {
                      debugPrint("Selected: $selection");
                    },
                  ),
                ),

                // Main content
                Expanded(child: getSelectedPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
