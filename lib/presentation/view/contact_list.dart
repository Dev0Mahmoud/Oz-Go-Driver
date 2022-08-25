import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oz_go_driver/business_logic/global_cubit/global_cubit.dart';
import 'package:oz_go_driver/business_logic/global_cubit/global_state.dart';
import 'package:oz_go_driver/presentation/styles/colors.dart';
import 'package:oz_go_driver/presentation/widget/default_form_field.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactList extends StatelessWidget {
  final List<Contact> list ;
   ContactList({
    Key? key,
     required this.list,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = GlobalCubit.get(context);
    return BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (list.isNotEmpty) {
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {


                  Contact contact = list[index];

                  return Column(children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: AppColor.buttonColor,
                        radius: 20,
                        child: Icon(
                          Icons.person,
                          color: AppColor.white,
                        ),
                      ),
                      title: Text(contact.displayName),
                      trailing: Checkbox(
                        onChanged: (value) {
                          cubit.Checked(index: index, value: value);
                        },
                        value: cubit.isChecked[index],
                        checkColor: AppColor.white,
                      ),
                    ),
                    const Divider()
                  ]);
                });
          } else if (state is LoadingContacts) {
            return Center(child: CircularProgressIndicator());
          }
          return SizedBox();
        });
  }
}
