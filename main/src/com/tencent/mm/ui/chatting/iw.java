package com.tencent.mm.ui.chatting;

import android.widget.Toast;
import com.tencent.mm.ai.c;
import com.tencent.mm.ai.v;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.ch;

final class iw
  implements c
{
  iw(ChattingUI paramChattingUI)
  {
  }

  public final void a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    if (ChattingUI.F(this.gPG) != null)
    {
      ChattingUI.F(this.gPG).dismiss();
      ChattingUI.G(this.gPG);
    }
    if (paramInt1 == -50002)
    {
      Toast.makeText(this.gPG, this.gPG.getString(2131166717), 0).show();
      return;
    }
    if (paramInt1 < 0)
    {
      Toast.makeText(this.gPG, this.gPG.getString(2131166716), 0).show();
      return;
    }
    v.a(paramString1, paramInt2, ChattingUI.l(this.gPG).getUsername(), paramString2, 0);
    v.hf(paramString1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.iw
 * JD-Core Version:    0.6.2
 */