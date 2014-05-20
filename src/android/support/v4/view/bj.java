package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class bj
{
  static final bm ea = new bk();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ea = new bl();
      return;
    }
  }

  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return ea.a(paramViewConfiguration);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bj
 * JD-Core Version:    0.6.2
 */