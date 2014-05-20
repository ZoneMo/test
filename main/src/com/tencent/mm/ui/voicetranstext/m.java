package com.tencent.mm.ui.voicetranstext;

import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;

final class m
  implements Runnable
{
  m(VoiceTransTextUI paramVoiceTransTextUI, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (VoiceTransTextUI.r(this.huE).getMeasuredHeight() >= VoiceTransTextUI.s(this.huE).getMeasuredHeight())
    {
      VoiceTransTextUI.r(this.huE).fullScroll(130);
      int i = VoiceTransTextUI.r(this.huE).getScrollY();
      VoiceTransTextUI.c(this.huE, VoiceTransTextUI.r(this.huE).getPaddingTop());
      VoiceTransTextUI.c(this.huE, VoiceTransTextUI.t(this.huE) - i);
      if (this.huI)
        break label121;
      if (VoiceTransTextUI.t(this.huE) > 0)
        VoiceTransTextUI.r(this.huE).setPadding(0, VoiceTransTextUI.t(this.huE), 0, 0);
    }
    return;
    label121: VoiceTransTextUI.r(this.huE).setPadding(0, 0, 0, 0);
    VoiceTransTextUI.u(this.huE).setVisibility(8);
    VoiceTransTextUI.u(this.huE).setHeight(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.m
 * JD-Core Version:    0.6.2
 */