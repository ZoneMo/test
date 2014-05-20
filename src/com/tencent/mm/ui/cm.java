package com.tencent.mm.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.modelsimple.f;

final class cm
  implements DialogInterface.OnClickListener
{
  cm(Intent paramIntent, Runnable paramRunnable, MMActivity paramMMActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
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
 * Qualified Name:     com.tencent.mm.ui.cm
 * JD-Core Version:    0.6.2
 */