package com.tencent.mm.plugin.search.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class u
  implements AdapterView.OnItemClickListener
{
  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramView.getTag();
    if ((localObject instanceof r))
    {
      q localq = ((r)localObject).ejt;
      if (localq.ejo != null)
        localq.ejo.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
    }
    p localp;
    do
    {
      do
      {
        v localv;
        do
        {
          return;
          if (!(localObject instanceof w))
            break;
          localv = ((w)localObject).ejy;
        }
        while (localv.ejo == null);
        localv.ejo.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
        return;
      }
      while (!(localObject instanceof p));
      localp = (p)localObject;
    }
    while (localp.ejn.ejm == null);
    localp.ejn.ejm.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.u
 * JD-Core Version:    0.6.2
 */