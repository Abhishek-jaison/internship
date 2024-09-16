import 'package:flutter/material.dart';
import 'package:intern_project/constants/assets.dart';
import 'package:intern_project/constants/colors.dart';
import 'package:intern_project/screens/project_screen.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child:Scaffold(
        appBar: AppBar(
          title: const Text('Portfolio'),
          actions: [
            IconButton(onPressed: () {}, icon: Image.asset(AppAssets.cart,height: 20,width: 16,)),
            IconButton(
                onPressed: () {}, icon: Image.asset(AppAssets.notification,height: 20,width: 16,)),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          labelColor: AppColors.primary,
          indicator: BoxDecoration(
            
        border: Border(
          bottom: BorderSide(
            color: AppColors.primary, 
            width: 2.0, 
          ),
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab, // Makes the indicator span full width of each tab
    )),
        
        body: TabBarView(
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProjectScreen(),
          ),
            Center(child: Text('Saved Content')),
            Center(child: Text('Shared Content')),
            Center(child: Text('Achievement Content')),
          ],
        ),
      
    
    )       
    );
  }
}
