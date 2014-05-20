package com.tencent.mm.ui.bindqq;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.modelfriend.at;
import com.tencent.mm.modelfriend.au;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;

final class w extends bc
{
  public w(QQGroupUI paramQQGroupUI, Context paramContext, bd parambd)
  {
    super(paramContext, new at());
    super.a(parambd);
    this.context = paramContext;
  }

  public final void FZ()
  {
    setCursor(ax.Ao().Ad());
    super.notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    at localat = (at)getItem(paramInt);
    x localx2;
    if (paramView == null)
    {
      x localx1 = new x(this);
      paramView = View.inflate(this.context, k.aXT, null);
      localx1.cqT = ((TextView)paramView.findViewById(i.aEP));
      localx1.gJD = ((TextView)paramView.findViewById(i.aER));
      paramView.setTag(localx1);
      localx2 = localx1;
      localx2.cqT.setText(localat.Ac());
      if (localat.zZ() != 0)
        break label205;
      if (localat.zY() != 0)
        break label140;
      localx2.gJD.setText(n.bts);
    }
    while (true)
    {
      localx2.gJD.setVisibility(8);
      return paramView;
      localx2 = (x)paramView.getTag();
      break;
      label140: TextView localTextView2 = localx2.gJD;
      QQGroupUI localQQGroupUI2 = this.gJB;
      int j = n.aER;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(localat.zY());
      arrayOfObject2[1] = Integer.valueOf(localat.zZ());
      localTextView2.setText(localQQGroupUI2.getString(j, arrayOfObject2));
      continue;
      label205: TextView localTextView1 = localx2.gJD;
      QQGroupUI localQQGroupUI1 = this.gJB;
      int i = n.aER;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(localat.zY());
      arrayOfObject1[1] = Integer.valueOf(localat.zZ());
      localTextView1.setText(localQQGroupUI1.getString(i, arrayOfObject1));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.w
 * JD-Core Version:    0.6.2
 */