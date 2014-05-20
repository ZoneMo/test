package com.tencent.mm.ui.contact;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class dv
  implements ek
{
  dv(SelectContactUI paramSelectContactUI)
  {
  }

  public final void lx(String paramString)
  {
    if (this.gVn.getString(2131167789).equals(paramString))
      SelectContactUI.i(this.gVn).setSelection(0);
    String[] arrayOfString;
    int i;
    do
    {
      return;
      do
      {
        do
          arrayOfString = SelectContactUI.b(this.gVn).VG();
        while (arrayOfString == null);
        if ("↑".equals(paramString))
        {
          SelectContactUI.i(this.gVn).setSelection(0);
          return;
        }
        boolean bool = "☆".equals(paramString);
        i = 0;
        if (bool)
        {
          SelectContactUI.i(this.gVn).setSelection(SelectContactUI.i(this.gVn).getHeaderViewsCount());
          return;
          i++;
        }
      }
      while (i >= arrayOfString.length);
    }
    while (!arrayOfString[i].equals(paramString));
    int j = SelectContactUI.b(this.gVn).getPositionForSection(i);
    SelectContactUI.i(this.gVn).setSelection(j + SelectContactUI.i(this.gVn).getHeaderViewsCount());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dv
 * JD-Core Version:    0.6.2
 */