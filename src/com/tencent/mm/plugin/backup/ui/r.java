package com.tencent.mm.plugin.backup.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.backup.model.ar;
import com.tencent.mm.plugin.backup.model.d;

final class r
  implements DialogInterface.OnClickListener
{
  r(q paramq)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    d.Gl().g(true, true);
    BakChatRecoveringUI.g(this.cMC.cMB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.r
 * JD-Core Version:    0.6.2
 */