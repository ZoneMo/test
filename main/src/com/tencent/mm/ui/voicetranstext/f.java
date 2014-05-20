package com.tencent.mm.ui.voicetranstext;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

final class f
  implements View.OnLongClickListener
{
  f(VoiceTransTextUI paramVoiceTransTextUI)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    aa.d("MicroMsg.VoiceTransTextUI", "onLongClick");
    VoiceTransTextUI localVoiceTransTextUI = this.huE;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.huE.getString(2131167780);
    h.b(localVoiceTransTextUI, "", arrayOfString, "", new g(this));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.f
 * JD-Core Version:    0.6.2
 */