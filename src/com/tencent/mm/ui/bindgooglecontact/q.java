package com.tencent.mm.ui.bindgooglecontact;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.i;

final class q
{
  ImageView cID;
  TextView dIs;
  TextView dQa;
  String frH;
  TextView gHM;
  View gHN;
  ProgressBar gHO;
  int position;
  int status;

  public q(o paramo, View paramView)
  {
    this.cID = ((ImageView)paramView.findViewById(i.avw));
    this.dIs = ((TextView)paramView.findViewById(i.avA));
    this.gHN = paramView.findViewById(i.avB);
    this.dQa = ((TextView)paramView.findViewById(i.avC));
    this.gHO = ((ProgressBar)paramView.findViewById(i.avz));
    this.gHM = ((TextView)paramView.findViewById(i.avx));
    this.gHN.setOnClickListener(new r(this, paramo));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.q
 * JD-Core Version:    0.6.2
 */