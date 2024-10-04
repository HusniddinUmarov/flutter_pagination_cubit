

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagination_cubit/features/presentation/cubit/pagination_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination Cubit'),
      ),
      body: BlocBuilder<PaginationCubit, List<dynamic>>(
        builder: (context, items){
          return ListView.builder(
            itemCount: items.length +1,
              itemBuilder: (context, index){
            if(index == items.length){
              context.read<PaginationCubit>().fetchItems();
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return ListTile(
                title: Text(items[index]['title']),
                subtitle: Text(items[index]['body']),
                leading: Text('${items[index]['id']}'),
              );
            }
          });
        },
      ),
    );
  }
}
