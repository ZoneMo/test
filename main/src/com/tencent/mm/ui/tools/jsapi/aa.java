package com.tencent.mm.ui.tools.jsapi;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.w.a;
import com.tencent.mm.w.ag;

final class aa
  implements DialogInterface.OnCancelListener
{
  aa(p paramp, String paramString)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    ag.AZ().fQ(this.hpD);
    p.a(this.hpx, p.b(this.hpx), "send_app_msg:cancel", null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.aa
 * JD-Core Version:    0.6.2
 */