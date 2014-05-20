package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.transmit.s;

final class ax
  implements AdapterView.OnItemClickListener
{
  ax(ChatMoreSelectUI paramChatMoreSelectUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < ChatMoreSelectUI.c(this.gLK).getHeaderViewsCount())
    {
      aa.w("MicroMsg.ChatMoreSelectUI", "on header view click");
      return;
    }
    int i = paramInt - ChatMoreSelectUI.c(this.gLK).getHeaderViewsCount();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Integer.valueOf(i);
    aa.e("MicroMsg.ChatMoreSelectUI", "on conversation list click, pos %d, adjustPost %d", arrayOfObject);
    n localn = (n)ChatMoreSelectUI.a(this.gLK).getItem(i);
    if (localn == null)
    {
      aa.w("MicroMsg.ChatMoreSelectUI", "select conv is null");
      return;
    }
    ChatMoreSelectUI.a(this.gLK, localn.getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ax
 * JD-Core Version:    0.6.2
 */