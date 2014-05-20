package com.tencent.mm.pluginsdk.ui.applet;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

final class ao
  implements TextWatcher
{
  ao(an paraman)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    int i = 50 - paramEditable.length();
    if (i < 0)
      i = 0;
    if (an.a(this.foY) != null)
      an.a(this.foY).setText(String.valueOf(i));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ao
 * JD-Core Version:    0.6.2
 */