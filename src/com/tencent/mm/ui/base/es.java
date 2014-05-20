package com.tencent.mm.ui.base;

import android.text.Editable;
import android.text.TextWatcher;

final class es
  implements TextWatcher
{
  es(VoiceSearchEditText paramVoiceSearchEditText)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    VoiceSearchEditText.a(this.gFC, true);
    VoiceSearchEditText.f(this.gFC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.es
 * JD-Core Version:    0.6.2
 */