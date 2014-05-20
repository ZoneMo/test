package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.c.a.do;
import com.tencent.mm.c.a.dq;
import com.tencent.mm.pluginsdk.c.b;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;
import java.util.concurrent.CountDownLatch;

final class h extends b
{
  h(ExtControlProviderNearBy paramExtControlProviderNearBy)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, e parame)
  {
    if ((!(parame instanceof do)) || (ExtControlProviderNearBy.c(this.dgf) == null))
      return;
    do localdo = (do)parame;
    aa.i("MicroMsg.ExtControlProviderNearBy", "get lbsfriend errcode: " + paramInt2 + ", errType: " + paramInt1);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      ExtControlProviderNearBy.a(this.dgf, localdo.bOw.bOF);
      if ((ExtControlProviderNearBy.d(this.dgf) == null) || (ExtControlProviderNearBy.d(this.dgf).size() == 0))
      {
        aa.e("MicroMsg.ExtControlProviderNearBy", "get lbsfriend list size:0");
        ExtControlProviderNearBy.c(this.dgf).countDown();
      }
    }
    while (true)
    {
      ExtControlProviderNearBy.f(this.dgf);
      return;
      if (ExtControlProviderNearBy.d(this.dgf).size() > 10)
      {
        aa.i("MicroMsg.ExtControlProviderNearBy", "get lbsfriend size > 10," + ExtControlProviderNearBy.d(this.dgf).size());
        ExtControlProviderNearBy.d(this.dgf).subList(10, ExtControlProviderNearBy.d(this.dgf).size()).clear();
      }
      ExtControlProviderNearBy.a(this.dgf, new CountDownLatch(ExtControlProviderNearBy.d(this.dgf).size()));
      ExtControlProviderNearBy.c(this.dgf).countDown();
      ExtControlProviderNearBy.e(this.dgf);
      continue;
      aa.e("MicroMsg.ExtControlProviderNearBy", "get lbsfriend failed: errCode = " + paramInt2 + ", errType=" + paramInt1);
      ExtControlProviderNearBy.c(this.dgf).countDown();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.h
 * JD-Core Version:    0.6.2
 */