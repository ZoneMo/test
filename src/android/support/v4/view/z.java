package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.a.a.b;
import android.view.MenuItem;
import android.view.View;

public final class z
{
  static final ae dh = new aa();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      dh = new ac();
      return;
    }
    if (i >= 11)
    {
      dh = new ab();
      return;
    }
  }

  public static MenuItem a(MenuItem paramMenuItem, af paramaf)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).a(paramaf);
    return dh.a(paramMenuItem, paramaf);
  }

  public static MenuItem a(MenuItem paramMenuItem, n paramn)
  {
    if ((paramMenuItem instanceof b))
      paramMenuItem = ((b)paramMenuItem).a(paramn);
    return paramMenuItem;
  }

  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).setActionView(paramView);
    return dh.a(paramMenuItem, paramView);
  }

  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    dh.a(paramMenuItem, paramInt);
  }

  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).setActionView(paramInt);
    return dh.b(paramMenuItem, paramInt);
  }

  public static View e(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).getActionView();
    return dh.e(paramMenuItem);
  }

  public static boolean f(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).expandActionView();
    return dh.f(paramMenuItem);
  }

  public static boolean g(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
      return ((b)paramMenuItem).collapseActionView();
    return dh.g(paramMenuItem);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.z
 * JD-Core Version:    0.6.2
 */