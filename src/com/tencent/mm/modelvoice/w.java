package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class w
  implements az
{
  w(RemoteController.RemoteControlReceiver paramRemoteControlReceiver)
  {
  }

  public final boolean ok()
  {
    aa.d("MicroMsg.RemoteControlReceiver", "got remote key event up");
    if (RemoteController.RemoteControlReceiver.Ek() != null)
      RemoteController.RemoteControlReceiver.Ek();
    RemoteController.RemoteControlReceiver.El();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.w
 * JD-Core Version:    0.6.2
 */