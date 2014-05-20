package com.tencent.mm.ui.chatting;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.pluginsdk.ui.chat.am;

final class gv
  implements am
{
  private Animation gPM;
  private Animation gPN;

  gv(ChattingUI paramChattingUI)
  {
  }

  public final boolean cF(boolean paramBoolean)
  {
    if (this.gPM == null)
    {
      this.gPM = AnimationUtils.loadAnimation(this.gPG.aal(), 2130968623);
      this.gPN = AnimationUtils.loadAnimation(this.gPG.aal(), 2130968621);
    }
    if (paramBoolean)
    {
      if (this.gPG.gOG != null)
      {
        this.gPG.gOG.setVisibility(8);
        this.gPG.gOG.startAnimation(this.gPN);
      }
      this.gPG.dKO.setVisibility(0);
      this.gPG.dKO.startAnimation(this.gPM);
      this.gPG.dKO.postInvalidateDelayed(this.gPM.getDuration());
    }
    do
    {
      return false;
      this.gPG.SM();
      this.gPG.dKO.setVisibility(8);
      this.gPG.dKO.startAnimation(this.gPN);
    }
    while (this.gPG.gOG == null);
    this.gPG.gOG.setVisibility(0);
    this.gPG.gOG.startAnimation(this.gPM);
    this.gPG.gOG.postInvalidateDelayed(this.gPM.getDuration());
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.gv
 * JD-Core Version:    0.6.2
 */