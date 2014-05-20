package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.support.v4.content.c;

public final class aa
{
  private static final ab co = new ac();

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      co = new ad();
      return;
    }
  }

  public static Intent a(Activity paramActivity)
  {
    return co.a(paramActivity);
  }

  public static Intent a(Context paramContext, ComponentName paramComponentName)
  {
    String str = b(paramContext, paramComponentName);
    if (str == null)
      return null;
    ComponentName localComponentName = new ComponentName(paramComponentName.getPackageName(), str);
    if (b(paramContext, localComponentName) == null)
      return c.makeMainActivity(localComponentName);
    return new Intent().setComponent(localComponentName);
  }

  public static boolean a(Activity paramActivity, Intent paramIntent)
  {
    return co.a(paramActivity, paramIntent);
  }

  public static String b(Activity paramActivity)
  {
    try
    {
      String str = b(paramActivity, paramActivity.getComponentName());
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new IllegalArgumentException(localNameNotFoundException);
    }
  }

  public static String b(Context paramContext, ComponentName paramComponentName)
  {
    ActivityInfo localActivityInfo = paramContext.getPackageManager().getActivityInfo(paramComponentName, 128);
    return co.a(paramContext, localActivityInfo);
  }

  public static void b(Activity paramActivity, Intent paramIntent)
  {
    co.b(paramActivity, paramIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.aa
 * JD-Core Version:    0.6.2
 */