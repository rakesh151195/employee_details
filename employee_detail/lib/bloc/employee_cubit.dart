import 'package:bloc/bloc.dart';
import 'package:employee_detail/model/services.dart';
import 'package:employee_detail/model/usermodel.dart';
import 'package:meta/meta.dart';

part 'employee_state.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  Userservices userservices = Userservices();
  //List<Usermodel> listgetData = [];
  EmployeeCubit() : super(EmployeeInitial());

  Future<void> getData() async {
    List<Usermodel> listgetData = [];
    listgetData = await userservices.loadData();
    if (listgetData.isEmpty) {
      emit(NoDataFound());
    } else {
      emit(EmployeeDataloaded(userlist: listgetData));
    }
  }

  Future<void> addData(Usermodel user) async {
    List<Usermodel> listgetData = [];
    listgetData = await userservices.loadData();
    if (listgetData.contains(user)) {
      emit(Duplicatedentry());
    } else {
      listgetData.add(user);
      await userservices.saveData(listgetData);
      emit(EmployeeDataloaded(userlist: listgetData));
    }
  }

  Future<void> deleteData(Usermodel user) async {
    List<Usermodel> listgetData = [];
    listgetData = await userservices.loadData();
    if (listgetData.contains(user)) {
      listgetData.remove(user);
      await userservices.saveData(listgetData);
      emit(EmployeeDataloaded(userlist: listgetData));
    } else {
      emit(NoDataFound());
    }
  }

  Future<void> updateData(Usermodel user, Usermodel updateuser) async {
    List<Usermodel> listgetData = [];
    listgetData = await userservices.loadData();
    if (listgetData.contains(user)) {
      // listgetData.lastIndexOf(user);
      for (var i = 0; i < listgetData.length; i++) {
        if (user.username == listgetData[i].username) {
          listgetData[i] = updateuser;
        }
      }
      await userservices.saveData(listgetData);
      emit(EmployeeDataloaded(userlist: listgetData));
    } else {
      emit(NoDataFound());
    }
  }
}
