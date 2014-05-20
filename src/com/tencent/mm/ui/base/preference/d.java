package com.tencent.mm.ui.base.preference;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

final class d
  implements RadioGroup.OnCheckedChangeListener
{
  d(ChoicePreference paramChoicePreference)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (ChoicePreference.a(this.gFP) != null)
    {
      if (paramInt == -1)
        break label82;
      ChoicePreference.a(this.gFP, ChoicePreference.b(this.gFP)[(paramInt - 1048576)]);
    }
    while (true)
    {
      ChoicePreference.a(this.gFP, paramInt);
      ChoicePreference.a(this.gFP).a(this.gFP, this.gFP.getValue());
      return;
      label82: ChoicePreference.a(this.gFP, null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.d
 * JD-Core Version:    0.6.2
 */