package com.tencent.mm.ui.transmit;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.contact.db;
import com.tencent.mm.ui.tools.eo;

final class q
  implements AdapterView.OnItemClickListener
{
  q(MulSelectConversationUI paramMulSelectConversationUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      if (MulSelectConversationUI.f(this.hrJ) == 0)
      {
        this.hrJ.setResult(-1);
        m localm = m.dZN;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(2);
        arrayOfObject[1] = Integer.valueOf(0);
        arrayOfObject[2] = Integer.valueOf(0);
        localm.d(11048, arrayOfObject);
        this.hrJ.finish();
        return;
      }
      MulSelectConversationUI.b(this.hrJ);
      return;
    }
    int i = paramInt - MulSelectConversationUI.g(this.hrJ).getHeaderViewsCount();
    MulSelectConversationUI.c(this.hrJ).nI(i);
    MulSelectConversationUI.a(this.hrJ, ((i)MulSelectConversationUI.c(this.hrJ).getItem(i)).field_username, MulSelectConversationUI.d(this.hrJ));
    MulSelectConversationUI.h(this.hrJ).aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.q
 * JD-Core Version:    0.6.2
 */