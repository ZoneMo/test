package com.tencent.mm.ui.base.preference;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;

final class ad
  implements AdapterView.OnItemLongClickListener
{
  ad(y paramy)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < y.e(this.gGJ).getHeaderViewsCount())
      return false;
    int i = paramInt - y.e(this.gGJ).getHeaderViewsCount();
    y.d(this.gGJ).getItem(i);
    y.d(this.gGJ);
    y.e(this.gGJ);
    return y.aIn();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.ad
 * JD-Core Version:    0.6.2
 */