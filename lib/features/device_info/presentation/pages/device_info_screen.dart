import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/device_info/presentation/logic/device_info_bloc.dart';
import 'package:varosha_app/features/device_info/presentation/widgets/native_button_view.dart';
import 'package:varosha_app/route/route_imports.dart';
import 'package:varosha_app/widgets/build_text.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceInfoBloc>().add(const DeviceInfoEvent.fetchDeviceInfo());
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.go(RouteName.dashboard);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go(RouteName.dashboard),
          ),
          title: const BuildText(
            text: 'Device Information',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: BlocBuilder<DeviceInfoBloc, DeviceInfoState>(
          builder: (context, state) {
            if (state.isLoading && state.deviceInfo == null) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.hasError && state.deviceInfo == null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildText(
                      text: state.errorMessage ?? 'Something went wrong',
                      fontSize: 16,
                      color: Colors.red,
                    ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<DeviceInfoBloc>()
                            .add(const DeviceInfoEvent.fetchDeviceInfo());
                      },
                      child: const BuildText(
                        text: 'Retry',
                        fontSize: 14,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ],
                ),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<DeviceInfoBloc>()
                    .add(const DeviceInfoEvent.refreshDeviceInfo());
              },
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Native Button
                    Container(
                      width: double.infinity,
                      height: 60.h,
                      margin: EdgeInsets.only(bottom: 24.h),
                      child: NativeButtonView(
                        onPressed: () {
                          context
                              .read<DeviceInfoBloc>()
                              .add(const DeviceInfoEvent.refreshDeviceInfo());
                        },
                      ),
                    ),

                    // Device Info Cards
                    if (state.deviceInfo != null) ...[
                      _buildInfoCard(
                        'Battery Level',
                        '${state.deviceInfo!.batteryLevel}%',
                        Icons.battery_full,
                        state.deviceInfo!.isCharging
                            ? Colors.green
                            : Colors.orange,
                      ),
                      SizedBox(height: 16.h),
                      _buildInfoCard(
                        'Device Model',
                        state.deviceInfo!.deviceModel,
                        Icons.phone_android,
                        AppColors.kPrimaryColor,
                      ),
                      SizedBox(height: 16.h),
                      _buildInfoCard(
                        'Charging Status',
                        state.deviceInfo!.isCharging
                            ? 'Charging'
                            : 'Not Charging',
                        Icons.power,
                        state.deviceInfo!.isCharging
                            ? Colors.green
                            : Colors.red,
                      ),
                      SizedBox(height: 16.h),
                      _buildInfoCard(
                        'System Time',
                        _formatDateTime(state.deviceInfo!.systemTime),
                        Icons.access_time,
                        AppColors.kPrimaryColor,
                      ),
                    ],

                    // Loading indicator for refresh
                    if (state.isLoading && state.deviceInfo != null)
                      Padding(
                        padding: EdgeInsets.all(16.w),
                        child: const Center(child: CircularProgressIndicator()),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      String title, String value, IconData icon, Color color) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: title,
                  fontSize: 14.sp,
                  color: AppColors.kTextDisabledColor,
                ),
                SizedBox(height: 4.h),
                BuildText(
                  text: value,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kTextColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
