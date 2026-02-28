import 'package:flutter/material.dart';

class ScheduleFormPage extends StatefulWidget {
  const ScheduleFormPage({super.key});

  @override
  State<ScheduleFormPage> createState() => _ScheduleFormPageState();
}

class _ScheduleFormPageState extends State<ScheduleFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _namaCtrl = TextEditingController();
  final _platCtrl = TextEditingController();
  final _jenisCtrl = TextEditingController();
  final _tanggalCtrl = TextEditingController(); 
  final _catatanCtrl = TextEditingController();

  @override
  void dispose() {
    _namaCtrl.dispose();
    _platCtrl.dispose();
    _jenisCtrl.dispose();
    _tanggalCtrl.dispose();
    _catatanCtrl.dispose();
    super.dispose();
  }

  void _save() {
    if (!_formKey.currentState!.validate()) return;

    final data = <String, String>{
      'namaPemilik': _namaCtrl.text.trim(),
      'platNomor': _platCtrl.text.trim().toUpperCase(),
      'jenisKendaraan': _jenisCtrl.text.trim(),
      'tanggalService': _tanggalCtrl.text.trim(),
      'catatan': _catatanCtrl.text.trim().isEmpty ? '-' : _catatanCtrl.text.trim(),
    };

    Navigator.pop(context, data); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Jadwal Service')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaCtrl,
                decoration: const InputDecoration(
                  labelText: 'Nama Pemilik',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Nama pemilik wajib diisi'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _platCtrl,
                decoration: const InputDecoration(
                  labelText: 'Plat Nomor',
                  hintText: 'Contoh: B 1234 ABC',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Plat nomor wajib diisi'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _jenisCtrl,
                decoration: const InputDecoration(
                  labelText: 'Jenis Kendaraan',
                  hintText: 'Mobil / Motor / Truk',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Jenis kendaraan wajib diisi'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _tanggalCtrl,
                decoration: const InputDecoration(
                  labelText: 'Tanggal Service',
                  hintText: 'Contoh: 25-02-2026',
                  border: OutlineInputBorder(),
                ),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Tanggal service wajib diisi'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _catatanCtrl,
                decoration: const InputDecoration(
                  labelText: 'Catatan (opsional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 18),
              FilledButton.icon(
                onPressed: _save,
                icon: const Icon(Icons.save),
                label: const Text('Simpan Jadwal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}