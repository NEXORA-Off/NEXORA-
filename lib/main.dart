
import 'package:flutter/material.dart';

void main() {
  runApp(const NexoraApp());
}

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEXORA',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080D1D),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),
      ),
      home: const NexoraHome(),
    );
  }
}

class NexoraHome extends StatefulWidget {
  const NexoraHome({super.key});

  @override
  State<NexoraHome> createState() => _NexoraHomeState();
}

class _NexoraHomeState extends State<NexoraHome> {
  int selectedIndex = 0;

  final List<String> titles = [
    'Discover',
    'AI Assistant',
    'Connect',
    'Messages',
    'Profile',
  ];

  final List<IconData> icons = [
    Icons.explore_rounded,
    Icons.auto_awesome,
    Icons.people_alt_rounded,
    Icons.chat_bubble_rounded,
    Icons.person_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF080D1D),
        title: const Row(
          children: [
            Icon(Icons.hexagon_rounded,
                color: Color(0xFF8B5CF6), size: 30),
            SizedBox(width: 9),
            Text(
              'NEXORA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titles[selectedIndex],
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'One App. Endless Possibilities.',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 25),

              if (selectedIndex == 0) ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF352078),
                        Color(0xFF123B70),
                        Color(0xFF087E91),
                      ],
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.auto_awesome,
                          color: Colors.white, size: 35),
                      SizedBox(height: 18),
                      Text(
                        'Welcome to NEXORA',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Your world. Your possibilities. One platform.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Explore Features',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: 1.15,
                  children: const [
                    FeatureCard(
                      icon: Icons.smart_toy_rounded,
                      title: 'AI Assistant',
                      subtitle: 'Smart AI experience',
                      color: Color(0xFF8B5CF6),
                    ),
                    FeatureCard(
                      icon: Icons.public_rounded,
                      title: 'Social World',
                      subtitle: 'Discover people',
                      color: Color(0xFF06B6D4),
                    ),
                    FeatureCard(
                      icon: Icons.chat_rounded,
                      title: 'Messages',
                      subtitle: 'Stay connected',
                      color: Color(0xFF3B82F6),
                    ),
                    FeatureCard(
                      icon: Icons.calendar_month_rounded,
                      title: 'Life Manager',
                      subtitle: 'Organize your day',
                      color: Color(0xFF10B981),
                    ),
                    FeatureCard(
                      icon: Icons.search_rounded,
                      title: 'Universal Search',
                      subtitle: 'Find everything',
                      color: Color(0xFFEC4899),
                    ),
                    FeatureCard(
                      icon: Icons.dashboard_rounded,
                      title: 'More Services',
                      subtitle: 'Explore NEXORA',
                      color: Color(0xFFF59E0B),
                    ),
                  ],
                ),
              ] else ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFF151C32),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: const Color(0xFF343B5D),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        icons[selectedIndex],
                        size: 55,
                        color: const Color(0xFF8B5CF6),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        titles[selectedIndex],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Welcome to NEXORA. This section is ready for development.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white60),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'NEXORA © 2026',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF11182B),
        indicatorColor: const Color(0xFF49317D),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            label: 'AI',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            label: 'Social',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF151C32),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF293450),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: color),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
