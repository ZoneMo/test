package com.tencent.mm.plugin.voicereminder.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.plugin.voicereminder.a.f;

final class c
  implements DialogInterface.OnClickListener
{
  c(RemindDialog paramRemindDialog)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    f localf = (f)be.uh().dN(f.class.getName());
    if (localf != null)
      localf.pk(RemindDialog.c(this.ePv));
    this.ePv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.c
 * JD-Core Version:    0.6.2
 */