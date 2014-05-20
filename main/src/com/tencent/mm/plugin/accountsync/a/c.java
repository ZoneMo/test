package com.tencent.mm.plugin.accountsync.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements DialogInterface.OnCancelListener
{
  c(b paramb)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    aa.w("MicroMsg.DoInit", "do init canceled");
    be.uA().c(b.a(this.cHW));
    be.uA().b(38, this.cHW);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.a.c
 * JD-Core Version:    0.6.2
 */