package com.tencent.mm.ui.chatting;

import android.content.DialogInterface.OnDismissListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.base.v;

final class lp
  implements v
{
  lp(lo paramlo, String paramString)
  {
  }

  public final void bo(int paramInt)
  {
    if (this.gRy.gRx != null)
      this.gRy.gRx.onDismiss(null);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      if (lm.e(this.gRy.gRv))
      {
        lm.a(this.gRy.gRv, this.efx);
        m.dZN.j(10113, "1");
        return;
      }
      lm.b(this.gRy.gRv, this.efx);
      m.dZN.j(10114, "1");
      return;
    case 1:
    }
    lm.b(this.gRy.gRv, this.efx);
    m.dZN.j(10114, "1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lp
 * JD-Core Version:    0.6.2
 */