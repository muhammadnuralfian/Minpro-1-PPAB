import 'package:flutter/material.dart';
import 'schedule_form_page.dart.dart';

class ScheduleListPage extends StatefulWidget {
  const ScheduleListPage({super.key});

  @override
  State<ScheduleListPage> createState() => _ScheduleListPageState();
}

class _ScheduleListPageState extends State<ScheduleListPage> {

  final List<Map<String, String>> schedules = [];

  void _addSchedule(Map<String, String> item) {
    setState(() => schedules.add(item));
  }

  void _deleteSchedule(int index) {
    setState(() => schedules.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Service Kendaraan'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          final result = await Navigator.push<Map<String, String>>(
            context,
            MaterialPageRoute(builder: (_) => const ScheduleFormPage()),
          );


          if (result != null) {
            _addSchedule(result); 
          }
        },
        child: const Icon(Icons.add),
      ),
      body: schedules.isEmpty
          ? const Center(
              child: Text('Belum ada jadwal. Tekan + untuk menambah.'),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: schedules.length,
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final item = schedules[index];

                return Card(
                  child: ListTile(
                    title: Text("${item['platNomor']} • ${item['jenisKendaraan']}"),
                    subtitle: Text(
                      "Pemilik: ${item['namaPemilik']}\n"
                      "Tanggal: ${item['tanggalService']}\n"
                      "Catatan: ${item['catatan']}",
                    ),
                    isThreeLine: true,
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {
                        // DELETE
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Hapus Jadwal?'),
                            content: const Text('Data akan dihapus dari daftar.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Batal'),
                              ),
                              FilledButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _deleteSchedule(index);
                                },
                                child: const Text('Hapus'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}