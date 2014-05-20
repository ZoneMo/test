package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.base.ce;
import java.util.ArrayList;

public final class au
{
  private Bitmap bitmap = null;
  private ImageView cXH = null;
  private View cYm = null;
  private SharedPreferences chz;
  private Context context;
  private View dmp;
  private View dyD;
  private at fqT;
  private as fqU;
  private ce fqV;
  private boolean fqW = true;

  public au(Context paramContext, View paramView1, View paramView2)
  {
    this.context = paramContext;
    this.dmp = paramView1;
    this.dyD = paramView2;
    this.fqT = new at(this.context);
    this.chz = paramContext.getSharedPreferences(al.azs(), 0);
    this.cYm = View.inflate(this.context, k.aSZ, null);
    this.cXH = ((ImageView)this.cYm.findViewById(i.aGR));
    this.fqV = new ce(this.cYm, -2, -2, (byte)0);
    this.fqV.setBackgroundDrawable(new ColorDrawable(0));
    this.fqV.setOutsideTouchable(true);
    this.cYm.setOnClickListener(new av(this));
  }

  private float kE(int paramInt)
  {
    return TypedValue.applyDimension(1, paramInt, this.context.getResources().getDisplayMetrics());
  }

  public final void atc()
  {
    new ax(this, new aw(this, this.context.getMainLooper())).start();
  }

  public final void atd()
  {
    this.fqW = false;
  }

  public final String ate()
  {
    while (true)
    {
      try
      {
        as localas1;
        if (this.fqT == null)
        {
          aa.d("MicroMsg.RecentImageBubble", "because of imageQuery == null");
          localas1 = null;
          this.fqU = localas1;
          as localas2 = this.fqU;
          if (localas2 == null)
          {
            str = null;
            return str;
          }
        }
        else
        {
          ArrayList localArrayList = this.fqT.atb();
          if ((localArrayList == null) || (localArrayList.size() == 0))
          {
            aa.d("MicroMsg.RecentImageBubble", "because of items == null || items.size() == 0");
            localas1 = null;
            continue;
          }
          localas1 = (as)localArrayList.get(0);
          if (localas1 != null)
          {
            if (cj.M(localas1.dlU) >= 0L)
              break label299;
            i = 1;
            if (i != 0)
            {
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = localas1.fqS;
              aa.b("MicroMsg.RecentImageBubble", "we found u have a future pic that lead to forbid this featur. file : %s", arrayOfObject1);
              localas1 = null;
              continue;
            }
          }
          if ((localas1 != null) && (localas1.fqS != null) && (localas1.fqS.startsWith(h.cfG)))
          {
            localas1 = null;
            continue;
          }
          if (localas1 != null)
          {
            if (cj.M(localas1.dlU) > 30L)
              break label305;
            j = 1;
            if (j != 0)
            {
              if (!this.chz.getString("chattingui_recent_shown_image_path", "").equals(localas1.fqS))
                continue;
              aa.d("MicroMsg.RecentImageBubble", "because of recentImage.equals(imageItem.orginalPath)");
              localas1 = null;
              continue;
            }
          }
          Object[] arrayOfObject2 = new Object[1];
          if (localas1 != null)
            break label311;
          bool = true;
          arrayOfObject2[0] = Boolean.valueOf(bool);
          aa.e("MicroMsg.RecentImageBubble", "because of checkAddDate(addDate) == false, or imageItem == null : %s", arrayOfObject2);
          localas1 = null;
          continue;
        }
        String str = this.fqU.bOV;
        if (this.fqU.bOV != null)
          continue;
        str = this.fqU.fqS;
        continue;
      }
      finally
      {
      }
      label299: int i = 0;
      continue;
      label305: int j = 0;
      continue;
      label311: boolean bool = false;
    }
  }

  public final void hide()
  {
    if (this.fqV == null)
      return;
    this.fqV.dismiss();
  }

  public final void show()
  {
    if ((this.cXH == null) || (this.fqU == null) || (this.bitmap == null) || (this.fqV == null) || (this.dmp == null) || (this.dyD == null))
      return;
    this.cXH.setImageBitmap(this.bitmap);
    int i;
    if (this.fqW)
    {
      i = 83;
      if (!this.fqW)
        break label122;
    }
    label122: for (int j = 0; ; j = 10)
    {
      this.fqV.showAtLocation(this.dmp, i, j, this.dyD.getHeight());
      new com.tencent.mm.sdk.platformtools.ay(new ay(this), false).bO(10000L);
      return;
      i = 85;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.au
 * JD-Core Version:    0.6.2
 */