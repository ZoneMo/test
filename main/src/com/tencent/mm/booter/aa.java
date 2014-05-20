package com.tencent.mm.booter;

import com.tencent.mm.model.be;

final class aa
  implements Runnable
{
  aa(MountReceiver paramMountReceiver)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = MountReceiver.a(this.cay);
    arrayOfObject[1] = Boolean.valueOf(be.se());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MountReceiver", "dkmount [EJECT] action:%s hasuin:%b", arrayOfObject);
    if (!be.se())
      return;
    be.uy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.aa
 * JD-Core Version:    0.6.2
 */