package com.tencent.mm.ui.conversation;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.tools.dg;

final class au
  implements AdapterView.OnItemLongClickListener
{
  au(MainUI paramMainUI)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < MainUI.m(this.gZI).getHeaderViewsCount())
    {
      aa.d("MicroMsg.MainUI", "on long click header view");
      return true;
    }
    MainUI.a(this.gZI, (n)MainUI.b(this.gZI).getItem(paramInt - MainUI.m(this.gZI).getHeaderViewsCount()));
    MainUI.b(this.gZI, MainUI.q(this.gZI).getUsername());
    MainUI.s(this.gZI).a(paramView, paramInt, paramLong, this.gZI, MainUI.r(this.gZI));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.au
 * JD-Core Version:    0.6.2
 */