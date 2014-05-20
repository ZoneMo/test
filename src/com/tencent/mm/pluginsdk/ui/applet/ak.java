package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.protocal.a.wq;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.NoMeasuredTextView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@Deprecated
public final class ak extends BaseAdapter
{
  private boolean bOk;
  private com.tencent.mm.storage.b cWL;
  private List dxK = new ArrayList();
  private LinkedList eMK;
  private ArrayList fnZ = new ArrayList();
  private boolean foa;
  private List fob = new ArrayList();
  private Set foc = new HashSet();
  private int fod = 0;
  private int foe = 0;
  public boolean fog = false;
  public boolean foh = false;
  private boolean foi = true;
  private boolean foj = false;
  private int fok = 12;
  private boolean fol = false;
  private String fon;
  private boolean fos = false;
  private boolean fot = true;
  private Context mContext;
  private String username;

  public ak(Context paramContext)
  {
    this.mContext = paramContext;
    this.foa = false;
  }

  private void a(View paramView, String paramString)
  {
    if ((this.eMK != null) && (!this.eMK.isEmpty()))
    {
      Iterator localIterator = this.eMK.iterator();
      while (localIterator.hasNext())
        if (paramString.equals(((wq)localIterator.next()).eBo))
        {
          paramView.setVisibility(0);
          return;
        }
    }
    if ((this.fol) && (this.fon != null) && (!cj.hX(this.fon)) && (this.fon.equals(paramString)))
    {
      paramView.setBackgroundResource(com.tencent.mm.h.adC);
      paramView.setVisibility(0);
      return;
    }
    paramView.setVisibility(8);
  }

  private void arZ()
  {
    if (this.fnZ == null)
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.fnZ.size());
    aa.e("MicroMsg.RoomInfoAdapter", "initData memberContactList.size %d", arrayOfObject);
    this.foc.clear();
    this.fob.clear();
    if (this.fnZ.size() > 0)
    {
      Iterator localIterator = this.fnZ.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.mm.storage.i locali = (com.tencent.mm.storage.i)localIterator.next();
        this.fob.add(locali);
        this.foc.add(locali.getUsername());
      }
    }
    this.foe = this.fob.size();
  }

  public final boolean asa()
  {
    return this.foa;
  }

  public final boolean asc()
  {
    return this.fod > this.fok;
  }

  public final int getCount()
  {
    if (this.foj)
      return Math.min(this.fok, this.fod);
    return this.fod;
  }

  public final Object getItem(int paramInt)
  {
    if (paramInt < this.foe)
      return this.fob.get(paramInt);
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aa.v("MicroMsg.RoomInfoAdapter", "postiion " + paramInt);
    long l1 = System.currentTimeMillis();
    int i;
    com.tencent.mm.storage.i locali1;
    if (paramInt < this.foe)
    {
      com.tencent.mm.storage.i locali3 = (com.tencent.mm.storage.i)getItem(paramInt);
      i = 0;
      locali1 = locali3;
    }
    while (true)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = paramView;
      aa.f("MicroMsg.RoomInfoAdapter", "getView position %s, convertView %s", arrayOfObject1);
      al localal2;
      label195: String str1;
      String str2;
      label297: com.tencent.mm.storage.i locali2;
      if (paramView == null)
      {
        al localal1 = new al(this);
        paramView = View.inflate(this.mContext, com.tencent.mm.k.aYJ, null);
        localal1.cMS = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHJ));
        localal1.fou = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHD));
        localal1.foP = ((NoMeasuredTextView)paramView.findViewById(com.tencent.mm.i.aHF));
        localal1.foQ = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHE));
        localal1.cMS.setScaleType(ImageView.ScaleType.FIT_XY);
        localal1.cMS.setDrawingCacheEnabled(false);
        paramView.setTag(localal1);
        localal2 = localal1;
        long l2 = System.currentTimeMillis() - l1;
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = Integer.valueOf(paramInt);
        arrayOfObject2[1] = Integer.valueOf(i);
        arrayOfObject2[2] = Long.valueOf(l2);
        aa.f("MicroMsg.RoomInfoAdapter", "getView position %s, viewType %s, spent3 %s", arrayOfObject2);
        if (i != 0)
          break label653;
        localal2.cMS.setVisibility(0);
        localal2.foP.setVisibility(0);
        if (!this.bOk)
          break label608;
        str1 = locali1.getUsername();
        if (this.cWL != null)
          break label568;
        str2 = null;
        if (cj.hX(str2))
        {
          str2 = locali1.getUsername();
          locali2 = be.uz().su().tO(str2);
          if (str2 != null)
            break label598;
        }
        label330: localal2.foP.setText(com.tencent.mm.ao.b.g(this.mContext, str2, (int)localal2.foP.getTextSize()));
        label356: localal2.cMS.setBackgroundResource(com.tencent.mm.h.adJ);
        c.a(localal2.cMS, locali1.getUsername());
        if (!this.foa)
          break label640;
        localal2.fou.setVisibility(0);
        label396: long l3 = System.currentTimeMillis() - l1;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(paramInt);
        arrayOfObject3[1] = Long.valueOf(l3);
        aa.f("MicroMsg.RoomInfoAdapter", "getView position %s, spent2 %s", arrayOfObject3);
        if (locali1 == null)
          break label901;
        a(localal2.foQ, locali1.getUsername());
      }
      while (true)
      {
        localal2.dws = i;
        long l4 = System.currentTimeMillis() - l1;
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        arrayOfObject4[1] = Long.valueOf(l4);
        aa.f("MicroMsg.RoomInfoAdapter", "getView position %s, spent %s", arrayOfObject4);
        return paramView;
        if ((paramInt == this.foe) && (this.foh))
        {
          i = 3;
          locali1 = null;
          break;
        }
        if ((paramInt != 1 + this.foe) || (!this.fog))
          break label914;
        i = 4;
        locali1 = null;
        break;
        localal2 = (al)paramView.getTag();
        break label195;
        label568: if (!this.cWL.aAk())
        {
          str2 = null;
          break label297;
        }
        str2 = this.cWL.cu(str1);
        break label297;
        label598: str2 = locali2.rr();
        break label330;
        label608: localal2.foP.setText(com.tencent.mm.ao.b.g(this.mContext, locali1.rr(), (int)localal2.foP.getTextSize()));
        break label356;
        label640: localal2.fou.setVisibility(8);
        break label396;
        label653: if (i == 3)
        {
          localal2.foP.setVisibility(4);
          localal2.fou.setVisibility(8);
          if (this.foa)
          {
            localal2.cMS.setImageResource(com.tencent.mm.h.afS);
            localal2.cMS.setBackgroundResource(com.tencent.mm.h.afS);
            break label396;
          }
          localal2.cMS.setVisibility(0);
          localal2.cMS.setImageResource(com.tencent.mm.h.acr);
          localal2.cMS.setBackgroundResource(com.tencent.mm.h.afS);
          break label396;
        }
        if (i == 4)
        {
          localal2.foP.setVisibility(4);
          localal2.fou.setVisibility(8);
          if ((this.foa) || (this.foe == 0))
          {
            localal2.cMS.setImageResource(com.tencent.mm.h.afS);
            localal2.cMS.setBackgroundResource(com.tencent.mm.h.afS);
            break label396;
          }
          localal2.cMS.setVisibility(0);
          localal2.cMS.setImageResource(com.tencent.mm.h.acs);
          localal2.cMS.setBackgroundResource(com.tencent.mm.h.afS);
          break label396;
        }
        if (i != 2)
          break label396;
        localal2.foP.setVisibility(4);
        localal2.fou.setVisibility(8);
        localal2.cMS.setVisibility(0);
        localal2.cMS.setImageResource(com.tencent.mm.h.afS);
        localal2.cMS.setBackgroundResource(com.tencent.mm.h.afS);
        break label396;
        label901: localal2.foQ.setVisibility(8);
      }
      label914: i = 2;
      locali1 = null;
    }
  }

  public final boolean km(int paramInt)
  {
    if (!this.foa)
    {
      if (paramInt < this.foe)
      {
        this.foa = true;
        notifyDataSetChanged();
      }
      return true;
    }
    return false;
  }

  public final boolean kn(int paramInt)
  {
    return (!this.foa) && (paramInt == this.foe);
  }

  public final boolean ko(int paramInt)
  {
    return (!this.foa) && (paramInt == 1 + this.foe);
  }

  public final boolean kp(int paramInt)
  {
    return paramInt < this.foe;
  }

  public final void notifyChanged()
  {
    String str1;
    if ((this.dxK != null) || (this.fnZ != null))
    {
      if ((!cj.hX(this.username)) && (com.tencent.mm.pluginsdk.h.apl() != null))
        this.eMK = com.tencent.mm.pluginsdk.h.apl().pa(this.username);
      if (!this.foi)
        break label1201;
      if (this.dxK != null)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.dxK.size());
        aa.e("MicroMsg.RoomInfoAdapter", "initData memberList.size %d", arrayOfObject1);
        this.foc.clear();
        this.fob.clear();
        if (this.dxK.size() > 0)
        {
          Iterator localIterator1 = this.dxK.iterator();
          while (localIterator1.hasNext())
          {
            String str4 = (String)localIterator1.next();
            com.tencent.mm.storage.i locali4 = be.uz().su().tO(str4);
            if ((locali4 != null) && (!cj.hX(locali4.getUsername())) && (locali4.getUsername().equals(str4)))
            {
              this.fob.add(locali4);
              this.foc.add(str4);
            }
          }
          if (this.foc.size() < this.dxK.size())
          {
            Iterator localIterator3 = this.dxK.iterator();
            while (localIterator3.hasNext())
            {
              String str3 = (String)localIterator3.next();
              if (!this.foc.contains(str3))
              {
                this.fob.add(new com.tencent.mm.storage.i(str3));
                this.foc.add(str3);
              }
            }
          }
          if (this.fos)
          {
            str1 = cj.R((String)be.uz().sr().get(2), "");
            if (!this.dxK.contains(str1))
              break label1319;
            this.foc.remove(str1);
            Iterator localIterator2 = this.fob.iterator();
            while (localIterator2.hasNext())
            {
              com.tencent.mm.storage.i locali3 = (com.tencent.mm.storage.i)localIterator2.next();
              if (str1.equals(locali3.getUsername()))
                this.fob.remove(locali3);
            }
          }
        }
      }
    }
    label896: label1319: for (int i = 0; ; i = 1)
    {
      if ((i != 0) && (this.dxK.size() == 7))
      {
        this.dxK.add(str1);
        this.foc.remove(this.dxK.remove(-1 + this.dxK.size()));
        this.dxK.remove(-1 + this.dxK.size());
        this.fob.remove(-1 + this.fob.size());
      }
      com.tencent.mm.storage.i locali1 = be.uz().su().tO(str1);
      LinkedList localLinkedList1;
      int k;
      label639: com.tencent.mm.storage.i locali2;
      if ((locali1 != null) && (!cj.hX(locali1.getUsername())) && (locali1.getUsername().equals(str1)))
      {
        this.fob.add(1, locali1);
        this.foc.add(str1);
        if ((!this.fot) || (this.fob.size() < 3))
          break label1133;
        int j = this.fob.size();
        localLinkedList1 = new LinkedList();
        k = 0;
        if (k >= j)
          break label896;
        locali2 = (com.tencent.mm.storage.i)this.fob.get(k);
        if (locali2.rl() <= 0)
          break label721;
        localLinkedList1.add(locali2.rl());
      }
      while (true)
      {
        k++;
        break label639;
        this.fob.add(1, new com.tencent.mm.storage.i(str1));
        break;
        label721: if (!cj.hX(locali2.field_conRemark))
          localLinkedList1.add(locali2.field_conRemark);
        else if (!cj.hX(locali2.field_conRemarkPYShort))
          localLinkedList1.add(locali2.field_conRemarkPYShort);
        else if (!cj.hX(locali2.field_conRemarkPYFull))
          localLinkedList1.add(locali2.field_conRemarkPYFull);
        else if (!cj.hX(locali2.field_pyInitial))
          localLinkedList1.add(locali2.field_pyInitial);
        else if (!cj.hX(locali2.field_quanPin))
          localLinkedList1.add(locali2.field_quanPin);
        else if (!cj.hX(locali2.field_nickname))
          localLinkedList1.add(locali2.field_nickname);
        else if (!cj.hX(locali2.field_username))
          localLinkedList1.add(locali2.field_username);
      }
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localLinkedList1.toString();
      aa.f("MicroMsg.RoomInfoAdapter", "klem, order list:%s", arrayOfObject2);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(this.fob.get(0));
      localArrayList.add(this.fob.get(1));
      LinkedList localLinkedList2 = new LinkedList();
      localLinkedList2.add(localLinkedList1.get(0));
      localLinkedList2.add(localLinkedList1.get(0));
      int m = this.fob.size();
      for (int n = 2; n < m; n++)
      {
        String str2 = (String)localLinkedList1.get(n);
        int i1 = localArrayList.size();
        for (int i2 = 1; (i2 < i1) && (str2.compareToIgnoreCase((String)localLinkedList2.get(i2)) >= 0); i2++);
        localLinkedList2.add(i2, str2);
        localArrayList.add(i2, this.fob.get(n));
      }
      this.fob.clear();
      this.fob = localArrayList;
      label1133: this.foe = this.fob.size();
      if (this.foe == 0)
        this.fod = 4;
      while (true)
      {
        aa.d("MicroMsg.RoomInfoAdapter", "Number Size  contactSize :" + this.foe + " realySize : " + this.fod);
        super.notifyDataSetChanged();
        return;
        label1201: arZ();
        break;
        if ((this.foh) && (this.fog))
          this.fod = (4 * (1 + (1 + this.foe) / 4));
        else if (((this.foh) && (!this.fog)) || ((!this.foh) && (this.fog)))
          this.fod = (4 * (1 + this.foe / 4));
        else if ((!this.foh) && (!this.fog))
          this.fod = (4 * (1 + (-1 + this.foe) / 4));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ak
 * JD-Core Version:    0.6.2
 */