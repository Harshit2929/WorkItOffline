import 'package:app/models/shg.dart';

class Cluster {
  final List<SHG> shgs;
  final String aoId, cId;


  Cluster(this.shgs, this.aoId, this.cId);
}
