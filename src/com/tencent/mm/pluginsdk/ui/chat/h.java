package com.tencent.mm.pluginsdk.ui.chat;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;

final class h
  implements DialogInterface.OnClickListener
{
  h(g paramg)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    gy localgy = new gy();
    localgy.bQS.bQV = true;
    a.ayH().f(localgy);
    AppPanel.j(this.fpP.fpO).Wa();
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.h
 * JD-Core Version:    0.6.2
 */