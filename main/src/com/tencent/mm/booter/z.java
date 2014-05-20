package com.tencent.mm.booter;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.dn;

final class z extends Handler
{
  z(MountReceiver paramMountReceiver, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = MountReceiver.a(this.cay);
    arrayOfObject[bool] = Boolean.valueOf(be.se());
    if (MountReceiver.b(this.cay) == null)
    {
      arrayOfObject[2] = Boolean.valueOf(bool);
      arrayOfObject[3] = Boolean.valueOf(au.FH());
      aa.e("MicroMsg.MountReceiver", "dkmount action:%s hasuin:%b ContextNull:%b SdcardFull:%b", arrayOfObject);
      if (MountReceiver.b(this.cay) != null)
        break label76;
    }
    label76: 
    while (!au.FH())
    {
      return;
      bool = false;
      break;
    }
    dn.bX(MountReceiver.b(this.cay));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.z
 * JD-Core Version:    0.6.2
 */