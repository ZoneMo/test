package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

final class ag
  implements AdapterView.OnItemClickListener
{
  ag(CountryCodeUI paramCountryCodeUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent();
    if (paramInt >= CountryCodeUI.b(this.hhL).getHeaderViewsCount())
    {
      x localx = (x)CountryCodeUI.c(this.hhL).getItem(paramInt - CountryCodeUI.b(this.hhL).getHeaderViewsCount());
      localIntent.putExtra("country_name", localx.getCountryName());
      localIntent.putExtra("couttry_code", localx.getCountryCode());
      this.hhL.setResult(100, localIntent);
    }
    this.hhL.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ag
 * JD-Core Version:    0.6.2
 */