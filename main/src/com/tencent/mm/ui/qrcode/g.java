package com.tencent.mm.ui.qrcode;

import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.ui.base.v;
import com.tencent.mm.ui.tools.jsapi.j;

final class g
  implements v
{
  g(QRCodeIntroductionWebViewUI paramQRCodeIntroductionWebViewUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      QRCodeIntroductionWebViewUI.b(this.hdu).aOx();
      return;
    case 1:
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(QRCodeIntroductionWebViewUI.c(this.hdu)));
    this.hdu.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.g
 * JD-Core Version:    0.6.2
 */