package com.tencent.mm.ui.friend;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.modelfriend.af;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.protocal.a.gd;
import com.tencent.mm.protocal.a.pa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;

final class bc extends BaseAdapter
{
  private boolean[] cIC;
  private LinkedList che;
  private final LayoutInflater dLe;
  private LinkedList hbr;
  private boolean hbs;

  public bc(LayoutInflater paramLayoutInflater)
  {
    this.dLe = paramLayoutInflater;
  }

  public final void X(LinkedList paramLinkedList)
  {
    this.hbr = paramLinkedList;
  }

  public final void a(LinkedList paramLinkedList, int paramInt)
  {
    if (paramInt < 0)
      this.che = paramLinkedList;
    while (true)
    {
      this.cIC = new boolean[this.che.size()];
      return;
      this.che = new LinkedList();
      for (int i = 0; i < paramLinkedList.size(); i++)
        if (paramInt == ((pa)paramLinkedList.get(i)).fIE)
          this.che.add(paramLinkedList.get(i));
    }
  }

  public final String[] aLP()
  {
    int i = 0;
    boolean[] arrayOfBoolean = this.cIC;
    int j = arrayOfBoolean.length;
    int k = 0;
    int m = 0;
    while (k < j)
    {
      if (arrayOfBoolean[k] != 0)
        m++;
      k++;
    }
    String[] arrayOfString = new String[m];
    int n = 0;
    int i2;
    if (n < this.che.size())
    {
      if (this.cIC[n] == 0)
        break label110;
      i2 = i + 1;
      arrayOfString[i] = ((pa)this.che.get(n)).eBo;
    }
    label110: for (int i1 = i2; ; i1 = i)
    {
      n++;
      i = i1;
      break;
      return arrayOfString;
    }
  }

  public final void dZ(boolean paramBoolean)
  {
    this.hbs = paramBoolean;
  }

  public final void eU(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.cIC.length))
      return;
    boolean[] arrayOfBoolean = this.cIC;
    if (this.cIC[paramInt] == 0);
    for (int i = 1; ; i = 0)
    {
      arrayOfBoolean[paramInt] = i;
      super.notifyDataSetChanged();
      return;
    }
  }

  public final int getCount()
  {
    if (this.hbs)
      if (this.hbr != null);
    while (this.che == null)
    {
      return 0;
      return this.hbr.size();
    }
    return this.che.size();
  }

  public final Object getItem(int paramInt)
  {
    if (this.hbs)
      return this.hbr.get(paramInt);
    return this.che.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.hbs)
    {
      gd localgd = (gd)this.hbr.get(paramInt);
      bd localbd3;
      if ((paramView == null) || (((bd)paramView.getTag()).type != 2))
      {
        paramView = this.dLe.inflate(k.aVh, paramViewGroup, false);
        localbd3 = new bd();
        localbd3.type = 2;
        localbd3.djP = ((TextView)paramView.findViewById(i.aEJ));
        paramView.setTag(localbd3);
      }
      for (bd localbd4 = localbd3; ; localbd4 = (bd)paramView.getTag())
      {
        localbd4.djP.setText(localgd.fIF);
        return paramView;
      }
    }
    pa localpa = (pa)this.che.get(paramInt);
    bd localbd2;
    label270: String str1;
    label302: TextView localTextView2;
    String str2;
    if ((paramView == null) || (((bd)paramView.getTag()).type != 1))
    {
      paramView = this.dLe.inflate(k.aVg, paramViewGroup, false);
      bd localbd1 = new bd();
      localbd1.type = 1;
      localbd1.cMU = ((TextView)paramView.findViewById(i.axg));
      localbd1.hbt = ((TextView)paramView.findViewById(i.axe));
      localbd1.cIF = ((CheckBox)paramView.findViewById(i.axh));
      localbd1.cIE = ((TextView)paramView.findViewById(i.axd));
      paramView.setTag(localbd1);
      localbd2 = localbd1;
      if (!ax.Ap().fD(localpa.eBo))
        break label371;
      localbd2.cIE.setVisibility(0);
      TextView localTextView1 = localbd2.cMU;
      if (localpa == null)
        break label454;
      str1 = localpa.fEl;
      if ((str1 == null) || (str1.length() <= 0))
        break label384;
      localTextView1.setText(str1);
      localTextView2 = localbd2.hbt;
      if (localpa == null)
        break label566;
      if (localpa.fNb != 0)
        break label461;
      str2 = localpa.eBo;
    }
    label384: label566: 
    while (true)
    {
      localTextView2.setText(str2);
      localbd2.cIF.setChecked(this.cIC[paramInt]);
      return paramView;
      localbd2 = (bd)paramView.getTag();
      break;
      label371: localbd2.cIE.setVisibility(8);
      break label270;
      str1 = localpa.fDe;
      if ((str1 != null) && (str1.length() > 0))
        break label302;
      str1 = new j(localpa.fAX).toString();
      if ((str1 != null) && (str1.length() > 0))
        break label302;
      str1 = localpa.fBk;
      if ((str1 != null) && (str1.length() > 0))
        break label302;
      label454: str1 = "";
      break label302;
      label461: if (localpa.fNb == 2)
      {
        str2 = localpa.eBo;
      }
      else if (localpa.fNb == 1)
      {
        String str3 = localpa.eBo;
        if (!cj.hX(str3))
        {
          String[] arrayOfString = str3.split("@");
          if ((arrayOfString == null) || (arrayOfString.length < 2) || (cj.hX(arrayOfString[0])))
          {
            str2 = "";
            continue;
          }
          str2 = "@" + arrayOfString[0];
        }
      }
      else
      {
        str2 = "";
      }
    }
  }

  public final int nO(int paramInt)
  {
    if (!this.hbs)
      return 0;
    return ((gd)this.hbr.get(paramInt)).fIE;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.bc
 * JD-Core Version:    0.6.2
 */