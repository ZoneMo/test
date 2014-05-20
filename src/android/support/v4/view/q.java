package android.support.v4.view;

import android.os.Build.VERSION;

public final class q
{
  static final r df = new s();

  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      df = new t();
      return;
    }
  }

  public static int a(int paramInt1, int paramInt2)
  {
    return df.a(paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.q
 * JD-Core Version:    0.6.2
 */