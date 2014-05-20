package com.tencent.mm.compatible.f;

import android.view.MenuItem;
import com.tencent.mm.sdk.platformtools.aa;

public final class a
{
  public static void a(MenuItem paramMenuItem, String paramString)
  {
    if (paramMenuItem == null)
      aa.w("MicroMsg.MenuItemUtil", "fixTitleCondensed fail, item is null");
    do
    {
      return;
      if (paramMenuItem.getTitleCondensed() == null)
      {
        aa.c("MicroMsg.MenuItemUtil", "%s title condensed is null, fix it", new Object[] { paramString });
        paramMenuItem.setTitleCondensed("");
        return;
      }
    }
    while ((paramMenuItem.getTitleCondensed() instanceof String));
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = paramMenuItem.getTitleCondensed().getClass().getName();
    arrayOfObject[2] = paramMenuItem.getTitleCondensed();
    aa.c("MicroMsg.MenuItemUtil", "%s title condensed is not String type, cur type[%s], cur value[%s], fix it", arrayOfObject);
    paramMenuItem.setTitleCondensed(paramMenuItem.getTitleCondensed().toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.f.a
 * JD-Core Version:    0.6.2
 */