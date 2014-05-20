package com.tencent.mm.ui.setting;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.ab.a;
import com.tencent.mm.ab.k;
import com.tencent.mm.ab.l;
import com.tencent.mm.ab.r;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;

final class ec extends bc
{
  private int cVT;
  private Context context;

  public ec(SettingsSelectBgUI paramSettingsSelectBgUI, Context paramContext, int paramInt)
  {
    super(paramContext, new k());
    this.context = paramContext;
    this.cVT = paramInt;
  }

  public final void FZ()
  {
    setCursor(r.BM().BI());
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final int getCount()
  {
    return 2 + getCursor().getCount();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    fb localfb1;
    int i;
    a locala;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903693, null);
      paramView.setLayoutParams(new AbsListView.LayoutParams(this.cVT, this.cVT));
      fb localfb2 = new fb();
      localfb2.hgr = ((LinearLayout)paramView.findViewById(2131363672));
      localfb2.hgs = ((LinearLayout)paramView.findViewById(2131363675));
      localfb2.hgt = ((LinearLayout)paramView.findViewById(2131363676));
      localfb2.hgu = ((LinearLayout)paramView.findViewById(2131363677));
      localfb2.hgv = ((LinearLayout)paramView.findViewById(2131363678));
      paramView.setTag(localfb2);
      localfb1 = localfb2;
      i = au.a((Integer)be.uz().sr().get(12311), -2);
      locala = r.BN().gc(SettingsSelectBgUI.f(this.hgd));
      if (paramInt != 0)
        break label283;
      if (((!SettingsSelectBgUI.c(this.hgd)) || (i != -2)) && ((SettingsSelectBgUI.c(this.hgd)) || (i != -2) || (locala != null)) && ((locala == null) || (locala.BC() != -2)))
        break label273;
      localfb1.xv("using");
    }
    while (true)
    {
      Bitmap localBitmap4 = h.a(BitmapFactory.decodeResource(this.context.getResources(), 2130837853), true, 10.0F);
      ((ImageView)paramView.findViewById(2131363671)).setImageBitmap(localBitmap4);
      return paramView;
      localfb1 = (fb)paramView.getTag();
      break;
      label273: localfb1.xv("downloaded");
    }
    label283: if (paramInt == 1)
    {
      if (((SettingsSelectBgUI.c(this.hgd)) && (i == 0)) || ((!SettingsSelectBgUI.c(this.hgd)) && (i == 0) && (locala == null)) || ((locala != null) && (locala.BC() == 0)))
        localfb1.xv("using");
      while (true)
      {
        Bitmap localBitmap3 = h.a(BitmapFactory.decodeResource(this.context.getResources(), 2130837852), true, 10.0F);
        ((ImageView)paramView.findViewById(2131363671)).setImageBitmap(localBitmap3);
        return paramView;
        localfb1.xv("downloaded");
      }
    }
    k localk = (k)getItem(paramInt - 2);
    l locall = r.BM();
    if (!be.uz().isSDCardAvailable());
    for (Bitmap localBitmap1 = BitmapFactory.decodeResource(this.hgd.getResources(), 2130838944); localBitmap1 != null; localBitmap1 = h.su(locall.BJ() + l.H(localk.getId(), localk.BH())))
    {
      Bitmap localBitmap2 = h.a(localBitmap1, true, 10.0F);
      ((ImageView)paramView.findViewById(2131363671)).setImageBitmap(localBitmap2);
      switch (localk.getStatus())
      {
      default:
        return paramView;
      case 1:
        if ((SettingsSelectBgUI.c(this.hgd)) || (locala == null) || (locala.BC() == localk.getId()))
          break label641;
        localfb1.xv("downloaded");
        return paramView;
      case 3:
      case 2:
      case 5:
      case 4:
      }
    }
    localfb1.xv("downloading");
    return paramView;
    if ((!SettingsSelectBgUI.c(this.hgd)) && (locala != null) && (locala.BC() == localk.getId()))
    {
      localfb1.xv("using");
      return paramView;
    }
    localfb1.xv("downloaded");
    return paramView;
    localfb1.xv("undownloaded");
    return paramView;
    label641: localfb1.xv("using");
    return paramView;
    localfb1.xv("canceling");
    return paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ec
 * JD-Core Version:    0.6.2
 */