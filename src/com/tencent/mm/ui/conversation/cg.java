package com.tencent.mm.ui.conversation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.ba;

final class cg
  implements DialogInterface.OnClickListener
{
  cg(cf paramcf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      this.hab.haa.setVisibility(8);
      NetWarnView.c(this.hab.haa);
      ba.p(NetWarnView.b(this.hab.haa), this.hab.cLa);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.cg
 * JD-Core Version:    0.6.2
 */