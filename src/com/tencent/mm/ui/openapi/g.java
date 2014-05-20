package com.tencent.mm.ui.openapi;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class g
  implements AdapterView.OnItemClickListener
{
  g(AppPreference paramAppPreference)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (AppPreference.a(this.hcQ).mz(paramInt))
      AppPreference.a(this.hcQ).ed(false);
    do
    {
      do
      {
        return;
        if (!AppPreference.a(this.hcQ).aLT())
          break;
      }
      while (AppPreference.b(this.hcQ) == null);
      AppPreference.b(this.hcQ).onItemClick(paramAdapterView, paramView, paramInt, paramLong);
      return;
    }
    while (AppPreference.c(this.hcQ) == null);
    AppPreference.c(this.hcQ).onItemClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.g
 * JD-Core Version:    0.6.2
 */