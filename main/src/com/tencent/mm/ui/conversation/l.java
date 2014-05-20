package com.tencent.mm.ui.conversation;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.ui.chatting.ChattingUI;

final class l
  implements AdapterView.OnItemClickListener
{
  l(BizConversationUI paramBizConversationUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    n localn = (n)BizConversationUI.a(this.gXS).getItem(paramInt);
    if (localn == null)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Integer.valueOf(BizConversationUI.a(this.gXS).getCount());
      aa.b("MicroMsg.BizConversationUI", "user should not be null. position:%d, size:%d", arrayOfObject);
      BizConversationUI.a(this.gXS).notifyDataSetChanged();
      return;
    }
    Intent localIntent = new Intent(this.gXS, ChattingUI.class);
    localIntent.addFlags(67108864);
    localIntent.putExtra("finish_direct", true);
    localIntent.putExtra("Chat_User", localn.getUsername());
    this.gXS.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.l
 * JD-Core Version:    0.6.2
 */