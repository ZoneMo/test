package com.tencent.mm.ui.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.cj;

public final class c
  implements TextWatcher
{
  private final int clX;
  private EditText dQC;
  private TextView huW;
  private b huX = null;

  public c(EditText paramEditText, TextView paramTextView, int paramInt)
  {
    this.dQC = paramEditText;
    this.huW = paramTextView;
    this.clX = paramInt;
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str1 = paramEditable.toString();
    String str2 = "";
    int i = 0;
    int j = 0;
    if (j < str1.length())
    {
      if (cj.l(str1.charAt(j)))
        i += 2;
      while (true)
      {
        if (i > this.clX)
          break label83;
        str2 = str2 + str1.charAt(j);
        j++;
        break;
        i++;
      }
    }
    label83: if (i > this.clX)
    {
      this.dQC.setText(str2);
      this.dQC.setSelection(str2.length());
    }
    int k = this.clX - i;
    int m = 0;
    if (k < 0);
    while (true)
    {
      if (this.huW != null)
        this.huW.setText(m / 2);
      return;
      m = k;
    }
  }

  public final void b(b paramb)
  {
    this.huX = paramb;
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.huX != null)
      this.huX.Zv();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.widget.c
 * JD-Core Version:    0.6.2
 */