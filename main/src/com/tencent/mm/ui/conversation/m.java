package com.tencent.mm.ui.conversation;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.tools.dg;

final class m
  implements AdapterView.OnItemLongClickListener
{
  m(BizConversationUI paramBizConversationUI)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    BizConversationUI.a(this.gXS, (n)BizConversationUI.a(this.gXS).getItem(paramInt));
    BizConversationUI.a(this.gXS, BizConversationUI.c(this.gXS).getUsername());
    BizConversationUI.e(this.gXS).a(paramView, paramInt, paramLong, this.gXS, BizConversationUI.d(this.gXS));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.m
 * JD-Core Version:    0.6.2
 */