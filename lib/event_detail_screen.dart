import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Şimdilik tek event: Seahawks maçı
    const String title = 'Sabancı Seahawks Maçı';
    const String date = '24.01.2026';
    const String imageAsset = 'assets/images/seahawks.png';

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Üst başlık + logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 48,
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Geri
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.white, size: 20),
                      SizedBox(width: 4),
                      Text(
                        'Geri',
                        style: AppTextStyles.bodyWhite,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Büyük foto
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    imageAsset,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 24),

                const Text(
                  'Detaylar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),

                const Text(
                  'Kendi evimizde, kendi taraftarımızın önünde 24 Ocak\'ta sahaya çıkıyoruz!\n\n'
                      'Her oyun, her mücadele Sabancı Seahawks ruhunu göstermek için bir fırsat!\n\n'
                      'Tüm enerjimizle Akdeniz Heroes karşısında sahadayız! 💙',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
