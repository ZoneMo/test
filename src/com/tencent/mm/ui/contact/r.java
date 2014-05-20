package com.tencent.mm.ui.contact;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class r
  implements ek
{
  r(m paramm)
  {
  }

  public final void lx(String paramString)
  {
    if (this.gSV.getString(2131167789).equals(paramString))
      m.c(this.gSV).setSelection(0);
    String[] arrayOfString;
    int i;
    do
    {
      return;
      do
      {
        do
          arrayOfString = m.a(this.gSV).VG();
        while (arrayOfString == null);
        if ("↑".equals(paramString))
        {
          m.c(this.gSV).setSelection(0);
          return;
        }
        boolean bool = "☆".equals(paramString);
        i = 0;
        if (bool)
        {
          m.c(this.gSV).setSelection(m.c(this.gSV).getHeaderViewsCount());
          return;
          i++;
        }
      }
      while ((i >= arrayOfString.length) || (arrayOfString[i] == null));
    }
    while (!arrayOfString[i].equals(paramString));
    int j = m.a(this.gSV).getPositionForSection(i);
    m.c(this.gSV).setSelection(j + m.c(this.gSV).getHeaderViewsCount());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.r
 * JD-Core Version:    0.6.2
 */