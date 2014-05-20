package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.c.a.aa;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.i;

final class ib
  implements DialogInterface.OnClickListener
{
  ib(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.gPG.aJG();
    aa localaa = new aa();
    localaa.bMq.username = ChattingUI.l(this.gPG).getUsername();
    a.ayH().f(localaa);
    this.gPG.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ib
 * JD-Core Version:    0.6.2
 */