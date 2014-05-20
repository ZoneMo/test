package com.tencent.mm.ui.voicetranstext;

import android.text.ClipboardManager;
import android.widget.TextView;
import com.tencent.mm.ui.base.v;

final class g
  implements v
{
  g(f paramf)
  {
  }

  public final void bo(int paramInt)
  {
    if ((paramInt == 0) && (VoiceTransTextUI.a(this.huF.huE) != null) && (VoiceTransTextUI.b(this.huF.huE) != null))
      VoiceTransTextUI.a(this.huF.huE).setText(VoiceTransTextUI.b(this.huF.huE).getText());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.g
 * JD-Core Version:    0.6.2
 */