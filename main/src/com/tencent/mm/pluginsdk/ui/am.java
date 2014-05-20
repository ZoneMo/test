package com.tencent.mm.pluginsdk.ui;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.tencent.mm.ao.c;
import com.tencent.mm.k;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.y;
import java.util.ArrayList;

final class am extends BaseAdapter
{
  private ArrayList flN;
  private final String flQ = "lock_emoji_async";
  private g flR = null;
  private Handler flS = new an(this);

  public am(SmileyGrid paramSmileyGrid)
  {
  }

  private y kh(int paramInt)
  {
    try
    {
      if (this.flN == null)
      {
        aa.v("MicroMsg.SmileyGrid", "jacks catch cache emoji info list null but request getView!. pass~");
        return null;
      }
      if (this.flN.size() <= paramInt)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(this.flN.size());
        arrayOfObject[1] = Integer.valueOf(paramInt);
        aa.f("MicroMsg.SmileyGrid", "jacks catch cache emoji beyond size, size: %d, position: %d", arrayOfObject);
        return null;
      }
    }
    finally
    {
    }
    y localy = (y)this.flN.get(paramInt);
    return localy;
  }

  public final void arx()
  {
    aa.d("repullemojiinfodesc", "add " + SmileyGrid.f(this.flM));
    if (this.flR == null)
      this.flR = new ao(this);
    com.tencent.mm.sdk.b.a.ayH().a("RePullEmojiInfoDesc", this.flR);
  }

  public final void ary()
  {
    aa.d("repullemojiinfodesc", "remove " + SmileyGrid.f(this.flM));
    if (this.flR != null)
    {
      com.tencent.mm.sdk.b.a.ayH().b("RePullEmojiInfoDesc", this.flR);
      this.flR = null;
    }
  }

  public final int getCount()
  {
    if (SmileyGrid.a(this.flM) == 20)
      return this.flM.flC;
    if ((SmileyGrid.a(this.flM) == 23) || (SmileyGrid.a(this.flM) == 25))
    {
      if (this.flM.dJC == -1 + SmileyGrid.g(this.flM))
      {
        if (SmileyGrid.d(this.flM) - this.flM.dJC * this.flM.flC == -1)
          return 0;
        return SmileyGrid.d(this.flM) - this.flM.dJC * this.flM.flC;
      }
      return this.flM.flC;
    }
    return this.flM.flC;
  }

  public final Object getItem(int paramInt)
  {
    try
    {
      if (this.flN == null)
        return null;
      if ((SmileyGrid.a(this.flM) == 25) && (paramInt + this.flM.dJC * this.flM.flC == this.flN.size()))
        return null;
    }
    finally
    {
    }
    return kh(paramInt + this.flM.dJC * this.flM.flC);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ap localap2;
    switch (SmileyGrid.a(this.flM))
    {
    case 21:
    case 22:
    case 24:
    default:
      localap2 = (ap)paramView.getTag();
      switch (SmileyGrid.a(this.flM))
      {
      case 21:
      case 22:
      case 24:
      default:
      case 23:
      case 25:
      case 20:
      }
      break;
    case 23:
    case 25:
    case 20:
    }
    y localy;
    do
    {
      return paramView;
      if (paramView == null)
      {
        ap localap3 = new ap(this);
        paramView = View.inflate(SmileyGrid.h(this.flM), k.aZD, null);
        localap3.flV = paramView.findViewById(com.tencent.mm.i.aKK);
        localap3.dZa = ((ImageView)paramView.findViewById(com.tencent.mm.i.amE));
        localap3.flU = ((TextView)paramView.findViewById(com.tencent.mm.i.amG));
        localap3.flW = ((TextView)paramView.findViewById(com.tencent.mm.i.amD));
        localap3.flX = ((TextView)paramView.findViewById(com.tencent.mm.i.amH));
        localap3.flY = paramView.findViewById(com.tencent.mm.i.amF);
        localap3.flZ = ((ImageView)paramView.findViewById(com.tencent.mm.i.aKJ));
        localap3.fma = paramView.findViewById(com.tencent.mm.i.aKI);
        localap3.dZa.setScaleType(ImageView.ScaleType.FIT_CENTER);
        paramView.setTag(localap3);
        break;
      }
      paramView.getTag();
      break;
      if (paramView == null)
      {
        ap localap1 = new ap(this);
        paramView = View.inflate(SmileyGrid.h(this.flM), k.aZE, null);
        localap1.dZa = ((ImageView)paramView.findViewById(com.tencent.mm.i.amE));
        localap1.dZa.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        paramView.setTag(localap1);
        break;
      }
      paramView.getTag();
      break;
      localap2.fma.setVisibility(8);
      localap2.dZa.setVisibility(0);
      if ((SmileyGrid.a(this.flM) == 25) && (paramInt == 0) && (this.flM.dJC == 0))
      {
        localap2.fma.setVisibility(0);
        localap2.flZ.setBackgroundResource(com.tencent.mm.h.aci);
        localap2.flV.setBackgroundDrawable(null);
        return paramView;
      }
      localy = kh(paramInt + this.flM.dJC * this.flM.flC);
      localap2.flV.setBackgroundResource(com.tencent.mm.h.aiA);
    }
    while (localy == null);
    label475: TextView localTextView;
    int j;
    if (localy.getDesc() == null)
    {
      localap2.flU.setVisibility(8);
      localap2.flX.setVisibility(4);
      localTextView = localap2.flW;
      int i = SmileyGrid.flz;
      j = 0;
      if (i != 2)
        break label601;
    }
    Bitmap localBitmap;
    while (true)
    {
      localTextView.setVisibility(j);
      com.tencent.mm.pluginsdk.i locali = com.tencent.mm.pluginsdk.h.apj();
      this.flM.getContext();
      localBitmap = locali.d(localy);
      if (localBitmap != null)
        break label608;
      if (this.flM.flH)
        break;
      com.tencent.mm.pluginsdk.h.apj().jf(SmileyGrid.f(this.flM));
      this.flM.flH = true;
      return paramView;
      localap2.flU.setVisibility(0);
      localap2.flU.setText(localy.getDesc());
      break label475;
      label601: j = 8;
    }
    label608: localap2.dZa.setImageBitmap(localBitmap);
    return paramView;
    if (paramInt == -1 + getCount())
    {
      localap2.dZa.setImageDrawable(com.tencent.mm.an.a.k(SmileyGrid.h(this.flM), com.tencent.mm.h.adO));
      return paramView;
    }
    if (this.flM.dJC == -1 + SmileyGrid.g(this.flM))
    {
      if (paramInt < SmileyGrid.d(this.flM) - (-1 + this.flM.flC) * this.flM.dJC)
      {
        if (SmileyGrid.e(this.flM));
        for (Drawable localDrawable2 = c.u(SmileyGrid.h(this.flM), paramInt + (-1 + this.flM.flC) * this.flM.dJC); ; localDrawable2 = c.t(SmileyGrid.h(this.flM), paramInt + (-1 + this.flM.flC) * this.flM.dJC))
        {
          localap2.dZa.setImageDrawable(localDrawable2);
          return paramView;
        }
      }
      localap2.dZa.setImageDrawable(null);
      return paramView;
    }
    if (SmileyGrid.e(this.flM));
    for (Drawable localDrawable1 = c.u(SmileyGrid.h(this.flM), paramInt + (-1 + this.flM.flC) * this.flM.dJC); ; localDrawable1 = c.t(SmileyGrid.h(this.flM), paramInt + (-1 + this.flM.flC) * this.flM.dJC))
    {
      localap2.dZa.setImageDrawable(localDrawable1);
      return paramView;
    }
  }

  public final void update()
  {
    while (true)
    {
      try
      {
        if (SmileyGrid.a(this.flM) == 23)
        {
          this.flN = SmileyGrid.a(this.flM, SmileyGrid.f(this.flM));
          if (this.flN == null)
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = SmileyGrid.f(this.flM);
            aa.c("MicroMsg.SmileyGrid", "get emoji list by group id[%s] fail, new one", arrayOfObject);
            this.flN = new ArrayList();
          }
          super.notifyDataSetChanged();
          return;
        }
        if (SmileyGrid.a(this.flM) != 25)
          continue;
        this.flN = ((ArrayList)com.tencent.mm.pluginsdk.h.apj().KZ());
        if (this.flN == null)
        {
          aa.w("MicroMsg.SmileyGrid", "get all custom emoji list fail, new one");
          this.flN = new ArrayList();
          continue;
        }
      }
      finally
      {
      }
      this.flN.add(0, new y());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.am
 * JD-Core Version:    0.6.2
 */