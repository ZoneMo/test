package com.tencent.mm.ui.account.mobile;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;

final class be extends Handler
{
  be(MobileLoginOrForceReg paramMobileLoginOrForceReg)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.obj != null)
    {
      Bitmap localBitmap = (Bitmap)paramMessage.obj;
      MobileLoginOrForceReg.a(this.gwx).setImageBitmap(localBitmap);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.be
 * JD-Core Version:    0.6.2
 */