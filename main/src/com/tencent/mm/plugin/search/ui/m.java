package com.tencent.mm.plugin.search.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.plugin.search.a;
import com.tencent.mm.plugin.search.model.aq;

final class m
  implements AdapterView.OnItemClickListener
{
  m(e parame)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aq localaq = ((w)paramView.getTag()).ejy.ejp;
    if (localaq == null)
      return;
    Intent localIntent = new Intent().putExtra("Chat_User", localaq.eid).putExtra("finish_direct", true).putExtra("from_global_search", true).putExtra("msg_local_id", localaq.eic);
    a.cHS.d(localIntent, e.c(this.ejj));
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(e.c(this.ejj).eiC);
    arrayOfObject[1] = Integer.valueOf(11);
    arrayOfObject[2] = Integer.valueOf(paramInt + 1);
    localm.d(10991, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.m
 * JD-Core Version:    0.6.2
 */