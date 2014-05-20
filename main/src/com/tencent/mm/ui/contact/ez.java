package com.tencent.mm.ui.contact;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class ez
  implements ek
{
  ez(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final void lx(String paramString)
  {
    if (this.gVF.getString(2131167789).equals(paramString))
      SnsAddressUI.a(this.gVF).setSelection(0);
    String[] arrayOfString;
    int i;
    do
    {
      return;
      do
      {
        do
          arrayOfString = SnsAddressUI.b(this.gVF).VG();
        while (arrayOfString == null);
        if ("↑".equals(paramString))
        {
          SnsAddressUI.a(this.gVF).setSelection(0);
          return;
        }
        boolean bool = "☆".equals(paramString);
        i = 0;
        if (bool)
        {
          SnsAddressUI.a(this.gVF).setSelection(SnsAddressUI.b(this.gVF).aLa());
          return;
          i++;
        }
      }
      while (i >= arrayOfString.length);
    }
    while (!arrayOfString[i].equals(paramString));
    int j = SnsAddressUI.b(this.gVF).getPositionForSection(i);
    SnsAddressUI.a(this.gVF).setSelection(j + SnsAddressUI.a(this.gVF).getHeaderViewsCount());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ez
 * JD-Core Version:    0.6.2
 */