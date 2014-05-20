package com.tencent.mm.ui.conversation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class bu
  implements DialogInterface.OnCancelListener
{
  bu(bt parambt)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(MainUI.f(this.gZR.gZI));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bu
 * JD-Core Version:    0.6.2
 */