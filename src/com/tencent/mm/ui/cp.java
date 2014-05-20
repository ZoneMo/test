package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import com.tencent.mm.modelsimple.f;

final class cp
  implements DialogInterface.OnCancelListener
{
  cp(Intent paramIntent, Runnable paramRunnable, MMActivity paramMMActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.gog != null)
    {
      if (this.goh != null)
        this.goh.run();
      f.V(this.bLy);
      this.bLy.finish();
      this.bLy.startActivity(this.gog);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cp
 * JD-Core Version:    0.6.2
 */