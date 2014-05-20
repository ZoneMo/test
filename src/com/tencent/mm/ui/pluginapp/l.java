package com.tencent.mm.ui.pluginapp;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.platformtools.au;

final class l
  implements TextView.OnEditorActionListener
{
  l(ContactSearchUI paramContactSearchUI)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent != null) && (paramKeyEvent.getKeyCode() == 66) && (!au.hX(ContactSearchUI.a(this.hdk).getText().toString().trim())))
      ContactSearchUI.b(this.hdk);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.l
 * JD-Core Version:    0.6.2
 */