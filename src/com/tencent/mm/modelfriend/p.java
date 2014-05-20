package com.tencent.mm.modelfriend;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.protocal.a.mx;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.applet.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class p extends BaseAdapter
{
  private int bLY = 1;
  private Context context;
  private LinkedList cqI = new LinkedList();
  private LinkedList cqJ = new LinkedList();
  private List cqK;
  private List cqL = new LinkedList();
  private int[] cqM;
  private v cqN;
  private b cqO = new b(new q(this));
  private com.tencent.mm.ui.applet.f cqP = null;

  public p(Context paramContext, v paramv, int paramInt)
  {
    this.context = paramContext;
    this.bLY = paramInt;
    this.cqN = paramv;
    this.cqM = new int[this.cqI.size()];
  }

  private void a(mx parammx, String[] paramArrayOfString)
  {
    Iterator localIterator = this.cqJ.iterator();
    while (localIterator.hasNext())
    {
      mx localmx = (mx)localIterator.next();
      if ((localmx.fNk != null) && (parammx.fNk != null) && (localmx.fNk.equals(parammx.fNk)))
      {
        aa.d("MicroMsg.FriendAdapter", "tigerreg mobile already added");
        return;
      }
    }
    this.cqJ.add(parammx);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramArrayOfString[2];
    arrayOfString[1] = paramArrayOfString[1];
    this.cqL.add(arrayOfString);
  }

  public final void W(boolean paramBoolean)
  {
    if (this.bLY == 1)
    {
      int k = 0;
      if (k < this.cqM.length)
      {
        int[] arrayOfInt2 = this.cqM;
        if (paramBoolean);
        for (int m = 1; ; m = 0)
        {
          arrayOfInt2[k] = m;
          k++;
          break;
        }
      }
    }
    else if (this.bLY == 2)
    {
      int i = 0;
      if (i < this.cqM.length)
      {
        int[] arrayOfInt1 = this.cqM;
        if (paramBoolean);
        for (int j = 2; ; j = 0)
        {
          arrayOfInt1[i] = j;
          i++;
          break;
        }
      }
    }
    notifyDataSetChanged();
  }

  public final void b(LinkedList paramLinkedList)
  {
    if (paramLinkedList != null)
    {
      this.cqJ.clear();
      this.cqI.clear();
      this.cqL.clear();
      Iterator localIterator1 = this.cqK.iterator();
      while (localIterator1.hasNext())
      {
        String[] arrayOfString = (String[])localIterator1.next();
        Iterator localIterator2 = paramLinkedList.iterator();
        while (localIterator2.hasNext())
        {
          mx localmx = (mx)localIterator2.next();
          if (this.bLY == 1)
          {
            if (((localmx.fzr == 1) || (localmx.fzr == 0)) && (!cj.hX(arrayOfString[2])) && (localmx.fNk.equals(com.tencent.mm.a.f.h(arrayOfString[2].getBytes()))))
              a(localmx, arrayOfString);
          }
          else if ((this.bLY == 2) && (localmx.fzr == 2) && (!cj.hX(arrayOfString[2])) && (localmx.fNk.equals(com.tencent.mm.a.f.h(arrayOfString[2].getBytes()))))
            a(localmx, arrayOfString);
        }
      }
    }
    this.cqM = new int[this.cqJ.size()];
    this.cqI.addAll(this.cqJ);
    this.cqJ.clear();
  }

  public final void db(int paramInt)
  {
    if (this.bLY == 1)
      this.cqM[paramInt] = 1;
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (this.bLY == 2)
        this.cqM[paramInt] = 2;
    }
  }

  public final void dc(int paramInt)
  {
    if (this.bLY == 1)
      this.cqM[paramInt] = 0;
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (this.bLY == 2)
        this.cqM[paramInt] = 0;
    }
  }

  public final mx dd(int paramInt)
  {
    return (mx)this.cqI.get(paramInt);
  }

  public final void detach()
  {
    if (this.cqO != null)
    {
      this.cqO.detach();
      this.cqO = null;
    }
  }

  public final void fy(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.cqL.size(); i++)
      if (this.cqM[i] == 2)
        localArrayList.add(((String[])this.cqL.get(i))[0]);
    ar localar = new ar(paramString, localArrayList);
    be.uA().d(localar);
  }

  public final int getCount()
  {
    return this.cqI.size();
  }

  public final long getItemId(int paramInt)
  {
    return ((mx)this.cqI.get(paramInt)).hashCode();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.bLY == 1)
    {
      if (this.cqP == null)
        this.cqP = new r(this);
      if (this.cqO != null)
        this.cqO.a(paramInt, this.cqP);
    }
    mx localmx = (mx)this.cqI.get(paramInt);
    w localw;
    if (paramView == null)
    {
      localw = new w();
      if (this.bLY == 1)
      {
        paramView = View.inflate(this.context, k.aUk, null);
        localw.cqT = ((TextView)paramView.findViewById(i.aBN));
        localw.cqU = ((TextView)paramView.findViewById(i.aBG));
        localw.cqV = ((Button)paramView.findViewById(i.aBH));
        localw.cqW = ((Button)paramView.findViewById(i.aBJ));
        localw.cqS = ((ImageView)paramView.findViewById(i.atM));
        localw.cqX = ((TextView)paramView.findViewById(i.aBO));
        localw.cqY = ((TextView)paramView.findViewById(i.aBP));
        paramView.setTag(localw);
        localw.cqY.setOnClickListener(new s(this, paramInt));
        if (this.bLY != 1)
          break label516;
        if (cj.hX(((String[])this.cqL.get(paramInt))[1]))
          break label473;
        localw.cqT.setText(((String[])this.cqL.get(paramInt))[1]);
        label272: localw.cqV.setOnClickListener(new t(this, paramInt));
        c.a(localw.cqS, localmx.eBo);
        label302: switch (this.cqM[paramInt])
        {
        default:
        case 1:
        case 3:
        case 2:
        case 0:
        }
      }
    }
    label473: 
    do
    {
      return paramView;
      if (this.bLY != 2)
        break;
      paramView = View.inflate(this.context, k.aUl, null);
      localw.cqT = ((TextView)paramView.findViewById(i.aBN));
      localw.cqU = ((TextView)paramView.findViewById(i.aBG));
      localw.cqV = ((Button)paramView.findViewById(i.aBH));
      localw.cqW = ((Button)paramView.findViewById(i.aBJ));
      localw.cqX = ((TextView)paramView.findViewById(i.aBO));
      localw.cqY = ((TextView)paramView.findViewById(i.aBP));
      paramView.setTag(localw);
      break;
      localw = (w)paramView.getTag();
      break;
      if (cj.hX(localmx.fDe))
      {
        localw.cqT.setText(localmx.eBo);
        break label272;
      }
      localw.cqT.setText(localmx.fDe);
      break label272;
      if (this.bLY != 2)
        break label302;
      localw.cqT.setText(((String[])this.cqL.get(paramInt))[1]);
      localw.cqW.setOnClickListener(new u(this, paramInt));
      break label302;
      localw.cqV.setVisibility(8);
      localw.cqU.setVisibility(0);
      localw.cqX.setVisibility(0);
      localw.cqY.setVisibility(0);
      return paramView;
      localw.cqV.setVisibility(8);
      localw.cqU.setVisibility(0);
      localw.cqX.setVisibility(0);
      localw.cqY.setVisibility(0);
      return paramView;
      localw.cqV.setVisibility(8);
      localw.cqW.setVisibility(8);
      localw.cqU.setVisibility(0);
      localw.cqX.setVisibility(0);
      localw.cqY.setVisibility(0);
      return paramView;
      if (this.bLY == 1)
      {
        localw.cqU.setVisibility(8);
        localw.cqV.setVisibility(0);
        localw.cqW.setVisibility(8);
        localw.cqX.setVisibility(8);
        localw.cqY.setVisibility(8);
        return paramView;
      }
    }
    while (this.bLY != 2);
    label516: localw.cqU.setVisibility(8);
    localw.cqV.setVisibility(8);
    localw.cqW.setVisibility(0);
    localw.cqX.setVisibility(8);
    localw.cqY.setVisibility(8);
    return paramView;
  }

  public final void l(List paramList)
  {
    this.cqK = paramList;
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    if (this.cqN != null)
      this.cqN.notifyDataSetChanged();
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.cqO != null)
      this.cqO.onTouchEvent(paramMotionEvent);
  }

  public final int zi()
  {
    int i = 0;
    int[] arrayOfInt = this.cqM;
    int j = arrayOfInt.length;
    int k = 0;
    if (k < j)
    {
      int m = arrayOfInt[k];
      if (this.bLY == 1)
        if (m == 1)
          i++;
      while (true)
      {
        k++;
        break;
        if ((this.bLY == 2) && (m == 2))
          i++;
      }
    }
    return i;
  }

  public final boolean zj()
  {
    if ((this.cqM == null) || (this.cqM.length == 0));
    int i;
    int j;
    do
    {
      return false;
      i = 0;
      if (i >= this.cqM.length)
        break label67;
      j = this.cqM[i];
      if (this.bLY != 1)
        break;
    }
    while (j == 0);
    while ((this.bLY != 2) || (j != 0))
    {
      i++;
      break;
    }
    return false;
    label67: return true;
  }

  public final void zk()
  {
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    for (int i = 0; i < this.cqI.size(); i++)
      if (this.cqM[i] == 1)
      {
        localLinkedList1.add(((mx)this.cqI.get(i)).eBo);
        localLinkedList2.add(Integer.valueOf(52));
      }
    j localj = new j(2, localLinkedList1, localLinkedList2, "", "");
    be.uA().d(localj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.p
 * JD-Core Version:    0.6.2
 */