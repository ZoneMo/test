package com.tencent.mm.ui.tools.jsapi;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;

final class ab
  implements DialogInterface.OnCancelListener
{
  ab(p paramp, String paramString)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    ar.tZ().dp(this.ckt);
    p.a(this.hpx, p.b(this.hpx), "profile:cancel", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ab
 * JD-Core Version:    0.6.2
 */