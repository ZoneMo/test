package com.tencent.mm.plugin.base.stub;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.v;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.h;

final class q
  implements DialogInterface.OnClickListener
{
  q(o paramo)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ag localag = h.apq();
    if (localag != null)
      localag.l(o.a(this.cOr), v.tk(), o.b(this.cOr));
    o.c(this.cOr).ae(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.q
 * JD-Core Version:    0.6.2
 */