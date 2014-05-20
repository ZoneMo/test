package com.tencent.mm.ui.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class b
  implements DialogInterface.OnCancelListener
{
  b(GetQRCodeInfoUI paramGetQRCodeInfoUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.hdt.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.b
 * JD-Core Version:    0.6.2
 */