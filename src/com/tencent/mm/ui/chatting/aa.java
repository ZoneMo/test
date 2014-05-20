package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

final class aa extends cf
{
  LinearLayout dUe;
  List dYO = new ArrayList();
  ab gKP = new ab();
  TextView gKg;
  ChattingItemFooter gKo;

  public aa(int paramInt)
  {
    super(paramInt);
  }

  public final cf ap(View paramView)
  {
    ViewGroup localViewGroup = (ViewGroup)this.gKP.dYA.getParent();
    z localz = new z();
    localz.dYA = paramView;
    localz.dYB = ((TextView)paramView.findViewById(2131361861));
    localz.gKO = ((TextView)paramView.findViewById(2131362266));
    localz.dYC = paramView.findViewById(2131362267);
    localz.dYD = ((ImageView)paramView.findViewById(2131362257));
    localz.dYF = ((ProgressBar)paramView.findViewById(2131362268));
    localz.dYG = paramView.findViewById(2131362269);
    localViewGroup.addView(paramView, -1 + localViewGroup.getChildCount());
    this.dYO.add(localz);
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.aa
 * JD-Core Version:    0.6.2
 */