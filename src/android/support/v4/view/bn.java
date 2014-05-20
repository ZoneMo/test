package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public final class bn
{
  static final bq eb = new br();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      eb = new bp();
      return;
    }
    if (i >= 11)
    {
      eb = new bo();
      return;
    }
  }

  public static void a(ViewGroup paramViewGroup)
  {
    eb.a(paramViewGroup);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bn
 * JD-Core Version:    0.6.2
 */