package android.support.v7.internal.view.menu;

import android.os.Build.VERSION;
import android.view.Menu;
import android.view.MenuItem;

public final class ai
{
  public static Menu e(Menu paramMenu)
  {
    if (Build.VERSION.SDK_INT >= 14)
      paramMenu = new aj(paramMenu);
    return paramMenu;
  }

  public static MenuItem l(MenuItem paramMenuItem)
  {
    if (Build.VERSION.SDK_INT >= 16)
      paramMenuItem = new aa(paramMenuItem);
    while (Build.VERSION.SDK_INT < 14)
      return paramMenuItem;
    return new u(paramMenuItem);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ai
 * JD-Core Version:    0.6.2
 */