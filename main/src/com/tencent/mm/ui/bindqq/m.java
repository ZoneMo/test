package com.tencent.mm.ui.bindqq;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.o.a;

final class m
  implements DialogInterface.OnCancelListener
{
  m(l paraml, a parama)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.gJx.gJv.onDetach();
    be.uA().c(this.gJw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.m
 * JD-Core Version:    0.6.2
 */