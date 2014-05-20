package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

final class kj extends cf
{
  ProgressBar dSt;
  ImageView gKd;
  TextView gKg;
  TextView gQH;

  public kj(int paramInt)
  {
    super(paramInt);
  }

  public final cf c(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.gKd = ((ImageView)paramView.findViewById(2131362288));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    if (paramBoolean)
    {
      this.gMy = ((TextView)paramView.findViewById(2131361934));
      this.dSt = ((ProgressBar)paramView.findViewById(2131362312));
    }
    for (this.type = 1; ; this.type = 3)
    {
      this.gki = paramView.findViewById(2131362277);
      this.gKg = ((TextView)paramView.findViewById(2131362265));
      return this;
      this.gKj = ((ImageView)paramView.findViewById(2131362325));
      this.dSt = ((ProgressBar)paramView.findViewById(2131362332));
      this.gQH = ((TextView)paramView.findViewById(2131362335));
      this.gMy = ((TextView)paramView.findViewById(2131361934));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kj
 * JD-Core Version:    0.6.2
 */