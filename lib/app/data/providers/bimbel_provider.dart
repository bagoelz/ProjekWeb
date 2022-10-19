import 'package:get/get.dart';

import '../models/bimbel_model.dart';

// const baseUrl ="http://192.168.100.8/";
const baseUrl = "http://pkl1.webmediacenter.com/";

class BimbelProvider extends GetConnect {
  Future<Bimbel?> getKelas(int id) async {
    final response =
        await get('$baseUrl/api/mahasiswa?paketbimbel_id=88/$id');
    return Bimbel.fromJson(response.body["data"]);
  }

  Future<List<Bimbel>> getAllKelas() async {
    final response = await get('$baseUrl/api/mahasiswa');
    return Bimbel.fromJsonList(response.body["data"]);
  }
}
