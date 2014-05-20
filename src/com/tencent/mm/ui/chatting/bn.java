package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import java.util.Iterator;
import java.util.List;

final class bn
  implements DialogInterface.OnClickListener
{
  bn(List paramList, fn paramfn, Context paramContext, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    List localList = this.gMd;
    if ((localList == null) || (localList.isEmpty()))
      aa.w("MicroMsg.ChattingEditModeLogic", "check contain only invalid send to brand service error, select item empty");
    label25: for (int i = 1; ; i = 0)
    {
      if (i == 0)
        break label133;
      aa.w("MicroMsg.ChattingEditModeSendToBrand", "only contain invalid msg, exit long click mode");
      if (this.gMe != null)
        this.gMe.aJs();
      return;
      Iterator localIterator = localList.iterator();
      if (!localIterator.hasNext())
        break label25;
      ak localak = (ak)localIterator.next();
      if ((localak.aBV()) || (bg.z(localak)) || (localak.aCa()) || (bg.A(localak)) || (localak.getType() == -1879048186))
        break;
    }
    label133: bm.b(this.cGV, this.gMd, this.gMf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bn
 * JD-Core Version:    0.6.2
 */