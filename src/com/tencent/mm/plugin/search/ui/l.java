package com.tencent.mm.plugin.search.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.search.a;
import com.tencent.mm.plugin.search.model.at;

final class l
  implements AdapterView.OnItemClickListener
{
  l(e parame)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    q localq = ((r)paramView.getTag()).ejt;
    Intent localIntent = new Intent().putExtra("Chat_User", localq.username).putExtra("finish_direct", true);
    a.cHS.d(localIntent, e.c(this.ejj));
    int i;
    if (localq.ejp != null)
    {
      at.a(e.d(this.ejj), localq.ejp);
      if (paramInt <= e.e(this.ejj))
        break label150;
      i = 5;
    }
    while (true)
    {
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(e.c(this.ejj).eiC);
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(paramInt + 1);
      localm.d(10991, arrayOfObject);
      return;
      label150: if (paramInt > e.f(this.ejj))
        i = 4;
      else if (paramInt > e.g(this.ejj))
        i = 3;
      else if (paramInt > e.h(this.ejj))
        i = 2;
      else
        i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.l
 * JD-Core Version:    0.6.2
 */