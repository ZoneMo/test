package com.tencent.mm.ui.base;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

final class bo
  implements AdapterView.OnItemSelectedListener
{
  bo(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      bp localbp = MMListPopupWindow.a(this.gAy);
      if (localbp != null)
        bp.a(localbp, false);
    }
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bo
 * JD-Core Version:    0.6.2
 */