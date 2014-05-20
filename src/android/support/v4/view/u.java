package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class u
{
  static final y dg = new v();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      dg = new x();
      return;
    }
  }

  public static boolean a(KeyEvent paramKeyEvent)
  {
    return dg.h(paramKeyEvent.getMetaState());
  }

  public static boolean b(KeyEvent paramKeyEvent)
  {
    return dg.metaStateHasNoModifiers(paramKeyEvent.getMetaState());
  }

  public static void c(KeyEvent paramKeyEvent)
  {
    dg.c(paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.u
 * JD-Core Version:    0.6.2
 */