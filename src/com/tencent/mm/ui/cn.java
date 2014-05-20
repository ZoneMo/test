package com.tencent.mm.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class cn
  implements DialogInterface.OnCancelListener
{
  cn(Activity paramActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.gog != null)
    {
      this.bLc.finish();
      this.bLc.startActivity(this.gog);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cn
 * JD-Core Version:    0.6.2
 */