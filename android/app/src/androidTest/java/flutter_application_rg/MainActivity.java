package androidTest/java/flutter_application_rg

import io.flutter.embedding.android.FlutterActivity

import androidx.test.rule.ActivityTestRule
import dev.flutter.plugins.integration_test.FlutterTestRunner
import org.junit.Rule
import org.junit.runner.RunWith
import flutter_application_rg.MainActivity


@RunWith(FlutterTestRunner::class)
class MainActivity {
    @Rule
    var rule: ActivityTestRule<MainActivity> = ActivityTestRule(MainActivity::class.java, true, false)
}


