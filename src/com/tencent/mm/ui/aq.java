package com.tencent.mm.ui;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;

final class aq
  implements ar
{
  aq(LauncherUI paramLauncherUI)
  {
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.LauncherUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.LauncherUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    do
    {
      return;
      this.gmk.aEu();
      if (i == 143618)
      {
        LauncherUI.g(this.gmk);
        return;
      }
    }
    while ((i != 204817) && (i != 204820));
    LauncherUI.f(this.gmk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.aq
 * JD-Core Version:    0.6.2
 */