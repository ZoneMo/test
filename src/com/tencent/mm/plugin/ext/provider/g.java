package com.tencent.mm.plugin.ext.provider;

import com.tencent.mm.sdk.platformtools.LBSManager;

final class g
  implements Runnable
{
  g(ExtControlProviderNearBy paramExtControlProviderNearBy)
  {
  }

  public final void run()
  {
    if (ExtControlProviderNearBy.a(this.dgf) == null)
      ExtControlProviderNearBy.a(this.dgf, new LBSManager(this.dgf.getContext(), ExtControlProviderNearBy.b(this.dgf)));
    ExtControlProviderNearBy.a(this.dgf).start();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.g
 * JD-Core Version:    0.6.2
 */