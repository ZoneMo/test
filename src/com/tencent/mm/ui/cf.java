package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import com.tencent.mm.sdk.platformtools.am;

final class cf
  implements DialogInterface.OnDismissListener
{
  cf(DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    am.sF("show_wap_adviser");
    if (this.god != null)
      this.god.onClick(paramDialogInterface, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cf
 * JD-Core Version:    0.6.2
 */