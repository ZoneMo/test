package com.tencent.mm.ui.tools;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;

final class fh
  implements AdapterView.OnItemClickListener
{
  fh(ShareImageUI paramShareImageUI, fl paramfl)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.hmg.oi(paramInt);
    ShareImageUI localShareImageUI1 = this.hmh;
    if (this.hmg.aNK().size() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localShareImageUI1.dg(bool);
      ShareImageUI localShareImageUI2 = this.hmh;
      ShareImageUI localShareImageUI3 = this.hmh;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.hmg.aNK().size());
      localShareImageUI2.v(0, localShareImageUI3.getString(2131167437, arrayOfObject));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fh
 * JD-Core Version:    0.6.2
 */