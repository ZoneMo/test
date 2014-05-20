package com.tencent.mm.ui.base.preference;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class q
  implements TextView.OnEditorActionListener
{
  q(InputPreference paramInputPreference)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((3 == paramInt) && (InputPreference.a(this.gGj) != null) && (InputPreference.b(this.gGj) != null))
    {
      if (InputPreference.b(this.gGj).getText() == null)
        InputPreference.a(this.gGj).wr("");
      while (true)
      {
        return true;
        InputPreference.a(this.gGj).wr(InputPreference.b(this.gGj).getText().toString());
      }
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.q
 * JD-Core Version:    0.6.2
 */