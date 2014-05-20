package com.tencent.mm.plugin.base.stub;

import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.d.a.a;
import com.tencent.mm.sdk.platformtools.aa;

final class w
  implements Runnable
{
  w(WXCommProvider paramWXCommProvider, a parama)
  {
  }

  public final void run()
  {
    try
    {
      be.uA().d(new cb(new x(this)));
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.WXCommProvider", "exception in NetSceneLocalProxy");
      this.cOF.countDown();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.w
 * JD-Core Version:    0.6.2
 */