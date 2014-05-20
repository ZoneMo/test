package com.tenpay.android.wechat;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class MyKeyboardWindow$1
  implements View.OnClickListener
{
  MyKeyboardWindow$1(MyKeyboardWindow paramMyKeyboardWindow)
  {
  }

  public void onClick(View paramView)
  {
    if (MyKeyboardWindow.a(this.a) == null)
      return;
    if (paramView.getId() == this.a.a("tenpay_keyboard_x"))
    {
      switch (MyKeyboardWindow.b(this.a))
      {
      case 0:
      default:
        return;
      case 1:
      }
      MyKeyboardWindow.a(this.a).dispatchKeyEvent(new KeyEvent(0, 59));
      MyKeyboardWindow.a(this.a).dispatchKeyEvent(new KeyEvent(0, 52));
      MyKeyboardWindow.a(this.a).dispatchKeyEvent(new KeyEvent(1, 59));
      return;
    }
    int i;
    if (paramView.getId() == this.a.a("tenpay_keyboard_1"))
      i = 8;
    while (true)
    {
      MyKeyboardWindow.a(this.a).dispatchKeyEvent(new KeyEvent(0, i));
      MyKeyboardWindow.a(this.a).dispatchKeyEvent(new KeyEvent(1, i));
      return;
      if (paramView.getId() == this.a.a("tenpay_keyboard_2"))
        i = 9;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_3"))
        i = 10;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_4"))
        i = 11;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_5"))
        i = 12;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_6"))
        i = 13;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_7"))
        i = 14;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_8"))
        i = 15;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_9"))
        i = 16;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_0"))
        i = 7;
      else if (paramView.getId() == this.a.a("tenpay_keyboard_d"))
        i = 67;
      else
        i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.MyKeyboardWindow.1
 * JD-Core Version:    0.6.2
 */