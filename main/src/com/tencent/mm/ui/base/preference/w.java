package com.tencent.mm.ui.base.preference;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;

final class w
  implements AdapterView.OnItemLongClickListener
{
  w(MMPreference paramMMPreference)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < MMPreference.e(this.gGu).getHeaderViewsCount())
      return false;
    int i = paramInt - MMPreference.e(this.gGu).getHeaderViewsCount();
    Preference localPreference = (Preference)MMPreference.d(this.gGu).getItem(i);
    MMPreference localMMPreference = this.gGu;
    MMPreference.d(this.gGu);
    MMPreference.e(this.gGu);
    return localMMPreference.a(localPreference);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.w
 * JD-Core Version:    0.6.2
 */