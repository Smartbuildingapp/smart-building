import 'package:flutter/material.dart';

void main() {
  runApp(const SmartBuildingApp());
}

class AppProject {
  const AppProject({
    required this.id,
    required this.title,
    required this.city,
    required this.country,
    required this.imageAsset,
    required this.progress,
    required this.collaboratorsCount,
    required this.budgetEstimated,
    required this.amountSpent,
  });

  final String id;
  final String title;
  final String city;
  final String country;
  final String imageAsset;
  final double progress;
  final int collaboratorsCount;
  final double budgetEstimated;
  final double amountSpent;

  double get amountRemaining => budgetEstimated - amountSpent;
}

class AppPhase {
  const AppPhase({
    required this.title,
    required this.status,
    required this.progress,
    required this.details,
  });

  final String title;
  final String status;
  final double progress;
  final String details;
}

class MaterialNeed {
  const MaterialNeed({
    required this.name,
    required this.quantity,
    required this.unit,
    required this.status,
  });

  final String name;
  final double quantity;
  final String unit;
  final String status;
}

class Collaborator {
  const Collaborator({
    required this.fullName,
    required this.role,
    required this.permissionsSummary,
    required this.color,
  });

  final String fullName;
  final String role;
  final String permissionsSummary;
  final Color color;
}

class ExpenseItem {
  const ExpenseItem({
    required this.label,
    required this.amount,
    required this.phase,
  });

  final String label;
  final double amount;
  final String phase;
}

class JournalEntry {
  const JournalEntry({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.danger = false,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final bool danger;
}

class AppNotificationItem {
  const AppNotificationItem({
    required this.title,
    required this.body,
    required this.time,
  });

  final String title;
  final String body;
  final String time;
}

class DemoRepository {
  const DemoRepository();

  List<AppProject> getProjects() => const [
        AppProject(
          id: 'p1',
          title: 'Villa Moderne R+2',
          city: 'Yaoundé',
          country: 'Cameroun',
          imageAsset: 'assets/images/maison_demo.png',
          progress: 0.72,
          collaboratorsCount: 8,
          budgetEstimated: 40000000,
          amountSpent: 31500000,
        ),
        AppProject(
          id: 'p2',
          title: 'Immeuble locatif',
          city: 'Douala',
          country: 'Cameroun',
          imageAsset: 'assets/images/maison_demo.png',
          progress: 0.35,
          collaboratorsCount: 5,
          budgetEstimated: 65000000,
          amountSpent: 22800000,
        ),
      ];

  List<AppPhase> getPhases(String projectId) => const [
        AppPhase(title: 'Études et conception', status: 'Terminé', progress: 1, details: 'Plans architecturaux · Permis · Études techniques'),
        AppPhase(title: 'Terrassement', status: 'Terminé', progress: 1, details: 'Photos : 12 · Rapports : 3'),
        AppPhase(title: 'Fondation', status: 'Terminé', progress: .82, details: 'Photos : 18 · Béton utilisé'),
        AppPhase(title: 'Élévation', status: 'En cours', progress: .58, details: '1200 parpaings · 60 sacs ciment · 20 barres fer'),
        AppPhase(title: 'Finitions', status: 'Pas commencé', progress: 0, details: 'En attente de démarrage'),
      ];

  List<MaterialNeed> getMaterialNeeds(String projectId) => const [
        MaterialNeed(name: 'Parpaings 15', quantity: 1200, unit: 'unités', status: 'Demandé'),
        MaterialNeed(name: 'Ciment 42.5', quantity: 60, unit: 'sacs', status: 'Validé'),
        MaterialNeed(name: 'Fer Ø12', quantity: 20, unit: 'barres', status: 'Commandé'),
        MaterialNeed(name: 'Bois de coffrage', quantity: 50, unit: 'pièces', status: 'Livré'),
      ];

  List<Collaborator> getCollaborators(String projectId) => const [
        Collaborator(fullName: 'Richard L.', role: 'Promoteur', permissionsSummary: 'Contrôle total', color: Color(0xFF2D75E8)),
        Collaborator(fullName: 'Alain N.', role: 'Chef de chantier', permissionsSummary: 'Photos · Journal · Matériaux', color: Color(0xFFF0B323)),
        Collaborator(fullName: 'Paul T.', role: 'Maçon', permissionsSummary: 'Activités · Photos', color: Color(0xFF7AC043)),
        Collaborator(fullName: 'Sarah M.', role: 'Observateur', permissionsSummary: 'Lecture seule', color: Color(0xFF9AA8BA)),
      ];

  List<ExpenseItem> getExpenses(String projectId) => const [
        ExpenseItem(label: 'Ferraillage fondation', amount: 4850000, phase: 'Fondation'),
        ExpenseItem(label: 'Élévation murs', amount: 8300000, phase: 'Élévation'),
        ExpenseItem(label: 'Main-d’œuvre', amount: 2500000, phase: 'Élévation'),
      ];

  List<JournalEntry> getJournal(String projectId) => const [
        JournalEntry(title: 'Coulage poteaux P3 et P4', subtitle: '18 mars 2026 · Élévation · Alain N.', icon: Icons.construction_outlined),
        JournalEntry(title: 'Ajout de 6 photos chantier', subtitle: '18 mars 2026 · Façade nord', icon: Icons.photo_camera_back_outlined),
        JournalEntry(title: 'Livraison ciment 42.5', subtitle: '60 sacs · Réception terrain', icon: Icons.local_shipping_outlined),
        JournalEntry(title: 'Perte déclarée : 12 parpaings', subtitle: 'Photo jointe · Cause : casse manutention', icon: Icons.warning_amber_rounded, danger: true),
      ];

  List<AppNotificationItem> getNotifications() => const [
        AppNotificationItem(title: 'Besoin matériau à valider', body: 'Ciment 42.5 · 80 sacs', time: 'Il y a 15 min'),
        AppNotificationItem(title: 'Rapport hebdomadaire prêt', body: 'Le rapport du projet est disponible', time: 'Il y a 1 h'),
        AppNotificationItem(title: 'Nouvelle activité journalisée', body: 'Coulage poteaux P3 et P4', time: 'Il y a 2 h'),
      ];
}

const demoRepository = DemoRepository();

class AppStateStore extends ChangeNotifier {
  String _activeProjectId = 'p1';

  List<AppProject> get projects => demoRepository.getProjects();
  AppProject get activeProject => projects.firstWhere((p) => p.id == _activeProjectId);
  List<AppPhase> get phases => demoRepository.getPhases(_activeProjectId);
  List<MaterialNeed> get materialNeeds => demoRepository.getMaterialNeeds(_activeProjectId);
  List<Collaborator> get collaborators => demoRepository.getCollaborators(_activeProjectId);
  List<ExpenseItem> get expenses => demoRepository.getExpenses(_activeProjectId);
  List<JournalEntry> get journal => demoRepository.getJournal(_activeProjectId);
  List<AppNotificationItem> get notifications => demoRepository.getNotifications();

  void selectProject(String projectId) {
    if (_activeProjectId == projectId) return;
    _activeProjectId = projectId;
    notifyListeners();
  }
}

final appState = AppStateStore();

String formatCurrency(num amount) {
  final raw = amount.round().toString();
  final chars = raw.split('').reversed.toList();
  final parts = <String>[];
  for (var i = 0; i < chars.length; i += 3) {
    parts.add(chars.skip(i).take(3).toList().reversed.join());
  }
  return '${parts.reversed.join(' ')} XAF';
}

String compactAmount(double value) {
  if (value >= 1000000) {
    final millions = value / 1000000;
    return '${millions % 1 == 0 ? millions.toStringAsFixed(0) : millions.toStringAsFixed(1)}M';
  }
  if (value >= 1000) {
    final thousands = value / 1000;
    return '${thousands % 1 == 0 ? thousands.toStringAsFixed(0) : thousands.toStringAsFixed(1)}K';
  }
  return value.toStringAsFixed(0);
}

class SmartBuildingApp extends StatelessWidget {
  const SmartBuildingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Building',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2D75E8), primary: const Color(0xFF2D75E8), surface: Colors.white),
      ),
      home: const AppShell(),
    );
  }
}

enum AppTab { home, projects, chantier, finances, profile }

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  AppTab currentTab = AppTab.home;

  @override
  void initState() {
    super.initState();
    appState.addListener(_refresh);
  }

  @override
  void dispose() {
    appState.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() {
    if (mounted) setState(() {});
  }

  void _openSheet(Widget child) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _AppHeader(onNotifications: () => _openSheet(const _NotificationsSheet())),
            Expanded(
              child: IndexedStack(
                index: currentTab.index,
                children: [
                  HomeScreen(onJournal: () => _openSheet(const _JournalSheet())),
                  const ProjectsScreen(),
                  ChantierScreen(onShare: () => _openSheet(const _ShareSheet())),
                  const FinancesScreen(),
                  const ProfileScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNav(currentTab: currentTab, onChanged: (tab) => setState(() => currentTab = tab)),
      floatingActionButton: currentTab == AppTab.home
          ? FloatingActionButton(
              backgroundColor: const Color(0xFF2D75E8),
              foregroundColor: Colors.white,
              shape: const CircleBorder(),
              onPressed: () => _openSheet(const _JournalSheet()),
              child: const Icon(Icons.add, size: 34),
            )
          : null,
    );
  }
}

class _AppHeader extends StatelessWidget {
  const _AppHeader({required this.onNotifications});

  final VoidCallback onNotifications;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
      decoration: const BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Color(0xFFE4EBF3)))),
      child: Row(
        children: [
          Image.asset('assets/images/logo.png', width: 58, height: 58, fit: BoxFit.contain),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SMART BUILDING', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Color(0xFF173B70))),
                SizedBox(height: 2),
                Text('Gardez le contrôle de votre construction', style: TextStyle(fontSize: 12, color: Color(0xFF65768B))),
              ],
            ),
          ),
          IconButton(onPressed: onNotifications, icon: const Icon(Icons.notifications_none_rounded), color: const Color(0xFF173B70)),
        ],
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({required this.currentTab, required this.onChanged});

  final AppTab currentTab;
  final ValueChanged<AppTab> onChanged;

  @override
  Widget build(BuildContext context) {
    final items = <({AppTab tab, IconData icon, String label})>[
      (tab: AppTab.home, icon: Icons.home_outlined, label: 'Accueil'),
      (tab: AppTab.projects, icon: Icons.work_outline, label: 'Projets'),
      (tab: AppTab.chantier, icon: Icons.domain_outlined, label: 'Chantier'),
      (tab: AppTab.finances, icon: Icons.bar_chart_outlined, label: 'Finances'),
      (tab: AppTab.profile, icon: Icons.person_outline, label: 'Profil'),
    ];
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
      decoration: const BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Color(0xFFE4EBF3)))),
      child: Row(
        children: items.map((item) {
          final selected = item.tab == currentTab;
          return Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () => onChanged(item.tab),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(color: selected ? const Color(0xFFEAF2FF) : Colors.transparent, borderRadius: BorderRadius.circular(18)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(item.icon, color: selected ? const Color(0xFF2D75E8) : const Color(0xFF5A6B83)),
                    const SizedBox(height: 4),
                    Text(item.label, style: TextStyle(fontSize: 12, fontWeight: selected ? FontWeight.w700 : FontWeight.w500, color: selected ? const Color(0xFF2D75E8) : const Color(0xFF5A6B83))),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onJournal});

  final VoidCallback onJournal;

  @override
  Widget build(BuildContext context) {
    final project = appState.activeProject;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bonjour Richard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
                  SizedBox(height: 6),
                  Text('Vue rapide du projet actif', style: TextStyle(fontSize: 15, color: Color(0xFF66758A))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(999), border: Border.all(color: const Color(0xFFE4EBF3))),
              child: Text('${(project.progress * 100).round()}% ›', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF66758A))),
            ),
          ],
        ),
        const SizedBox(height: 14),
        ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Stack(
            children: [
              AspectRatio(aspectRatio: 1.24, child: Image.asset(project.imageAsset, fit: BoxFit.cover)),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [const Color(0x220E2341), const Color(0x992D75E8)]),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 18,
                right: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(children: [Icon(Icons.home_work_outlined, color: Colors.white), SizedBox(width: 6), Text('Projet actif', style: TextStyle(fontSize: 14, color: Colors.white))]),
                    const SizedBox(height: 8),
                    Text(project.title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white)),
                  ],
                ),
              ),
              Positioned(
                left: 18,
                right: 18,
                bottom: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Progression chantier', style: TextStyle(fontSize: 15, color: Colors.white)),
                        Text('${(project.progress * 100).round()}%', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: LinearProgressIndicator(value: project.progress, minHeight: 10, backgroundColor: const Color(0x88FFFFFF), color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _FinanceMiniCard(label: 'Estimé', value: compactAmount(project.budgetEstimated), sub: 'FCFA')),
            const SizedBox(width: 8),
            Expanded(child: _FinanceMiniCard(label: 'Dépensé', value: compactAmount(project.amountSpent), sub: 'FCFA')),
            const SizedBox(width: 8),
            Expanded(child: _FinanceMiniCard(label: 'Écart', value: '-${compactAmount(project.amountRemaining)}', sub: 'restant', accent: const Color(0xFFD99124))),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(26), border: Border.all(color: const Color(0xFFE4EBF3))),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Actions rapides', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Text('Voir tout +', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF2D75E8))),
                ],
              ),
              const SizedBox(height: 12),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.35,
                children: [
                  const _QuickActionCard(icon: '💰', label: 'Ajouter dépense'),
                  const _QuickActionCard(icon: '📸', label: 'Ajouter photo'),
                  const _QuickActionCard(icon: '📦', label: 'Stock matériaux'),
                  _QuickActionCard(icon: '📝', label: 'Journal chantier', hasFab: true, onTap: onJournal),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FinanceMiniCard extends StatelessWidget {
  const _FinanceMiniCard({required this.label, required this.value, required this.sub, this.accent});
  final String label;
  final String value;
  final String sub;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: const TextStyle(fontSize: 13, color: Color(0xFF66758A))),
        const SizedBox(height: 8),
        Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: accent ?? const Color(0xFF0E2341))),
        const SizedBox(height: 2),
        Text(sub, style: const TextStyle(fontSize: 13, color: Color(0xFF66758A))),
      ]),
    );
  }
}

class _QuickActionCard extends StatelessWidget {
  const _QuickActionCard({required this.icon, required this.label, this.hasFab = false, this.onTap});
  final String icon;
  final String label;
  final bool hasFab;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: const Color(0xFFE4EBF3))),
            padding: const EdgeInsets.all(14),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(icon, style: const TextStyle(fontSize: 34)), const SizedBox(height: 8), Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF0E2341)))]),
          ),
          if (hasFab)
            Positioned(
              right: -8,
              bottom: -8,
              child: Container(width: 70, height: 70, decoration: const BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: [Color(0xFF2D75E8), Color(0xFF1E5FC4)])), child: const Icon(Icons.add, color: Colors.white, size: 38)),
            ),
        ],
      ),
    );
  }
}

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = appState.projects;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        const Text('Bonjour Richard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
        const SizedBox(height: 6),
        const Text('Voici vos projets', style: TextStyle(fontSize: 15, color: Color(0xFF66758A))),
        const SizedBox(height: 14),
        ...projects.map((project) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: _ProjectListItem(project: project, onOpen: () => appState.selectProject(project.id)),
        )),
      ],
    );
  }
}

class _ProjectListItem extends StatelessWidget {
  const _ProjectListItem({required this.project, required this.onOpen});
  final AppProject project;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Column(children: [
        Row(children: [
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(project.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text('${project.city} · ${project.collaboratorsCount} collaborateurs', style: const TextStyle(fontSize: 14, color: Color(0xFF66758A)))])),
          FilledButton(onPressed: onOpen, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2D75E8), foregroundColor: Colors.white, shape: const StadiumBorder()), child: const Row(mainAxisSize: MainAxisSize.min, children: [Text('Ouvrir'), SizedBox(width: 6), Icon(Icons.chevron_right)])),
        ]),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(children: [
            AspectRatio(aspectRatio: 2.2, child: Image.asset(project.imageAsset, fit: BoxFit.cover)),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.transparent, Color(0xA0000000)])),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Progression : ${(project.progress * 100).round()}%', style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)), const SizedBox(height: 8), ClipRRect(borderRadius: BorderRadius.circular(999), child: LinearProgressIndicator(value: project.progress, minHeight: 8, backgroundColor: const Color(0x66FFFFFF), color: project.progress >= .7 ? const Color(0xFF8BC34A) : project.progress >= .3 ? const Color(0xFFF0B323) : const Color(0xFFE65A5A)))]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

class ChantierScreen extends StatelessWidget {
  const ChantierScreen({super.key, required this.onShare});
  final VoidCallback onShare;

  @override
  Widget build(BuildContext context) {
    final project = appState.activeProject;
    final phases = appState.phases;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        Text(project.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
        const SizedBox(height: 6),
        Text('${project.city} · ${project.collaboratorsCount} collaborateurs', style: const TextStyle(fontSize: 15, color: Color(0xFF66758A))),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(children: [
            AspectRatio(aspectRatio: 1.5, child: Image.asset(project.imageAsset, fit: BoxFit.cover)),
            Positioned(left: 16, top: 16, child: Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8), decoration: BoxDecoration(color: const Color(0xAA2D75E8), borderRadius: BorderRadius.circular(999)), child: Text('${(project.progress * 100).round()} % terminé', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16)))),
          ]),
        ),
        const SizedBox(height: 14),
        ...phases.map((phase) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: _PhaseCard(phase: phase),
        )),
        _MaterialsNeedsSection(needs: appState.materialNeeds),
        const SizedBox(height: 12),
        _CollaboratorsSection(collaborators: appState.collaborators, onShare: onShare),
      ],
    );
  }
}

class _PhaseCard extends StatelessWidget {
  const _PhaseCard({required this.phase});
  final AppPhase phase;

  @override
  Widget build(BuildContext context) {
    final progressColor = phase.progress >= 1 ? const Color(0xFF7AC043) : phase.progress > 0 ? const Color(0xFFF0B323) : const Color(0xFFD9DFEA);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Row(children: [
        Container(width: 58, height: 58, decoration: BoxDecoration(color: const Color(0xFFEAF2FF), borderRadius: BorderRadius.circular(12)), child: const Icon(Icons.domain_outlined, color: Color(0xFF2D75E8))),
        const SizedBox(width: 12),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(phase.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text(phase.status, style: const TextStyle(fontSize: 14, color: Color(0xFF66758A))), const SizedBox(height: 8), Text(phase.details, style: const TextStyle(fontSize: 13, color: Color(0xFF3F536E))), const SizedBox(height: 8), ClipRRect(borderRadius: BorderRadius.circular(999), child: LinearProgressIndicator(value: phase.progress, minHeight: 8, backgroundColor: const Color(0xFFE6ECF5), color: progressColor))])),
        const SizedBox(width: 10),
        FilledButton(onPressed: () {}, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2D75E8), foregroundColor: Colors.white, shape: const StadiumBorder()), child: Row(mainAxisSize: MainAxisSize.min, children: [Text(phase.status == 'En cours' ? 'Ouvrir' : 'Voir'), const SizedBox(width: 4), const Icon(Icons.chevron_right)])),
      ]),
    );
  }
}

class _MaterialsNeedsSection extends StatelessWidget {
  const _MaterialsNeedsSection({required this.needs});
  final List<MaterialNeed> needs;

  @override
  Widget build(BuildContext context) {
    Color colorForStatus(String status) {
      switch (status) {
        case 'Demandé': return const Color(0xFFE65A5A);
        case 'Validé': return const Color(0xFFF0B323);
        case 'Commandé': return const Color(0xFF2D75E8);
        default: return const Color(0xFF7AC043);
      }
    }
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Matériaux & besoins', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), SizedBox(height: 4), Text('Demandé · Validé · Commandé · Livré', style: TextStyle(fontSize: 13, color: Color(0xFF66758A)))]), FilledButton.icon(onPressed: () {}, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2D75E8), foregroundColor: Colors.white, shape: const StadiumBorder()), icon: const Icon(Icons.add), label: const Text('Ajouter'))]),
        const SizedBox(height: 12),
        ...needs.map((need) {
          final statusColor = colorForStatus(need.status);
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: const Color(0xFFE4EBF3))),
              child: Row(children: [Container(width: 42, height: 42, decoration: BoxDecoration(color: const Color(0xFFEAF2FF), borderRadius: BorderRadius.circular(12)), child: const Icon(Icons.inventory_2_outlined, color: Color(0xFF2D75E8))), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(need.name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text('${need.quantity.toStringAsFixed(need.quantity % 1 == 0 ? 0 : 1)} ${need.unit}', style: const TextStyle(fontSize: 13, color: Color(0xFF66758A)))])), Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8), decoration: BoxDecoration(color: statusColor.withOpacity(.12), borderRadius: BorderRadius.circular(999)), child: Text(need.status, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: statusColor)))],),
            ),
          );
        }),
      ]),
    );
  }
}

class _CollaboratorsSection extends StatelessWidget {
  const _CollaboratorsSection({required this.collaborators, required this.onShare});
  final List<Collaborator> collaborators;
  final VoidCallback onShare;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Collaborateurs', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
        const SizedBox(height: 4),
        const Text('Invitations, rôles et permissions V1', style: TextStyle(fontSize: 13, color: Color(0xFF66758A))),
        const SizedBox(height: 12),
        Row(children: [Expanded(child: FilledButton.icon(onPressed: onShare, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF25D366), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), padding: const EdgeInsets.symmetric(vertical: 14)), icon: const Icon(Icons.chat_bubble_outline), label: const Text('Partager WhatsApp'))), const SizedBox(width: 10), Expanded(child: OutlinedButton.icon(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFF2D75E8), side: const BorderSide(color: Color(0xFFE4EBF3)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), padding: const EdgeInsets.symmetric(vertical: 14)), icon: const Icon(Icons.qr_code_2_outlined), label: const Text('QR projet')))]),
        const SizedBox(height: 12),
        ...collaborators.map((c) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: const Color(0xFFE4EBF3))),
            child: Row(children: [CircleAvatar(radius: 22, backgroundColor: const Color(0xFFEAF2FF), child: Text(c.fullName.split(' ').map((e) => e[0]).take(2).join(), style: const TextStyle(fontWeight: FontWeight.w800, color: Color(0xFF2D75E8)))), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(c.fullName, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text(c.role, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: c.color)), const SizedBox(height: 4), Text(c.permissionsSummary, style: const TextStyle(fontSize: 13, color: Color(0xFF66758A)))])), const Icon(Icons.chevron_right, color: Color(0xFF8C9AAF))]),
          ),
        )),
      ]),
    );
  }
}

class _JournalSheet extends StatelessWidget {
  const _JournalSheet();

  @override
  Widget build(BuildContext context) {
    return _BottomSheetFrame(
      title: 'Journal chantier',
      child: Column(children: [
        Row(children: [Expanded(child: FilledButton.icon(onPressed: () {}, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF2D75E8), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), padding: const EdgeInsets.symmetric(vertical: 14)), icon: const Icon(Icons.add_circle_outline), label: const Text('Nouvelle entrée')))]),
        const SizedBox(height: 12),
        ...appState.journal.map((e) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: _JournalEntryCard(entry: e),
        )),
      ]),
    );
  }
}

class _JournalEntryCard extends StatelessWidget {
  const _JournalEntryCard({required this.entry});
  final JournalEntry entry;

  @override
  Widget build(BuildContext context) {
    final accent = entry.danger ? const Color(0xFFE65A5A) : const Color(0xFF2D75E8);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Row(children: [Container(width: 42, height: 42, decoration: BoxDecoration(color: accent.withOpacity(.12), borderRadius: BorderRadius.circular(12)), child: Icon(entry.icon, color: accent)), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(entry.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text(entry.subtitle, style: const TextStyle(fontSize: 13, color: Color(0xFF66758A)))]))]),
    );
  }
}

class _ShareSheet extends StatelessWidget {
  const _ShareSheet();

  @override
  Widget build(BuildContext context) {
    final project = appState.activeProject;
    return _BottomSheetFrame(
      title: 'Partager le projet',
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: const Color(0xFFE4EBF3))),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Lien public', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800)), const SizedBox(height: 8), Text('smartbuilding.app/share/${project.id}', style: const TextStyle(fontSize: 13, color: Color(0xFF66758A)))]),
        ),
        const SizedBox(height: 12),
        Row(children: [Expanded(child: FilledButton.icon(onPressed: () {}, style: FilledButton.styleFrom(backgroundColor: const Color(0xFF25D366), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), padding: const EdgeInsets.symmetric(vertical: 14)), icon: const Icon(Icons.chat_bubble_outline), label: const Text('WhatsApp'))), const SizedBox(width: 10), Expanded(child: OutlinedButton.icon(onPressed: () {}, style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFF2D75E8), side: const BorderSide(color: Color(0xFFE4EBF3)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), padding: const EdgeInsets.symmetric(vertical: 14)), icon: const Icon(Icons.link_outlined), label: const Text('Copier le lien')))]),
        const SizedBox(height: 14),
        const Text('Éléments visibles', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
        const SizedBox(height: 10),
        const _ShareVisibilityRow(label: 'Progression', visible: true),
        const SizedBox(height: 8),
        const _ShareVisibilityRow(label: 'Photos', visible: true),
        const SizedBox(height: 8),
        const _ShareVisibilityRow(label: 'Activités', visible: true),
        const SizedBox(height: 8),
        const _ShareVisibilityRow(label: 'Équipe', visible: false),
        const SizedBox(height: 8),
        const _ShareVisibilityRow(label: 'Finances', visible: false),
      ]),
    );
  }
}

class _ShareVisibilityRow extends StatelessWidget {
  const _ShareVisibilityRow({required this.label, required this.visible});
  final String label;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Row(children: [Expanded(child: Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF0E2341)))), Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7), decoration: BoxDecoration(color: visible ? const Color(0xFFEAF2FF) : const Color(0xFFFDEAEA), borderRadius: BorderRadius.circular(999)), child: Text(visible ? 'Visible' : 'Masqué', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: visible ? const Color(0xFF2D75E8) : const Color(0xFFE65A5A))))]),
    );
  }
}

class _NotificationsSheet extends StatelessWidget {
  const _NotificationsSheet();

  @override
  Widget build(BuildContext context) {
    return _BottomSheetFrame(
      title: 'Notifications',
      child: Column(children: appState.notifications.map((e) => Padding(padding: const EdgeInsets.only(bottom: 10), child: _NotificationRow(item: e))).toList()),
    );
  }
}

class _NotificationRow extends StatelessWidget {
  const _NotificationRow({required this.item});
  final AppNotificationItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18), border: Border.all(color: const Color(0xFFE4EBF3))),
      child: Row(children: [Container(width: 42, height: 42, decoration: BoxDecoration(color: const Color(0xFFEAF2FF), borderRadius: BorderRadius.circular(12)), child: const Icon(Icons.notifications_none_rounded, color: Color(0xFF2D75E8))), const SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(item.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))), const SizedBox(height: 4), Text(item.body, style: const TextStyle(fontSize: 13, color: Color(0xFF66758A)))])), Text(item.time, style: const TextStyle(fontSize: 12, color: Color(0xFF8C9AAF)))]),
    );
  }
}

class _BottomSheetFrame extends StatelessWidget {
  const _BottomSheetFrame({required this.title, required this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFF5F7FB), borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
      child: SafeArea(
        top: false,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(width: 44, height: 5, decoration: BoxDecoration(color: const Color(0xFFC9D5E5), borderRadius: BorderRadius.circular(999))),
          const SizedBox(height: 14),
          Row(children: [Expanded(child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xFF0E2341)))), IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.close_rounded))]),
          const SizedBox(height: 10),
          Flexible(child: SingleChildScrollView(child: child)),
        ]),
      ),
    );
  }
}

class FinancesScreen extends StatelessWidget {
  const FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final project = appState.activeProject;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), border: Border.all(color: const Color(0xFFE4EBF3))),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('Résumé financier', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
            const SizedBox(height: 12),
            Text(formatCurrency(project.amountSpent), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Color(0xFF0E2341))),
            const SizedBox(height: 4),
            const Text('Dépensé total', style: TextStyle(fontSize: 14, color: Color(0xFF66758A))),
            const SizedBox(height: 14),
            Row(children: [Expanded(child: _FinanceMiniCard(label: 'Budget estimé', value: formatCurrency(project.budgetEstimated).replaceAll(' XAF', ''), sub: 'XAF')), const SizedBox(width: 8), Expanded(child: _FinanceMiniCard(label: 'Reste', value: formatCurrency(project.amountRemaining).replaceAll(' XAF', ''), sub: 'XAF'))]),
          ]),
        ),
      ],
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Projet actif : ${appState.activeProject.title}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)));
  }
}
