package com.tencent.mm.ui.tools;

import android.text.Editable;
import android.text.TextWatcher;

final class c
  implements TextWatcher
{
  c(ActionBarSearchView paramActionBarSearchView)
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
    ActionBarSearchView.a(this.hgG);
    f localf;
    if (ActionBarSearchView.b(this.hgG) != null)
    {
      localf = ActionBarSearchView.b(this.hgG);
      if (paramCharSequence != null)
        break label44;
    }
    label44: for (String str = ""; ; str = paramCharSequence.toString())
    {
      localf.xw(str);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.c
 * JD-Core Version:    0.6.2
 */