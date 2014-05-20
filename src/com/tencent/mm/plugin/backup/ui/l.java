package com.tencent.mm.plugin.backup.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.b.b;

final class l
  implements DialogInterface.OnClickListener
{
  l(k paramk)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b localb = new b(f.h(au.FE().getBytes()), BakChatRecoverCheckUI.c(this.cMk.cMg));
    be.uA().d(localb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.l
 * JD-Core Version:    0.6.2
 */