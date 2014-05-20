package com.tencent.mm.plugin.voicereminder.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.ap;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.voicereminder.a.f;
import com.tencent.mm.ui.chatting.ChattingUI;

final class b
  implements DialogInterface.OnClickListener
{
  b(RemindDialog paramRemindDialog)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    f localf = (f)be.uh().dN(f.class.getName());
    if (localf != null)
      localf.pk(RemindDialog.c(this.ePv));
    if (w.cR(be.nQ().oL()))
    {
      this.ePv.finish();
      return;
    }
    this.ePv.a(ChattingUI.class, new Intent().putExtra("Chat_User", RemindDialog.c(this.ePv)));
    this.ePv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.b
 * JD-Core Version:    0.6.2
 */