package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.c.a.do;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.x;
import java.util.concurrent.CountDownLatch;

final class i
  implements x
{
  i(ExtControlProviderNearBy paramExtControlProviderNearBy)
  {
  }

  public final void a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      do localdo = new do();
      localdo.bOv.bOd = ExtControlProviderNearBy.g(this.dgf);
      localdo.bOv.bOx = paramFloat2;
      localdo.bOv.bOy = paramFloat1;
      localdo.bOv.bOz = paramInt1;
      localdo.bOv.bOA = paramInt2;
      localdo.bOv.bOB = paramString1;
      localdo.bOv.bOC = paramString2;
      if (a.ayH().f(localdo))
        aa.i("MicroMsg.ExtControlProviderNearBy", "do get nearby friend");
      return;
    }
    aa.e("MicroMsg.ExtControlProviderNearBy", "get location failed");
    ExtControlProviderNearBy.f(this.dgf);
    ExtControlProviderNearBy.c(this.dgf).countDown();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.i
 * JD-Core Version:    0.6.2
 */