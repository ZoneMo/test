package com.tencent.mm.ui.base;

import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;

final class al
  implements ag, ah, ai
{
  private al(MMAutoSwitchEditTextView paramMMAutoSwitchEditTextView)
  {
  }

  public final void aGL()
  {
    Object localObject1 = "";
    Iterator localIterator = MMAutoSwitchEditTextView.a(this.gzi).iterator();
    MMAutoSwitchEditText localMMAutoSwitchEditText;
    if (localIterator.hasNext())
    {
      localMMAutoSwitchEditText = (MMAutoSwitchEditText)localIterator.next();
      if (cj.hX(localMMAutoSwitchEditText.getText().toString().trim()))
        break label107;
    }
    label107: for (Object localObject2 = (String)localObject1 + localMMAutoSwitchEditText.getText().toString().trim(); ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      if (MMAutoSwitchEditTextView.e(this.gzi) != null)
        MMAutoSwitchEditTextView.e(this.gzi).aFF();
      return;
    }
  }

  public final void mU(int paramInt)
  {
    if ((MMAutoSwitchEditTextView.a(this.gzi) == null) || (paramInt >= MMAutoSwitchEditTextView.a(this.gzi).size()) || (paramInt == 0));
    MMAutoSwitchEditText localMMAutoSwitchEditText;
    do
    {
      return;
      localMMAutoSwitchEditText = (MMAutoSwitchEditText)MMAutoSwitchEditTextView.a(this.gzi).get(paramInt - 1);
    }
    while (localMMAutoSwitchEditText == null);
    localMMAutoSwitchEditText.requestFocus();
  }

  public final void mV(int paramInt)
  {
    Object localObject1 = "";
    Iterator localIterator = MMAutoSwitchEditTextView.a(this.gzi).iterator();
    MMAutoSwitchEditText localMMAutoSwitchEditText2;
    if (localIterator.hasNext())
    {
      localMMAutoSwitchEditText2 = (MMAutoSwitchEditText)localIterator.next();
      if (cj.hX(localMMAutoSwitchEditText2.getText().toString().trim()))
        break label218;
    }
    label218: for (Object localObject2 = (String)localObject1 + localMMAutoSwitchEditText2.getText().toString().trim(); ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      if ((!cj.hX((String)localObject1)) && (((String)localObject1).length() == MMAutoSwitchEditTextView.b(this.gzi) * MMAutoSwitchEditTextView.c(this.gzi)))
        if (MMAutoSwitchEditTextView.d(this.gzi) != null)
          MMAutoSwitchEditTextView.d(this.gzi).vW((String)localObject1);
      MMAutoSwitchEditText localMMAutoSwitchEditText1;
      do
      {
        do
        {
          return;
          if (MMAutoSwitchEditTextView.e(this.gzi) != null)
            MMAutoSwitchEditTextView.e(this.gzi).aFF();
        }
        while ((MMAutoSwitchEditTextView.a(this.gzi) == null) || (paramInt >= -1 + MMAutoSwitchEditTextView.a(this.gzi).size()));
        localMMAutoSwitchEditText1 = (MMAutoSwitchEditText)MMAutoSwitchEditTextView.a(this.gzi).get(paramInt + 1);
      }
      while (localMMAutoSwitchEditText1 == null);
      localMMAutoSwitchEditText1.requestFocus();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.al
 * JD-Core Version:    0.6.2
 */