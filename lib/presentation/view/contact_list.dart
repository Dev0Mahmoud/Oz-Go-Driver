import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oz_go_driver/business_logic/global_cubit/global_cubit.dart';
import 'package:oz_go_driver/business_logic/global_cubit/global_state.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = GlobalCubit.get(context);
    return BlocConsumer<GlobalCubit,GlobalState>(
      listener: (context,state){},
      builder: (context,state){
        if(state is GotContacts) {
            return ListView.builder(
                itemCount: cubit.contacts!.length,
                itemBuilder: (context, index) {
                  Contact contact = cubit.contacts![index];
                  return Column(children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                      title: Text(contact.displayName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(contact.phones[0]),
                          // Text(contact.emails[0]),
                        ],
                      ),
                    ),
                    const Divider()
                  ]);
                });
          }else if (state is LoadingContacts){
          return Center(child: CircularProgressIndicator());
        }
        return SizedBox();
        }

    );


  }
}
