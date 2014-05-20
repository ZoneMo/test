package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;

final class a
  implements Runnable
{
  a(ExtContentProviderBase paramExtContentProviderBase, com.tencent.mm.pluginsdk.d.a.a parama)
  {
  }

  public final void run()
  {
    try
    {
      be.uA().d(new cb(new b(this)));
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtContentProviderBase", "exception in NetSceneLocalProxy");
      this.cOF.countDown();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.a
 * JD-Core Version:    0.6.2
 */