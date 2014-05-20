package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.q.c;

final class ae
  implements DialogInterface.OnCancelListener
{
  ae(ChatFooterBrandQA paramChatFooterBrandQA, c paramc)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.gLe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ae
 * JD-Core Version:    0.6.2
 */