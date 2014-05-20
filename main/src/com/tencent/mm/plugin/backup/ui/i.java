package com.tencent.mm.plugin.backup.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.protocal.a.ad;

final class i
  implements DialogInterface.OnClickListener
{
  i(h paramh)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BakChatRecoverCheckUI localBakChatRecoverCheckUI = this.cMj.cMg;
    int i = this.cMj.cMi.fAj;
    int j = this.cMj.cMi.fAo;
    long l = 1000L * this.cMj.cMi.fzy;
    int k = this.cMj.cMi.fAp;
    if (this.cMj.cMi.fAq != 0);
    for (boolean bool = true; ; bool = false)
    {
      BakChatRecoverCheckUI.a(localBakChatRecoverCheckUI, i, j, l, k, bool, this.cMj.cMi.fAs);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.i
 * JD-Core Version:    0.6.2
 */