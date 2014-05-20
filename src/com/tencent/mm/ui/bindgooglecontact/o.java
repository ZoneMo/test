package com.tencent.mm.ui.bindgooglecontact;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.f;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.m.c;
import com.tencent.mm.modelfriend.ac;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.bc;

public final class o extends bc
{
  private LayoutInflater ddz;
  private p gHK;
  private String gHL;
  private String gHp;
  private Context mContext;

  public o(Context paramContext, String paramString)
  {
    super(paramContext, new ac());
    this.gHp = paramString;
    this.mContext = paramContext;
    this.ddz = LayoutInflater.from(this.mContext);
  }

  public final void FZ()
  {
    setCursor(ax.At().K(this.gHL, this.gHp));
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(p paramp)
  {
    this.gHK = paramp;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    q localq1;
    if ((paramView == null) || (paramView.getTag() == null))
    {
      paramView = this.ddz.inflate(k.aUT, null);
      localq1 = new q(this, paramView);
      paramView.setTag(localq1);
    }
    ac localac;
    for (q localq2 = localq1; ; localq2 = (q)paramView.getTag())
    {
      localac = (ac)getItem(paramInt);
      if (localac != null)
        break;
      return paramView;
    }
    localq2.position = paramInt;
    localq2.frH = localac.field_googlegmail;
    switch (localac.field_status)
    {
    default:
      if (TextUtils.isEmpty(localac.field_googlename))
      {
        localq2.dIs.setText(cj.tb(localac.field_googlegmail));
        switch (localac.field_status)
        {
        default:
          switch (localac.field_googlecgistatus)
          {
          default:
            localq2.gHM.setText(localac.field_googlegmail);
            return paramView;
          case 0:
          case 1:
          case 2:
          }
          break;
        case 0:
        case 1:
        case 2:
        }
      }
      break;
    case 0:
    case 2:
      label147: label180: label212: if (localac.field_small_url == null);
      break;
    case 1:
    }
    for (Bitmap localBitmap2 = c.a(localac.field_username, false, -1); ; localBitmap2 = null)
    {
      if (localBitmap2 == null)
      {
        localq2.cID.setImageDrawable(a.k(this.mContext, h.afI));
        break;
      }
      localq2.cID.setImageBitmap(localBitmap2);
      break;
      Bitmap localBitmap1 = c.dP(localac.field_googleid);
      if (localBitmap1 == null)
      {
        localq2.cID.setImageDrawable(a.k(this.mContext, h.afI));
        break;
      }
      localq2.cID.setImageBitmap(localBitmap1);
      break;
      localq2.dIs.setText(localac.field_googlename);
      break label147;
      localq2.gHN.setClickable(true);
      localq2.gHN.setBackgroundResource(h.acX);
      localq2.dQa.setText(n.bov);
      localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.white));
      break label180;
      localq2.gHN.setClickable(true);
      localq2.gHN.setBackgroundResource(h.acY);
      localq2.dQa.setText(n.boC);
      localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.ZY));
      break label180;
      localq2.gHN.setClickable(false);
      localq2.gHN.setBackgroundDrawable(null);
      localq2.dQa.setText(n.box);
      localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.ZY));
      break label180;
      localq2.dQa.setVisibility(4);
      localq2.gHO.setVisibility(0);
      break label212;
      localq2.gHN.setClickable(false);
      localq2.gHN.setBackgroundDrawable(null);
      localq2.dQa.setVisibility(0);
      localq2.gHO.setVisibility(8);
      localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.ZY));
      switch (localac.field_status)
      {
      default:
        break;
      case 0:
        localq2.dQa.setText(n.bow);
        break;
      case 1:
        localq2.dQa.setText(n.boD);
        break;
        localq2.dQa.setVisibility(0);
        localq2.gHO.setVisibility(8);
        switch (localac.field_status)
        {
        default:
          break;
        case 0:
          localq2.dQa.setText(n.bov);
          localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.white));
          break;
        case 1:
          localq2.dQa.setText(n.boC);
          localq2.dQa.setTextColor(this.mContext.getResources().getColor(f.ZY));
          break;
        }
        break;
      }
    }
  }

  public final void ih(String paramString)
  {
    this.gHL = cj.hR(paramString);
    closeCursor();
    FZ();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.o
 * JD-Core Version:    0.6.2
 */