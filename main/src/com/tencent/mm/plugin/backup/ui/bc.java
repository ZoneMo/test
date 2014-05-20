package com.tencent.mm.plugin.backup.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;

final class bc
  implements DialogInterface.OnClickListener
{
  bc(bb parambb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    d.Gk().g(true, true);
    BakChatUploadingUI.e(this.cNG.cNF);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bc
 * JD-Core Version:    0.6.2
 */