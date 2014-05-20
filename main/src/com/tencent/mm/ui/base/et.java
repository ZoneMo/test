package com.tencent.mm.ui.base;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.tencent.mm.sdk.platformtools.aa;

final class et
  implements View.OnFocusChangeListener
{
  et(VoiceSearchEditText paramVoiceSearchEditText)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    arrayOfObject[1] = Boolean.valueOf(VoiceSearchEditText.g(this.gFC));
    aa.e("MicroMsg.VoiceSearchEditText", "onFocusChange hasFocus = [%s], currentFocusState = [%s]", arrayOfObject);
    if ((!paramBoolean) && (VoiceSearchEditText.g(this.gFC)))
    {
      VoiceSearchEditText.f(this.gFC);
      VoiceSearchEditText.a(this.gFC, false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.et
 * JD-Core Version:    0.6.2
 */