package com.tencent.mm.ui.tools;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.tencent.mm.f;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class dr
  implements TextWatcher
{
  dr(MMTextInputUI paramMMTextInputUI)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str = paramEditable.toString();
    int i;
    if (!MMTextInputUI.c(this.hlx))
    {
      if (str.trim().length() > 0)
        this.hlx.dg(true);
    }
    else
    {
      if (MMTextInputUI.d(this.hlx) <= 0)
        break label253;
      MMTextInputUI.e(this.hlx);
      i = 0;
      label54: if (i >= str.length())
        break label113;
      if (!cj.l(str.charAt(i)))
        break label101;
      MMTextInputUI.a(this.hlx, 2);
    }
    while (true)
    {
      i++;
      break label54;
      this.hlx.dg(false);
      break;
      label101: MMTextInputUI.a(this.hlx, 1);
    }
    label113: if ((MMTextInputUI.f(this.hlx) >= MMTextInputUI.g(this.hlx)) && (MMTextInputUI.f(this.hlx) <= MMTextInputUI.d(this.hlx)))
    {
      this.hlx.dg(true);
      MMTextInputUI.h(this.hlx).setVisibility(0);
      MMTextInputUI.h(this.hlx).setTextColor(this.hlx.getResources().getColor(f.aay));
      TextView localTextView2 = MMTextInputUI.h(this.hlx);
      MMTextInputUI localMMTextInputUI3 = this.hlx;
      int m = n.aay;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(MMTextInputUI.d(this.hlx) - MMTextInputUI.f(this.hlx) >> 1);
      localTextView2.setText(localMMTextInputUI3.getString(m, arrayOfObject2));
      label253: return;
    }
    if (MMTextInputUI.f(this.hlx) > MMTextInputUI.d(this.hlx))
    {
      this.hlx.dg(false);
      MMTextInputUI.h(this.hlx).setVisibility(0);
      MMTextInputUI.h(this.hlx).setTextColor(this.hlx.getResources().getColor(f.aaz));
      TextView localTextView1 = MMTextInputUI.h(this.hlx);
      MMTextInputUI localMMTextInputUI2 = this.hlx;
      int k = n.bCX;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(1 + (MMTextInputUI.f(this.hlx) - MMTextInputUI.d(this.hlx) >> 1));
      localTextView1.setText(localMMTextInputUI2.getString(k, arrayOfObject1));
      return;
    }
    MMTextInputUI localMMTextInputUI1 = this.hlx;
    boolean bool;
    if (MMTextInputUI.c(this.hlx))
      bool = true;
    while (true)
    {
      localMMTextInputUI1.dg(bool);
      MMTextInputUI.h(this.hlx).setVisibility(8);
      return;
      int j = MMTextInputUI.f(this.hlx);
      bool = false;
      if (j > 0)
        bool = true;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dr
 * JD-Core Version:    0.6.2
 */