package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

public class cf
{
  public ImageView cMS;
  public CheckBox daW;
  public TextView dkq;
  public View eyN;
  public ImageView gKj;
  public long gMA;
  public TextView gMy;
  public int gMz;
  public View gki;
  public int type;

  public cf(int paramInt)
  {
    this(paramInt, (byte)0);
  }

  private cf(int paramInt, byte paramByte)
  {
    this.type = paramInt;
    this.gMA = 0L;
  }

  public final void as(View paramView)
  {
    this.dkq = ((TextView)paramView.findViewById(2131361841));
    this.cMS = ((ImageView)paramView.findViewById(2131361933));
    this.gki = paramView.findViewById(2131362277);
    this.gKj = ((ImageView)paramView.findViewById(2131362325));
  }

  public final void dJ(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      if ((this.daW != null) && (this.daW.getVisibility() != i))
        this.daW.setVisibility(i);
      if ((this.eyN != null) && (this.eyN.getVisibility() != i))
        this.eyN.setVisibility(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cf
 * JD-Core Version:    0.6.2
 */