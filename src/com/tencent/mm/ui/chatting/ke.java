package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.ui.EmojiView;

final class ke extends cf
{
  EmojiView cZZ;
  ProgressBar dSt;
  ImageView gKd;

  public ke(int paramInt)
  {
    super(paramInt);
  }

  public final cf c(View paramView, boolean paramBoolean)
  {
    super.as(paramView);
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.cZZ = ((EmojiView)paramView.findViewById(2131362288));
    this.daW = ((CheckBox)paramView.findViewById(2131361843));
    this.eyN = paramView.findViewById(2131361844);
    if (paramBoolean)
      this.gMy = ((TextView)paramView.findViewById(2131361934));
    for (this.type = 14; ; this.type = 15)
    {
      if (this.gKd != null)
        ((ViewGroup)this.gKd.getParent()).setBackgroundDrawable(null);
      return this;
      this.dSt = ((ProgressBar)paramView.findViewById(2131362332));
      this.gMy = ((TextView)paramView.findViewById(2131361934));
      this.gKj = ((ImageView)paramView.findViewById(2131362325));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ke
 * JD-Core Version:    0.6.2
 */