package com.tencent.mm.plugin.search.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.d.c.m;

final class n
  implements AdapterView.OnItemClickListener
{
  n(e parame)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (e.d(this.ejj) != null)
    {
      e.c(this.ejj).SM();
      e.a(this.ejj, e.d(this.ejj));
      if (paramInt != e.i(this.ejj))
        break label107;
    }
    label107: for (int i = 8; ; i = 9)
    {
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(e.c(this.ejj).eiC);
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(paramInt + 1);
      localm.d(10991, arrayOfObject);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.n
 * JD-Core Version:    0.6.2
 */