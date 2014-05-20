package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class eg
  implements View.OnClickListener
{
  eg(ee paramee, ak paramak, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (au.hX(this.gNb.ot()))
    {
      aa.d("MicroMsg.ChattingItemVoiceRemindRemind", "filename is null");
      return;
    }
    ee.c(this.gNj).gMi.gMj.e(this.gNc, this.gNb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.eg
 * JD-Core Version:    0.6.2
 */