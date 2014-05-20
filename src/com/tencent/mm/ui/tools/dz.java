package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.platformtools.ab;

public final class dz
{
  public static LinearLayout a(Activity paramActivity, ab paramab)
  {
    LinearLayout localLinearLayout = (LinearLayout)View.inflate(paramActivity, k.aVB, null);
    ImageView localImageView = (ImageView)localLinearLayout.findViewById(i.ayS);
    TextView localTextView = (TextView)localLinearLayout.findViewById(i.ayT);
    switch (ea.ciV[paramab.cGO.ordinal()])
    {
    default:
      paramab = null;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      if (paramab != null)
        localLinearLayout.setOnClickListener(paramab.cGR);
      return localLinearLayout;
      localImageView.setImageResource(h.ajF);
      localTextView.setText(n.bex);
      continue;
      localImageView.setImageResource(h.ajF);
      localTextView.setText(n.bma);
      continue;
      localImageView.setImageResource(h.ajE);
      localTextView.setText(n.bez);
      continue;
      localImageView.setImageResource(h.ajH);
      localTextView.setText(n.bey);
      continue;
      localImageView.setImageResource(h.ajG);
      localTextView.setText(n.bew);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dz
 * JD-Core Version:    0.6.2
 */