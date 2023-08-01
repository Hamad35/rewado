class LoginRequest {
  late String? usr;
  late String? pwd;
  late String? cmd;
  late String? otp;
  late String? tmpId;
  late String device;

  LoginRequest({
    this.usr,
    this.pwd,
    this.cmd,
    this.otp,
    this.tmpId,
    this.device = "mobile",
  }) : assert(
          (usr != null && pwd != null) ||
              (cmd != null && otp != null && tmpId != null),
        );

  LoginRequest.fromJson(Map<String, dynamic> json) {
    usr = json['usr'];
    pwd = json['pwd'];
    cmd = json['cmd'];
    otp = json['otp'];
    tmpId = json['tmp_id'];
    device = json['device'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['usr'] = usr;
    data['pwd'] = pwd;
    data['cmd'] = cmd;
    data['otp'] = otp;
    data['tmp_id'] = tmpId;
    data['device'] = device;
    return data;
  }
}

class LoginResponse {
  late String? message;
  late String? homePage;
  late String? fullName;
  late String? userId;
  late Verification? verification;
  late String? tmpId;

  LoginResponse({
    this.message,
    this.homePage,
    this.fullName,
    this.userId,
    this.verification,
    this.tmpId,
  });

  LoginResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    homePage = json['home_page'];
    fullName = json['full_name'];
    userId = json['user_id'];
    verification = json['verification'] != null
        ? Verification.fromJson(json['verification'])
        : null;
    tmpId = json['tmp_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['message'] = message;
    data['home_page'] = homePage;
    data['full_name'] = fullName;
    data['user_id'] = userId;
    if (verification != null) {
      data['verification'] = verification!.toJson();
    }
    data['tmp_id'] = tmpId;
    return data;
  }
}

class Verification {
  late bool tokenDelivery;
  late String prompt;
  late String method;
  late bool setup;

  Verification({
    required this.tokenDelivery,
    required this.prompt,
    required this.method,
    required this.setup,
  });

  Verification.fromJson(Map<String, dynamic> json) {
    tokenDelivery = json['token_delivery'];
    prompt = json['prompt'];
    method = json['method'];
    setup = json['setup'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['token_delivery'] = tokenDelivery;
    data['prompt'] = prompt;
    data['method'] = method;
    data['setup'] = setup;
    return data;
  }
}