import 'dart:developer';

import 'package:certenz/src/data/services/auth_service.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

class PusherHelper {
  final PusherChannelsFlutter _pusher;
  const PusherHelper(this._pusher);

  //NOTE -  General Methods: ----------------------------------------------------------
  Future<void> initialise() async {
    dynamic onAuthorizer(
        String channelName, String socketId, dynamic options) async {
      log(channelName);
      log(socketId);
      var res = await AuthService()
          .pusherAuth(channelName: channelName, socketId: socketId);
      return res.when(
        success: (data) => data.data,
        failure: (error) {
          return error;
        },
      );
    }

    void onConnectionStateChange(dynamic currentState, dynamic previousState) {
      log("Connection: $previousState");
      log("Connection: $currentState");
    }

    void onError(String message, int? code, dynamic e) {
      log("onError: $message code: $code exception: $e");
    }

    void onEvent(PusherEvent event) async {
      // ref.read(pushProvider.notifier).state =
      //     SocketEvent(eventName: event.eventName, event: event.data);
      log("onEvent: $event");
    }

    void onSubscriptionSucceeded(String channelName, dynamic data) {
      log("onSubscriptionSucceeded: $channelName data: $data");
      final me = _pusher.getChannel(channelName)?.me;
      log("Me: $me");
    }

    void onSubscriptionError(String message, dynamic e) {
      log("onSubscriptionError: $message Exception: $e");
    }

    void onMemberAdded(String channelName, PusherMember member) {
      log("onMemberAdded: $channelName user: $member");
    }

    void onMemberRemoved(String channelName, PusherMember member) {
      log("onMemberRemoved: $channelName user: $member");
    }

    void onSubscriptionCount(String channelName, int subscriptionCount) {
      log("onSubscriptionCount: $channelName subscriptionCount: $subscriptionCount");
    }

    await _pusher.init(
        apiKey: PrefKeys.apiKey,
        cluster: PrefKeys.cluster,
        logToConsole: true,
        onAuthorizer: onAuthorizer,
        onError: onError,
        onMemberAdded: onMemberAdded,
        onMemberRemoved: onMemberRemoved,
        onSubscriptionError: onSubscriptionError,
        onSubscriptionSucceeded: onSubscriptionSucceeded,
        onSubscriptionCount: onSubscriptionCount,
        onConnectionStateChange: onConnectionStateChange,
        onEvent: onEvent);
  }

  void subcribe(String channelName) async {
    await _pusher.subscribe(channelName: channelName);
  }

  void unSubcribe(String channelName) async {
    await _pusher.unsubscribe(channelName: channelName);
  }

  void connect() async {
    await _pusher.connect();
  }

  void disconnect() async {
    await _pusher.disconnect();
  }
}

mixin PrefKeys {
  static const String apiKey = 'acf095ba6b7ec58c3200';
  static const String cluster = 'ap1';
}
