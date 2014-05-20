package com.tencent.mm.plugin.ext.provider;

import android.database.MatrixCursor;
import com.tencent.mm.c.a.aq;
import com.tencent.mm.c.a.as;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;

final class d
  implements Runnable
{
  d(ExtControlProviderMsg paramExtControlProviderMsg, i parami, String[] paramArrayOfString, com.tencent.mm.pluginsdk.d.a.a parama, MatrixCursor paramMatrixCursor)
  {
  }

  public final void run()
  {
    aq localaq = new aq();
    localaq.bMP.bMR = this.dfO.getUsername();
    localaq.bMP.content = this.dfM[1];
    localaq.bMP.type = w.dd(this.dfO.getUsername());
    localaq.bMP.flags = 0;
    if (!com.tencent.mm.sdk.b.a.ayH().f(localaq))
    {
      this.dfN.fT(4);
      this.cOF.countDown();
      return;
    }
    x localx = localaq.bMQ.bMT;
    try
    {
      e locale = new e(this, com.tencent.mm.plugin.ext.a.a.V(localaq.bMQ.bMS));
      be.uA().a(522, locale);
      be.uA().d(localx);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
      this.dfN.fT(4);
      this.cOF.countDown();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.d
 * JD-Core Version:    0.6.2
 */