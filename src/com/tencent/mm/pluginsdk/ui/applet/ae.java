package com.tencent.mm.pluginsdk.ui.applet;

import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;

public final class ae
{
  private int FN;
  private int background = -1;
  private w fnN;
  private ai fnV;
  private aj foM;
  private final View.OnTouchListener foy = new af(this);
  private int row;

  public final void a(ai paramai)
  {
    this.fnV = paramai;
  }

  public final void a(aj paramaj)
  {
    this.foM = paramaj;
  }

  public final void a(w paramw, int paramInt)
  {
    this.fnN = paramw;
    this.row = paramInt;
  }

  public final void asf()
  {
    this.FN = 4;
  }

  public final void kq(int paramInt)
  {
    this.background = paramInt;
  }

  public final void onBindView(View paramView)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView;
    if (this.fnN != null)
    {
      localViewGroup.setOnTouchListener(this.foy);
      for (int i = 0; i < this.FN; i++)
      {
        View localView = localViewGroup.getChildAt(i);
        int j = i + this.row * this.FN;
        this.fnN.getView(j, localView, localViewGroup);
        if (this.fnV != null)
          localView.setOnClickListener(new ag(this, localViewGroup, j));
        if (this.foM != null)
          localView.setOnLongClickListener(new ah(this, localViewGroup, j));
      }
    }
    if (this.background >= 0)
      paramView.setBackgroundResource(this.background);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ae
 * JD-Core Version:    0.6.2
 */