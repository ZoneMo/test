package com.tencent.mm.ui.base.preference;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class p
  implements View.OnClickListener
{
  p(InputPreference paramInputPreference)
  {
  }

  public final void onClick(View paramView)
  {
    if ((InputPreference.a(this.gGj) != null) && (InputPreference.b(this.gGj) != null))
    {
      if (InputPreference.b(this.gGj).getText() == null)
        InputPreference.a(this.gGj).wr("");
    }
    else
      return;
    InputPreference.a(this.gGj).wr(InputPreference.b(this.gGj).getText().toString());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.p
 * JD-Core Version:    0.6.2
 */