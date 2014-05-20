package com.tencent.mm.plugin.voicereminder.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class d
  implements DialogInterface.OnDismissListener
{
  d(RemindDialog paramRemindDialog)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.ePv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.d
 * JD-Core Version:    0.6.2
 */