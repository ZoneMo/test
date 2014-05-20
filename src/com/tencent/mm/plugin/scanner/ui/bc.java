package com.tencent.mm.plugin.scanner.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.x;
import com.tencent.mm.n.ac;

final class bc
  implements DialogInterface.OnCancelListener
{
  bc(at paramat, x paramx)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.eeC);
    if (this.eey.edK != null)
    {
      this.eey.edK.a(0L, false);
      at.d(this.eey);
      this.eey.edK.bd(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bc
 * JD-Core Version:    0.6.2
 */