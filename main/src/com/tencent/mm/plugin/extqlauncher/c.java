package com.tencent.mm.plugin.extqlauncher;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

final class c
  implements ar
{
  c(b paramb)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    aa.d("MicroMsg.SubCoreExtQLauncher", "onNotifyChange");
    if (b.b(this.dgz));
    while (paramao != be.uz().sx())
      return;
    if ((paramao == null) || (paramObject == null))
    {
      aa.e("MicroMsg.SubCoreExtQLauncher", "onConversationChange, wrong args");
      return;
    }
    if ((al.getContext() == null) || (!be.se()))
    {
      aa.w("MicroMsg.SubCoreExtQLauncher", "wrong account status");
      return;
    }
    this.dgz.My();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.c
 * JD-Core Version:    0.6.2
 */