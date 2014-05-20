package com.tencent.mm.plugin.search.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;

final class i
  implements DialogInterface.OnCancelListener
{
  i(e parame, aj paramaj, m paramm)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.cPJ);
    be.uA().b(106, this.ejl);
    e.b(this.ejj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.i
 * JD-Core Version:    0.6.2
 */