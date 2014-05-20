package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.voicereminder.a.a;

final class ed
  implements DialogInterface.OnCancelListener
{
  ed(eb parameb, a parama)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.gNi);
    be.uA().b(331, dw.b(this.gNh.gNg.gNd));
    dw.a(this.gNh.gNg.gNd, null);
    if (dw.c(this.gNh.gNg.gNd) != null)
      dw.c(this.gNh.gNg.gNd).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ed
 * JD-Core Version:    0.6.2
 */