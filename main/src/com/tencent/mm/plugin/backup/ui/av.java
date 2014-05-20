package com.tencent.mm.plugin.backup.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.b.e;

final class av
  implements DialogInterface.OnClickListener
{
  av(BakChatUploadingUI paramBakChatUploadingUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e locale = new e(f.h(au.FE().getBytes()));
    be.uA().d(locale);
    BakChatUploadingUI.f(this.cNF);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.av
 * JD-Core Version:    0.6.2
 */