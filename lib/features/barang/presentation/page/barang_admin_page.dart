import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peminjaman_barang/features/barang/domain/entity/barang_admin/barang_admin_entity.dart';
import 'package:peminjaman_barang/features/barang/presentation/blocs/barang_admin/barang_admin_bloc.dart';

class BarangAdminPage extends StatefulWidget {
  const BarangAdminPage({super.key});

  @override
  State<BarangAdminPage> createState() => _BarangAdminPageState();
}

class _BarangAdminPageState extends State<BarangAdminPage> {
  @override
  void initState() {
    context.read<BarangAdminBloc>().add(GetBarangAdmin());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color(0xffDFA947),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 48, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/box.png'),
                          const Text(
                            'Data Barang',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 300),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 38),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(width: 1),
                          ),
                          backgroundColor: const Color(0xff2E2D51),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Tambah Barang'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Color(0xffF6CB7D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
                  child: BlocBuilder<BarangAdminBloc, BarangAdminState>(
                    builder: (context, state) {
                      if (state is BarangAdminLoading) {
                        return const Center(
                          child: CupertinoActivityIndicator(),
                        );
                      } else if (state is BarangAdminLoaded) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Table(
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: const [
                                  TableRow(children: [
                                    Text(
                                      'No',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Kode Barang',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Nama Barang',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Merek',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Jenis',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Unit',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Divider(
                                color: Colors.black,
                              ),
                              const SizedBox(height: 16),
                              Table(
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: List<TableRow>.generate(
                                  state.barangAdminEntity!.length,
                                  (index) {
                                    final barang =
                                        state.barangAdminEntity![index];
                                    return TableRow(
                                      children: [
                                        Text(
                                          (index + 1).toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          barang.barang!.kodeBarang!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          barang.barang!.nama!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          barang.barang!.merek!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          barang.barang!.jenis!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          barang.barang!.unit!.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: const Icon(Icons.menu),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
