package com.tencent.mm.ui.transmit;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.ai.a;

final class i
  implements DialogInterface.OnCancelListener
{
  i(MsgRetransmitUI paramMsgRetransmitUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.hru.hrt != null)
      this.hru.hrt.cancel();
    this.hru.hrs = true;
    this.hru.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.i
 * JD-Core Version:    0.6.2
 */