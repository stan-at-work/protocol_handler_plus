package dev.stan_at_work.plugins.protocol_handler_plus;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import org.junit.Test;

/**
 * Unit tests for the Java portion of this plugin's implementation.
 *
 * Once you have built the plugin's example app, you can run these tests from the command
 * line by running `./gradlew testDebugUnitTest` in the `example/android/` directory, or
 * you can run them directly from IDEs that support JUnit such as Android Studio.
 */

public class ProtocolHandlerPlusAndroidPluginTest {
  @Test
  public void onMethodCall_getInitialUrl_returnsEmptyStringWithoutLaunchIntent() {
    ProtocolHandlerPlusAndroidPlugin plugin = new ProtocolHandlerPlusAndroidPlugin();

    final MethodCall call = new MethodCall("getInitialUrl", null);
    MethodChannel.Result mockResult = mock(MethodChannel.Result.class);
    plugin.onMethodCall(call, mockResult);

    verify(mockResult).success("");
  }

  @Test
  public void onMethodCall_unknownMethod_returnsNotImplemented() {
    ProtocolHandlerPlusAndroidPlugin plugin = new ProtocolHandlerPlusAndroidPlugin();

    final MethodCall call = new MethodCall("unknownMethod", null);
    MethodChannel.Result mockResult = mock(MethodChannel.Result.class);
    plugin.onMethodCall(call, mockResult);

    verify(mockResult).notImplemented();
  }
}
