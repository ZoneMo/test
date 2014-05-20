package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class af
  implements MenuItem.OnMenuItemClickListener
{
  af(CountryCodeUI paramCountryCodeUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hhL.SM();
    Intent localIntent = new Intent();
    localIntent.putExtra("country_name", CountryCodeUI.d(this.hhL));
    localIntent.putExtra("couttry_code", CountryCodeUI.e(this.hhL));
    this.hhL.setResult(100, localIntent);
    this.hhL.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.af
 * JD-Core Version:    0.6.2
 */