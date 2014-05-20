package com.tencent.mm.ui.tools;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class ae
  implements ek
{
  ae(CountryCodeUI paramCountryCodeUI)
  {
  }

  public final void lx(String paramString)
  {
    if (this.hhL.getString(2131167789).equals(paramString))
      CountryCodeUI.b(this.hhL).setSelection(0);
    while (true)
    {
      return;
      int i = Integer.decode(paramString.substring(0, -1 + paramString.length())).intValue();
      int[] arrayOfInt = CountryCodeUI.c(this.hhL).aMR();
      int j = 0;
      if (arrayOfInt != null)
        while (j < arrayOfInt.length)
        {
          if (arrayOfInt[j] == i)
          {
            CountryCodeUI.b(this.hhL).setSelection(j + CountryCodeUI.b(this.hhL).getHeaderViewsCount());
            return;
          }
          j++;
        }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ae
 * JD-Core Version:    0.6.2
 */