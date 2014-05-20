package com.tenpay.android.wechat;

import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;

class TenpaySecureEditText$1
  implements View.OnFocusChangeListener
{
  TenpaySecureEditText$1(TenpaySecureEditText paramTenpaySecureEditText)
  {
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a.setCompoundDrawables(this.a.getCompoundDrawables()[0], this.a.getCompoundDrawables()[1], null, this.a.getCompoundDrawables()[3]);
    while ((this.a.getText().toString().equals("")) || (TenpaySecureEditText.EditState.PASSWORD == this.a.a))
      return;
    this.a.setCompoundDrawables(this.a.getCompoundDrawables()[0], this.a.getCompoundDrawables()[1], TenpaySecureEditText.a(this.a), this.a.getCompoundDrawables()[3]);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.TenpaySecureEditText.1
 * JD-Core Version:    0.6.2
 */