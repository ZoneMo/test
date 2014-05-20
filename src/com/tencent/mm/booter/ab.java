package com.tencent.mm.booter;

import android.os.Handler;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class ab
  implements Runnable
{
  ab(MountReceiver paramMountReceiver)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = MountReceiver.a(this.cay);
    arrayOfObject[1] = Boolean.valueOf(be.se());
    aa.e("MicroMsg.MountReceiver", "dkmount [MOUNT] action:%s hasuin:%b", arrayOfObject);
    if (!be.se())
      return;
    be.uy();
    MountReceiver.c(this.cay).sendEmptyMessage(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ab
 * JD-Core Version:    0.6.2
 */