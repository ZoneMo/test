package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.ad.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;

final class s
  implements DialogInterface.OnCancelListener
{
  s(SelfQRCodeUI paramSelfQRCodeUI, a parama, String paramString)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.hdE);
    if (w.cp(this.gUD))
      this.heg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.s
 * JD-Core Version:    0.6.2
 */