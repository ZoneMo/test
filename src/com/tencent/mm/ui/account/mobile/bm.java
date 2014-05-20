package com.tencent.mm.ui.account.mobile;

import android.graphics.Bitmap;
import android.os.Handler;
import com.tencent.mm.network.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;

final class bm extends Thread
{
  bm(MobileLoginOrForceReg paramMobileLoginOrForceReg, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      Bitmap localBitmap2 = h.decodeStream(k.o(this.eeS, 10000, 20000));
      localBitmap1 = localBitmap2;
      MobileLoginOrForceReg.b(this.gwx).sendMessage(MobileLoginOrForceReg.b(this.gwx).obtainMessage(0, localBitmap1));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicorMsg.MobileLoginOrForceReg", "download avatar failed");
        Bitmap localBitmap1 = null;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.bm
 * JD-Core Version:    0.6.2
 */