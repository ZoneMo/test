package com.tencent.mm.ui.contact;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class fo
  implements ek
{
  fo(VoipAddressUI paramVoipAddressUI)
  {
  }

  public final void lx(String paramString)
  {
    if (this.gVO.getString(2131167789).equals(paramString))
      VoipAddressUI.a(this.gVO).setSelection(0);
    String[] arrayOfString;
    int i;
    do
    {
      return;
      do
      {
        do
          arrayOfString = VoipAddressUI.b(this.gVO).VG();
        while (arrayOfString == null);
        if ("↑".equals(paramString))
        {
          VoipAddressUI.a(this.gVO).setSelection(0);
          return;
        }
        boolean bool = "☆".equals(paramString);
        i = 0;
        if (bool)
        {
          VoipAddressUI.a(this.gVO).setSelection(VoipAddressUI.b(this.gVO).aLa());
          return;
          i++;
        }
      }
      while (i >= arrayOfString.length);
    }
    while (!arrayOfString[i].equals(paramString));
    int j = VoipAddressUI.b(this.gVO).getPositionForSection(i);
    VoipAddressUI.a(this.gVO).setSelection(j + VoipAddressUI.a(this.gVO).getHeaderViewsCount());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fo
 * JD-Core Version:    0.6.2
 */