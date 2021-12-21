import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'environment.vars.dart';

Future<void> initParse() async {
  await Parse().initialize(
    EnVars.appId,
    EnVars.apiUrl,
    clientKey: EnVars.clientKey,
    autoSendSessionId: true,
  );
}
