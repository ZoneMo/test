package com.tencent.mm.ui.qrcode;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.ad.a;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class u
  implements DialogInterface.OnCancelListener
{
  u(ShowQRCodeStep1UI paramShowQRCodeStep1UI, a parama)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.hdE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.u
 * JD-Core Version:    0.6.2
 */