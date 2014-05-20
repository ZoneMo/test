package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public final class c
{
  private static final d cz = new e();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      cz = new g();
      return;
    }
    if (i >= 11)
    {
      cz = new f();
      return;
    }
  }

  public static Intent makeMainActivity(ComponentName paramComponentName)
  {
    return cz.makeMainActivity(paramComponentName);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.content.c
 * JD-Core Version:    0.6.2
 */