package com.tencent.mm.pluginsdk.ui;

import android.text.TextUtils;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.w;
import com.tencent.mm.ui.base.MMFlipper;
import com.tencent.mm.ui.base.MMRadioGroupView;
import com.tencent.mm.ui.base.MMRadioImageButton;
import com.tencent.mm.ui.base.cp;

final class ar
  implements cp
{
  ar(SmileyPanel paramSmileyPanel)
  {
  }

  public final void a(MMRadioGroupView paramMMRadioGroupView, int paramInt)
  {
    if (SmileyPanel.b(this.fmB) == null)
    {
      aa.e("MicroMsg.SmileyPanel", "Flipper had not init. ");
      return;
    }
    MMRadioImageButton localMMRadioImageButton1 = (MMRadioImageButton)paramMMRadioGroupView.findViewById(paramMMRadioGroupView.getCheckedRadioButtonId());
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Integer.valueOf(SmileyPanel.c(this.fmB));
    arrayOfObject[2] = Integer.valueOf(paramMMRadioGroupView.getCheckedRadioButtonId());
    aa.d("MicroMsg.SmileyPanel", "checkedId:%d mLastCheckedViewId:%d checkedRadioButtonId:%d", arrayOfObject);
    if (paramInt < -1);
    for (MMRadioImageButton localMMRadioImageButton2 = paramMMRadioGroupView.aHo(); ; localMMRadioImageButton2 = localMMRadioImageButton1)
    {
      if ((SmileyPanel.c(this.fmB) == paramInt) || (localMMRadioImageButton2 == null))
      {
        aa.e("MicroMsg.SmileyPanel", "mLastCheckedViewId equel checked id or btn is null.");
        return;
      }
      String str = (String)localMMRadioImageButton2.getTag();
      aa.e("MicroMsg.SmileyPanel", "radioTag is [%s]", new Object[] { str });
      if ((!TextUtils.isEmpty(str)) && (str.equals("TAG_STORE_TAB")))
      {
        SmileyPanel.d(this.fmB);
        return;
      }
      if ((!TextUtils.isEmpty(str)) && (!str.equals(String.valueOf(w.ggW))) && (!str.equals(String.valueOf(w.ggX))))
      {
        w localw = (w)localMMRadioImageButton2.getTag(n.bjb);
        if ((localw != null) && (localw.aBn() == 0))
        {
          SmileyPanel.a(this.fmB, localw);
          return;
        }
      }
      if ((!TextUtils.isEmpty(str)) && (str.equals("TAG_DEFAULT_TAB")))
      {
        if (this.fmB.fki != null)
          this.fmB.fki.bB(true);
        this.fmB.arD();
      }
      while (true)
      {
        SmileyPanel.b(this.fmB).aGN();
        this.fmB.G(str, false);
        SmileyPanel.a(this.fmB, paramInt);
        SmileyPanel.a(this.fmB, str);
        SmileyPanel.b(this.fmB).invalidate();
        return;
        if (this.fmB.fki != null)
          this.fmB.fki.bB(false);
        this.fmB.cj(true);
      }
    }
  }

  public final void b(MMRadioGroupView paramMMRadioGroupView, int paramInt)
  {
    if (SmileyPanel.b(this.fmB) == null)
      aa.e("MicroMsg.SmileyPanel", "Flipper had not init. ");
    w localw;
    do
    {
      MMRadioImageButton localMMRadioImageButton;
      String str;
      do
      {
        return;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        aa.e("MicroMsg.SmileyPanel", "checkedId is [%d]", arrayOfObject);
        localMMRadioImageButton = (MMRadioImageButton)paramMMRadioGroupView.findViewById(paramMMRadioGroupView.aHn());
        str = (String)localMMRadioImageButton.getTag();
        if ((!TextUtils.isEmpty(str)) && (str.equals("TAG_STORE_TAB")))
        {
          SmileyPanel.d(this.fmB);
          return;
        }
      }
      while ((TextUtils.isEmpty(str)) || (str.equals(String.valueOf(w.ggW))) || (str.equals(String.valueOf(w.ggX))));
      localw = (w)localMMRadioImageButton.getTag(n.bjb);
    }
    while ((localw == null) || (localw.aBn() != 0));
    SmileyPanel.a(this.fmB, localw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ar
 * JD-Core Version:    0.6.2
 */