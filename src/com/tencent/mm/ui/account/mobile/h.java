package com.tencent.mm.ui.account.mobile;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

public final class h
  implements View.OnFocusChangeListener
{
  private boolean gvQ = false;
  private boolean gvR = false;
  protected EditText gvS;
  protected EditText gvr;

  public h(EditText paramEditText1, EditText paramEditText2)
  {
    this.gvS = paramEditText1;
    this.gvr = paramEditText2;
    this.gvQ = paramEditText1.hasFocus();
    this.gvR = paramEditText2.hasFocus();
    df();
  }

  private void df()
  {
    if ((this.gvR) || (this.gvQ))
    {
      this.gvS.setBackgroundResource(com.tencent.mm.h.afi);
      this.gvr.setBackgroundResource(com.tencent.mm.h.afk);
      return;
    }
    this.gvS.setBackgroundResource(com.tencent.mm.h.afj);
    this.gvr.setBackgroundResource(com.tencent.mm.h.afl);
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramView == this.gvS)
      this.gvQ = paramBoolean;
    if (paramView == this.gvr)
      this.gvR = paramBoolean;
    df();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.h
 * JD-Core Version:    0.6.2
 */