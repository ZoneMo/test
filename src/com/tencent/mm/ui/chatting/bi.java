package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import java.util.Iterator;
import java.util.List;

final class bi
  implements DialogInterface.OnClickListener
{
  bi(List paramList, fn paramfn, Context paramContext, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    List localList = this.gMd;
    if (localList == null)
      aa.w("MicroMsg.ChattingEditModeLogic", "check contain only invalid send to friend msg error, select item empty");
    label16: for (int i = 1; ; i = 0)
    {
      if (i == 0)
        break label116;
      aa.w("MicroMsg.ChattingEditModeRetransmitMsg", "only contain invalid msg, exit long click mode");
      if (this.gMe != null)
        this.gMe.aJs();
      return;
      Iterator localIterator = localList.iterator();
      if (!localIterator.hasNext())
        break label16;
      ak localak = (ak)localIterator.next();
      if ((localak.aBV()) || (bg.z(localak)) || (bg.A(localak)) || (localak.getType() == -1879048186))
        break;
    }
    label116: bh.c(this.cGV, this.gMd, this.gMf, this.gMe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bi
 * JD-Core Version:    0.6.2
 */