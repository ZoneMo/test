package com.tencent.mm.pluginsdk.ui.chat;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.pluginsdk.ui.ChatFooterPanel;
import com.tencent.mm.ui.widget.MMEditText;

final class w
  implements TextWatcher
{
  private boolean fqH = false;
  private boolean fqI = i.bH(11);

  w(ChatFooter paramChatFooter, TextWatcher paramTextWatcher)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    if ((ChatFooter.b(this.fqG)) && (this.fqI) && (this.fqH) && (paramEditable.length() > 0))
    {
      this.fqH = false;
      ChatFooter.a(this.fqG).setText(paramEditable.subSequence(0, -1 + paramEditable.length()));
      if (ChatFooter.a(this.fqG).length() > 0)
        ChatFooter.c(this.fqG).performClick();
      return;
    }
    this.fqJ.afterTextChanged(paramEditable);
    if (ChatFooter.A(this.fqG) != null)
    {
      if (ChatFooter.a(this.fqG).getLineCount() > i)
      {
        ChatFooter.A(this.fqG).setVisibility(0);
        ChatFooter.A(this.fqG).setText(paramEditable.length() + "/140");
      }
    }
    else
      label169: if ((paramEditable.length() <= 0) || (paramEditable.toString().trim().length() <= 0))
        break label236;
    while (true)
    {
      ChatFooter.b(this.fqG, i);
      if (ChatFooter.n(this.fqG) == null)
        break;
      ChatFooter.n(this.fqG).ch(i);
      return;
      ChatFooter.A(this.fqG).setVisibility(8);
      break label169;
      label236: int j = 0;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.fqJ.beforeTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((ChatFooter.b(this.fqG)) && (this.fqI) && (paramInt2 == 0) && (paramInt1 == -1 + paramCharSequence.length()) && (paramInt3 == 1) && (paramCharSequence.charAt(-1 + paramCharSequence.length()) == '\n'))
    {
      this.fqH = true;
      return;
    }
    this.fqJ.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.w
 * JD-Core Version:    0.6.2
 */