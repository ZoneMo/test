package com.tencent.mm.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class cv
  implements DialogInterface.OnCancelListener
{
  cv(Activity paramActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.bLc.finish();
    MMAppMgr.a(this.bLc, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cv
 * JD-Core Version:    0.6.2
 */