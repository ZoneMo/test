package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.i;

final class jl
  implements DialogInterface.OnClickListener
{
  jl(ChattingUI paramChattingUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    gy localgy = new gy();
    localgy.bQS.bQV = true;
    a.ayH().f(localgy);
    ChattingUI.b(this.gPG, ChattingUI.l(this.gPG).getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jl
 * JD-Core Version:    0.6.2
 */