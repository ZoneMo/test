package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements DialogInterface.OnClickListener
{
  o(n paramn)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.AppUpdaterUI", "go to WebView");
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com/m"));
    localIntent.addFlags(268435456);
    this.gbi.gbe.startActivity(localIntent);
    AppUpdaterUI.b(this.gbi.gbe, 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.o
 * JD-Core Version:    0.6.2
 */