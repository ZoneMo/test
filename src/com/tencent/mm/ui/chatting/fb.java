package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class fb
  implements DialogInterface.OnClickListener
{
  fb(ez paramez, ak paramak)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.ctu.aBV())
    {
      ez.a(this.gOb).J(this.ctu);
      return;
    }
    if (this.ctu.aBY())
    {
      ez.a(this.gOb).K(this.ctu);
      return;
    }
    if (this.ctu.aCd())
    {
      ez.a(this.gOb).L(this.ctu);
      return;
    }
    if (this.ctu.aCc())
    {
      ez.a(this.gOb).M(this.ctu);
      return;
    }
    if (this.ctu.aCb())
    {
      ez.a(this.gOb).P(this.ctu);
      return;
    }
    if (this.ctu.aCe())
    {
      ez.a(this.gOb).O(this.ctu);
      return;
    }
    if (this.ctu.aCa())
    {
      ez.a(this.gOb).N(this.ctu);
      return;
    }
    aa.e("MicroMsg.ChattingListClickListener", "uknown msg type");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fb
 * JD-Core Version:    0.6.2
 */