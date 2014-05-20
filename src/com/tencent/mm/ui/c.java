package com.tencent.mm.ui;

import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;

public final class c
{
  private TextView daV;
  private View gki;
  private ImageView gkj;
  private TextView gkk;
  private TextView gkl;
  private ImageView gkm;
  private ImageView gkn;

  public c(View paramView)
  {
    if (Build.VERSION.SDK_INT < 17)
      this.gki = paramView.findViewById(i.apF);
    while (true)
    {
      this.gkj = ((ImageView)paramView.findViewById(i.ayL));
      this.gkk = ((TextView)paramView.findViewById(i.aNU));
      this.daV = ((TextView)paramView.findViewById(i.aNa));
      this.gkl = ((TextView)paramView.findViewById(i.aMv));
      this.gkm = ((ImageView)paramView.findViewById(i.aCj));
      this.gkn = ((ImageView)paramView.findViewById(i.aDQ));
      this.gki.setBackgroundResource(h.abC);
      return;
      if ("4.2.1".equals(Build.VERSION.RELEASE))
        this.gki = paramView.findViewById(i.apF);
      else if ("4.2.0".equals(Build.VERSION.RELEASE))
        this.gki = paramView.findViewById(i.apF);
      else if ("4.2".equals(Build.VERSION.RELEASE))
        this.gki = paramView.findViewById(i.apF);
      else
        this.gki = paramView;
    }
  }

  public final void cW(boolean paramBoolean)
  {
    ImageView localImageView = this.gkm;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localImageView.setVisibility(i);
      return;
    }
  }

  public final void cX(boolean paramBoolean)
  {
    ImageView localImageView = this.gkn;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localImageView.setVisibility(i);
      return;
    }
  }

  public final void k(View.OnClickListener paramOnClickListener)
  {
    this.gki.setOnClickListener(paramOnClickListener);
  }

  public final void ml(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.ActionBarCustomArea", "update unread count %d", arrayOfObject);
    if (paramInt <= 0)
    {
      this.gkk.setVisibility(8);
      return;
    }
    if (paramInt < 100)
    {
      this.gkk.setText(String.valueOf(paramInt));
      this.gkk.setVisibility(0);
      return;
    }
    this.gkk.setText(n.bDp);
    this.gkk.setVisibility(0);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.daV.setText(paramCharSequence);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c
 * JD-Core Version:    0.6.2
 */