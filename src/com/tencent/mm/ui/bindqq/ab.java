package com.tencent.mm.ui.bindqq;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.ui.base.x;

final class ab
  implements DialogInterface.OnClickListener
{
  ab(z paramz)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    StartUnbindQQ.c(this.gJH.gJG).setText("");
    StartUnbindQQ.a(this.gJH.gJG).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.ab
 * JD-Core Version:    0.6.2
 */