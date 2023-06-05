import 'package:budget_tracker/infrastructure/debt/models/member_model.dart';

import '../../../domain/debt/entities/debt.dart';
import '../../../domain/debt/value_objects.dart';

class DebtModel {
  final MemberModel creditor;
  final MemberModel debtor;
  final double debt;

  DebtModel({
    required this.creditor,
    required this.debtor,
    required this.debt,
  });

  factory DebtModel.fromJson(Map<String, dynamic> json) {
    return DebtModel(
      creditor: MemberModel.fromJson(json['memberTo']),
      debtor: MemberModel.fromJson(json['memberFrom']),
      debt: json['debt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'memberTo': creditor.toJson(),
      'memberFrom': debtor.toJson(),
      'debt': debt,
    };
  }

  static List<DebtModel> fromJsonList(List<dynamic> json) {
    return json.map((model) => DebtModel.fromJson(model)).toList();
  }

  factory DebtModel.fromDomain(Debt debt) {
    return DebtModel(
      creditor: MemberModel.fromDomain(debt.creditor),
      debtor: MemberModel.fromDomain(debt.debtor),
      debt: debt.debt.value.getOrElse(() => 0),
    );
  }

  Debt toDomain() {
    return Debt(
      creditor: creditor.toDomain(),
      debtor: debtor.toDomain(),
      debt: DebtAmount(debt),
    );
  }


}