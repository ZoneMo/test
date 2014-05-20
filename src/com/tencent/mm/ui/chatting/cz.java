package com.tencent.mm.ui.chatting;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;

public final class cz extends RelativeLayout
{
  private LayoutInflater dLe;
  private int gMJ;

  public cz(LayoutInflater paramLayoutInflater, int paramInt)
  {
    super(paramLayoutInflater.getContext());
    this.dLe = paramLayoutInflater;
    this.gMJ = paramInt;
    TextView localTextView = new TextView(getContext(), null, 2131689665);
    localTextView.setId(2131361841);
    localTextView.setTextSize(1, 12.0F);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams1.addRule(14);
    localLayoutParams1.setMargins(0, 0, 0, getResources().getDimensionPixelSize(2131558428));
    addView(localTextView, localLayoutParams1);
    CheckBox localCheckBox = new CheckBox(getContext());
    localCheckBox.setId(2131361843);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.setMargins(0, getResources().getDimensionPixelSize(2131558428), getResources().getDimensionPixelSize(2131558427), 0);
    localLayoutParams2.addRule(3, 2131361841);
    localLayoutParams2.addRule(11);
    addView(localCheckBox, localLayoutParams2);
    View localView1 = this.dLe.inflate(this.gMJ, null);
    int i = localView1.getId();
    if (-1 == i)
    {
      aa.v("MicroMsg.ChattingItemContainer", "content view has no id, use defaul id");
      i = 2131361842;
      localView1.setId(2131361842);
    }
    RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams3.addRule(3, 2131361841);
    localLayoutParams3.addRule(0, 2131361843);
    addView(localView1, localLayoutParams3);
    View localView2 = new View(getContext());
    localView2.setId(2131361844);
    localView2.setVisibility(8);
    RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams4.addRule(6, i);
    localLayoutParams4.addRule(8, i);
    addView(localView2, localLayoutParams4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cz
 * JD-Core Version:    0.6.2
 */