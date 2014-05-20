package com.tencent.mm.ui.chatting;

import android.text.Editable;
import android.text.TextWatcher;
import com.tencent.mm.ui.widget.MMEditText;

final class kp
  implements TextWatcher
{
  kp(km paramkm)
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
    if (km.a(this.gQX).getText().toString().trim().length() > 0)
    {
      this.gQX.jdMethod_do(true);
      return;
    }
    this.gQX.jdMethod_do(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kp
 * JD-Core Version:    0.6.2
 */