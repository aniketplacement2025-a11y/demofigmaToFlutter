// screen/delivery_page.dart
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  int _deliveryTime = 10; // minutes left

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header with time and close button
          _buildHeader(),

          // Map Section
          Expanded(
            flex: 1,
            child: _buildMapSection(),
          ),

          // Delivery Info Section
          _buildDeliveryInfoSection(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Close button
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildMapSection() {
    return Stack(
      children: [
        // Map Background (You can replace this with a real map widget)
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFE8F4F8), // Light blue background for map
          ),
          child: Image.asset(
            'assets/Coffee-shop/Maps.png', // Your map image
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => _buildFallbackMap(),
            //
          ),
        ),

        // Delivery Progress Indicator
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: _buildDeliveryProgress(),
        ),
      ],
    );
  }

  Widget _buildFallbackMap() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Street names and routes (simulating the map)
          _buildStreetRow('12 St.', true),
          _buildStreetRow('WTO-SL', false),
          _buildStreetRow('56th St.', true),
          _buildStreetRow('36th Street', false),
          _buildStreetRow('Nirmala', true),
          _buildStreetRow('6Feb 1955', false),
          _buildStreetRow('Seth St.', true),
          _buildStreetRow('3rd Ave', false),

          const Spacer(),

          // Route line
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFC67C4E),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreetRow(String streetName, bool isMain) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: isMain ? const Color(0xFFC67C4E) : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          const SizedBox(width: 12),
          Text(
            streetName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isMain ? FontWeight.w600 : FontWeight.normal,
              color: isMain ? Colors.black87 : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeliveryProgress() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Delivery time
          Text(
            '$_deliveryTime minutes left',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),

          // Delivery address
          const Text(
            'Delivery to Jl. Kpg Sutoyo',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),

          // Progress indicator (like 3 filled + 1 unfilled bar)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProgressBarSegment(active: true),
              const SizedBox(width: 6),
              _buildProgressBarSegment(active: true),
              const SizedBox(width: 6),
              _buildProgressBarSegment(active: true),
              const SizedBox(width: 6),
              _buildProgressBarSegment(active: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBarSegment({required bool active}) {
    return Container(
      height: 5,
      width: 50,
      decoration: BoxDecoration(
        color: active ? const Color(0xFF34C759) : Colors.grey[300],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget _buildDeliveryInfoSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        // Shadow removed as requested
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Delivery message with proper spacing
          const Text(
            'Delivered your order',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2F2D2C),
              height: 1.2,
            ),
          ),
          const SizedBox(height: 12),

          // Description text with exact line breaks
          const Text(
            'We will deliver your goods to you in\nthe shortest possible time.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF9B9B9B),
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 28),

          // Courier information
          _buildCourierInfo(),
          const SizedBox(height: 24),

          // Action buttons
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildCourierInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xFFEAEAEA),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Courier avatar with image
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFC67C4E).withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.asset(
                'Coffee-shop/brooklyn_simmons.jpg', // Replace with your image path
                width: 45,
                height: 45,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFC67C4E),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 22,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10),

          // Courier details with exact typography
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brooklyn Simmons',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2F2D2C),
                    //letterSpacing: -0.2,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Personal Courier',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9B9B9B),
                    fontWeight: FontWeight.w400,
                    //letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
          ),

          // Call button with exact styling
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: const Color(0xFFC67C4E),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFC67C4E).withOpacity(0.3),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () {
                // Handle call action
              },
              icon: const Icon(
                Icons.phone_outlined,
                color: Colors.white,
                size: 18,
              ),
              padding: EdgeInsets.zero,
              //splashRadius: 22,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        // Message button with exact styling
        Expanded(
          child: OutlinedButton(
            onPressed: () {
              // Handle message action
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              side: const BorderSide(
                color: Color(0xFFC67C4E),
                width: 1.5,
              ),
              backgroundColor: Colors.transparent,
              foregroundColor: const Color(0xFFC67C4E),
            ),
            child: const Text(
              'Message',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFC67C4E),
                //letterSpacing: -0.2,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),

        // Track order button with exact styling
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Handle track order action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC67C4E),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            child: const Text(
              'Track Order',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                //letterSpacing: -0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
