// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'employee_cubit.dart';

@immutable
abstract class EmployeeState {}

class EmployeeInitial extends EmployeeState {}

class EmployeeDataloading extends EmployeeState {}

class EmployeeDataloaded extends EmployeeState {
  List<Usermodel> userlist;
  EmployeeDataloaded({
    required this.userlist,
  });
}

class Duplicatedentry extends EmployeeState {}

class Error extends EmployeeState {}

class NoDataFound extends EmployeeState {}
