package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.q.b;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(ChatFooterBrandQA paramChatFooterBrandQA, b paramb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ChatFooterBrandQA.a(this.gLd) == null)
      ChatFooterBrandQA.a(this.gLd, new km(this.gLd.getContext()));
    ChatFooterBrandQA.a(this.gLd).setTitle(this.gLd.getContext().getString(2131167125));
    ChatFooterBrandQA.a(this.gLd).a(new aj(this));
    ChatFooterBrandQA.a(this.gLd).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ai
 * JD-Core Version:    0.6.2
 */