package com.tencent.mm.pluginsdk.ui.applet;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.w.a;
import com.tencent.mm.w.ag;

final class g extends Handler
{
  g(CdnImageView paramCdnImageView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    byte[] arrayOfByte = (byte[])paramMessage.obj;
    if ((arrayOfByte == null) || (arrayOfByte.length == 0))
    {
      aa.e("MicroMsg.CdnImageView", "handleMsg fail, data is null");
      return;
    }
    Bitmap localBitmap = h.cj(arrayOfByte);
    ag.AZ();
    a.g(CdnImageView.a(this.fnE), localBitmap);
    if ((localBitmap != null) && (CdnImageView.b(this.fnE) > 0) && (CdnImageView.c(this.fnE) > 0))
      localBitmap = h.a(localBitmap, CdnImageView.c(this.fnE), CdnImageView.b(this.fnE), true, false);
    this.fnE.setImageBitmap(localBitmap);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.g
 * JD-Core Version:    0.6.2
 */