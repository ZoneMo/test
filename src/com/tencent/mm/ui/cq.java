package com.tencent.mm.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.modelsimple.f;

final class cq
  implements DialogInterface.OnClickListener
{
  cq(Intent paramIntent, Activity paramActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.gog != null)
    {
      this.bLc.finish();
      this.bLc.startActivity(this.gog);
      f.V(this.bLc);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cq
 * JD-Core Version:    0.6.2
 */