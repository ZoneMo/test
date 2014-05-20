package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.platformtools.v;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.ui.ak;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;

public final class a extends BaseAdapter
{
  private ArrayList eXO;
  private boolean eXP;
  public int eXQ = -1;
  private final Context mContext;
  private int mCount = 0;

  public a(Context paramContext, ArrayList paramArrayList)
  {
    this.mContext = paramContext;
    this.eXO = paramArrayList;
    this.eXP = true;
  }

  public static Drawable b(Context paramContext, Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return null;
    try
    {
      byte[] arrayOfByte = paramBitmap.getNinePatchChunk();
      if (NinePatch.isNinePatchChunk(arrayOfByte))
      {
        NinePatchDrawable localNinePatchDrawable = new NinePatchDrawable(paramContext.getResources(), paramBitmap, arrayOfByte, new Rect(), null);
        localNinePatchDrawable.setBounds(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
        return localNinePatchDrawable;
      }
    }
    catch (Exception localException)
    {
      aa.aM("MicroMsg.BankcardListAdapter", localException.getMessage());
      return null;
    }
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramBitmap);
    return localBitmapDrawable;
  }

  private Bankcard jD(int paramInt)
  {
    if (this.eXP)
    {
      if ((paramInt >= 0) && (paramInt < this.mCount))
        return (Bankcard)this.eXO.get(paramInt);
      return null;
    }
    return (Bankcard)this.eXO.get(paramInt);
  }

  public final int getCount()
  {
    int i;
    if (this.eXP)
    {
      int j = this.mCount;
      i = 0;
      if (j > 0)
        i = 0 + (1 + this.mCount);
    }
    ArrayList localArrayList;
    do
    {
      return i;
      localArrayList = this.eXO;
      i = 0;
    }
    while (localArrayList == null);
    return this.eXO.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    Bankcard localBankcard = jD(paramInt);
    if ((localBankcard != null) && (localBankcard.anf()))
      return 0;
    return 1;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Bankcard localBankcard = jD(paramInt);
    if (localBankcard == null)
    {
      View localView2 = View.inflate(this.mContext, k.bbt, null);
      this.eXQ = paramInt;
      return localView2;
    }
    View localView1;
    b localb2;
    label201: label219: int i;
    label252: String str;
    int j;
    if ((paramView == null) || (paramView.getTag() == null))
      if (localBankcard.anf())
      {
        localView1 = View.inflate(this.mContext, k.bbs, null);
        b localb1 = new b(this);
        localb1.eXW = ((ImageView)localView1.findViewById(i.ana));
        localb1.eXS = ((TextView)localView1.findViewById(i.anb));
        localb1.eXT = ((TextView)localView1.findViewById(i.ani));
        localb1.eXR = ((TextView)localView1.findViewById(i.ane));
        localb1.eXX = ((TextView)localView1.findViewById(i.and));
        localb1.eXU = ((RelativeLayout)localView1.findViewById(i.aPU));
        localb1.eXV = ((ImageView)localView1.findViewById(i.ang));
        localView1.setTag(localb1);
        localb2 = localb1;
        paramView = localView1;
        if (localBankcard.ang() != 1)
          break label463;
        localb2.eXX.setVisibility(0);
        localb2.eXS.setText(localBankcard.dCO);
        TextView localTextView = localb2.eXT;
        if (!localBankcard.eWU)
          break label476;
        i = n.bGf;
        localTextView.setText(i);
        localb2.eXR.setText(localBankcard.eWQ);
        localb2.eXY = com.tencent.mm.plugin.wallet.d.a.ab(this.mContext, localBankcard.eWH);
        if (localb2.eXY == null)
          break label630;
        aa.d("MicroMsg.BankcardListAdapter", "bankLogoUrl = " + localb2.eXY.fdI);
        Bitmap localBitmap1 = v.a(new ak(localb2.eXY.logoUrl));
        localb2.eXW.setImageBitmap(localBitmap1);
        Bitmap localBitmap2 = v.a(new ak(localb2.eXY.fdJ));
        localb2.eXV.setImageBitmap(localBitmap2);
        str = localb2.eXY.fdI;
        if (!"http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_bule_bg.9_v2.png".equals(str))
          break label484;
        j = h.akk;
        label411: if (j == -1)
          break label585;
        localb2.eXU.setBackgroundResource(j);
      }
    while (true)
    {
      v.a(localb2);
      return paramView;
      localView1 = View.inflate(this.mContext, k.bbv, null);
      break;
      localb2 = (b)paramView.getTag();
      break label201;
      label463: localb2.eXX.setVisibility(8);
      break label219;
      label476: i = n.bGh;
      break label252;
      label484: if ("http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_green_bg.9_v2.png".equals(str))
      {
        j = h.akl;
        break label411;
      }
      if ("http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_hbule_bg.9_v2.png".equals(str))
      {
        j = h.akm;
        break label411;
      }
      if ("http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_purple_bg.9_v2.png".equals(str))
      {
        j = h.akn;
        break label411;
      }
      if ("http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_red_bg.9_v2.png".equals(str))
      {
        j = h.ako;
        break label411;
      }
      if ("http://res.wx.qq.com/zh_CN/htmledition/images/mmpaybanklogo/wallet_bankcard_yellow_bg.9_v2.png".equals(str))
      {
        j = h.akp;
        break label411;
      }
      j = -1;
      break label411;
      label585: Bitmap localBitmap3 = v.a(new ak(localb2.eXY.fdI));
      if (localBitmap3 != null)
        localb2.eXU.setBackgroundDrawable(b(this.mContext, localBitmap3));
    }
    label630: aa.w("MicroMsg.BankcardListAdapter", "holder.bankUrls not found!");
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public final void w(ArrayList paramArrayList)
  {
    this.eXO = paramArrayList;
    if (paramArrayList != null)
    {
      this.mCount = paramArrayList.size();
      return;
    }
    this.mCount = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.a
 * JD-Core Version:    0.6.2
 */