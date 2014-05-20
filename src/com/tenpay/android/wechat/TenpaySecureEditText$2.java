package com.tenpay.android.wechat;

import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class TenpaySecureEditText$2
  implements View.OnTouchListener
{
  TenpaySecureEditText$2(TenpaySecureEditText paramTenpaySecureEditText)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    TenpaySecureEditText localTenpaySecureEditText;
    if (TenpaySecureEditText.EditState.PASSWORD != this.a.a)
    {
      localTenpaySecureEditText = this.a;
      if (localTenpaySecureEditText.getCompoundDrawables()[2] != null)
        break label29;
    }
    label29: 
    while ((paramMotionEvent.getAction() != 1) || (paramMotionEvent.getX() <= localTenpaySecureEditText.getWidth() - localTenpaySecureEditText.getPaddingRight() - TenpaySecureEditText.a(this.a).getIntrinsicWidth()))
      return false;
    localTenpaySecureEditText.setText("");
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.TenpaySecureEditText.2
 * JD-Core Version:    0.6.2
 */