package com.tencent.mm.pluginsdk.ui.chat;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class a
  implements AdapterView.OnItemClickListener
{
  a(AppGrid paramAppGrid)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    AppGrid.c(this.fpl).a(AppGrid.c(this.fpl).kw(paramInt + AppGrid.a(this.fpl) * AppGrid.b(this.fpl)), AppGrid.d(this.fpl).kv(paramInt));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.a
 * JD-Core Version:    0.6.2
 */