package com.tencent.mm.ui.tools;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;

final class hs
  implements CompoundButton.OnCheckedChangeListener
{
  private RadioButton hnD;
  private RadioButton hnE;
  private RadioButton hnF;
  private RadioButton hnG;

  public hs(WebViewUI paramWebViewUI, RadioButton paramRadioButton1, RadioButton paramRadioButton2, RadioButton paramRadioButton3, RadioButton paramRadioButton4)
  {
    this.hnD = paramRadioButton1;
    this.hnE = paramRadioButton2;
    this.hnF = paramRadioButton3;
    this.hnG = paramRadioButton4;
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = 1;
    int j;
    if (paramBoolean)
    {
      j = ((Integer)paramCompoundButton.getTag()).intValue();
      WebViewUI.c(this.hnv, j);
    }
    try
    {
      if (this.hnv.cOg.HB())
        this.hnv.cOg.aK(16384, j);
      RadioButton localRadioButton1 = this.hnD;
      if (j == i)
      {
        int k = i;
        localRadioButton1.setChecked(k);
        RadioButton localRadioButton2 = this.hnE;
        if (j != 2)
          break label180;
        int n = i;
        localRadioButton2.setChecked(n);
        RadioButton localRadioButton3 = this.hnF;
        if (j != 3)
          break label186;
        int i2 = i;
        localRadioButton3.setChecked(i2);
        RadioButton localRadioButton4 = this.hnG;
        if (j != 4)
          break label192;
        localRadioButton4.setChecked(i);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.w("MicroMsg.WebViewUI", "onCheckedChanged, ex = " + localException.getMessage());
        continue;
        int m = 0;
        continue;
        label180: int i1 = 0;
        continue;
        label186: int i3 = 0;
        continue;
        label192: i = 0;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hs
 * JD-Core Version:    0.6.2
 */