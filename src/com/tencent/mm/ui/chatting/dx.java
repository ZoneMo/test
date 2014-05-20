package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class dx
  implements View.OnClickListener
{
  dx(dw paramdw, ak paramak, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (au.hX(this.gNb.ot()))
    {
      aa.d("MicroMsg.ChattingItemVoiceRemindConfirm", "filename is null");
      return;
    }
    dw.a(this.gNd).gMi.gMj.d(this.gNc, this.gNb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.dx
 * JD-Core Version:    0.6.2
 */