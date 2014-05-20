package com.tencent.mm.ui.tools;

import android.widget.ListView;
import com.tencent.mm.ui.base.ek;

final class ad
  implements ek
{
  ad(CountryCodeUI paramCountryCodeUI)
  {
  }

  public final void lx(String paramString)
  {
    int i = paramString.charAt(0);
    if (this.hhL.getString(2131167789).equals(paramString))
      CountryCodeUI.b(this.hhL).setSelection(0);
    while (true)
    {
      return;
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
 * Qualified Name:     com.tencent.mm.ui.tools.ad
 * JD-Core Version:    0.6.2
 */