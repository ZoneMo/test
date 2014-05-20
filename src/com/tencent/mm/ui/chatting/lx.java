package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ui.base.MMTextView;

final class lx extends cf
{
  ProgressBar dSt;
  View fng;
  MMTextView gRC;

  public lx(int paramInt)
  {
    super(paramInt);
  }

  public final cf c(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.gMy = ((TextView)paramView.findViewById(2131361934));
    this.gRC = ((MMTextView)paramView.findViewById(2131361935));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    this.fng = paramView.findViewById(2131361842);
    if (paramBoolean)
    {
      this.type = 2;
      return this;
    }
    this.gKj = ((ImageView)paramView.findViewById(2131362325));
    this.dSt = ((ProgressBar)paramView.findViewById(2131362332));
    this.type = 4;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.lx
 * JD-Core Version:    0.6.2
 */