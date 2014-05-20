package com.tencent.mm.ui.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.tencent.mm.ui.tools.dg;

final class aa
  implements AdapterView.OnItemLongClickListener
{
  aa(FMessageConversationUI paramFMessageConversationUI, dg paramdg)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt < FMessageConversationUI.a(this.hbe).getHeaderViewsCount())
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.FMessageConversationUI", "on header view long click, ignore");
      return true;
    }
    this.cQe.a(paramView, paramInt, paramLong, this.hbe, FMessageConversationUI.c(this.hbe));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.aa
 * JD-Core Version:    0.6.2
 */