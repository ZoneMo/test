package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.ap;
import com.tencent.mm.pluginsdk.ui.a;
import com.tencent.mm.protocal.a.wq;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class w extends BaseAdapter
{
  private boolean bOk;
  private com.tencent.mm.storage.b cWL;
  private List dxK = new ArrayList();
  private LinkedList eMK;
  private x fnY;
  private ArrayList fnZ = new ArrayList();
  private boolean foa;
  private List fob = new ArrayList();
  private Set foc = new HashSet();
  private int fod = 0;
  private int foe = 0;
  private com.tencent.mm.pluginsdk.ui.e fof;
  public boolean fog = false;
  public boolean foh = false;
  private boolean foi = true;
  private boolean foj = false;
  private int fok = 12;
  private boolean fol = false;
  private boolean fom = false;
  private String fon;
  private String foo;
  private boolean fop = false;
  private com.tencent.mm.model.b foq;
  private boolean jdField_for = true;
  private boolean fos = false;
  private boolean fot = true;
  private Context mContext;
  private String username;

  public w(Context paramContext)
  {
    this.mContext = paramContext;
    this.foa = false;
    this.foq = be.uz();
  }

  private y aa(View paramView)
  {
    y localy = new y(this);
    localy.cMS = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHJ));
    localy.fou = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHD));
    localy.cPP = ((TextView)paramView.findViewById(com.tencent.mm.i.aHF));
    localy.fov = ((TextView)paramView.findViewById(com.tencent.mm.i.aHG));
    localy.cPS = ((ImageView)paramView.findViewById(com.tencent.mm.i.aHE));
    localy.cMS.setScaleType(ImageView.ScaleType.FIT_XY);
    paramView.setTag(localy);
    return localy;
  }

  private void arW()
  {
    if (this.fnY != null)
      this.fnY.arW();
  }

  private void arZ()
  {
    if (this.fnZ == null)
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.fnZ.size());
    aa.e("MicroMsg.ContactsListArchAdapter", "initData memberContactList.size %d", arrayOfObject);
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

  public final void A(ArrayList paramArrayList)
  {
    this.foi = false;
    this.fnZ = paramArrayList;
  }

  public final void B(ArrayList paramArrayList)
  {
    A(paramArrayList);
    notifyChanged();
  }

  public final void G(List paramList)
  {
    ab(paramList);
    notifyChanged();
  }

  public final void a(x paramx)
  {
    this.fnY = paramx;
  }

  public final void a(com.tencent.mm.pluginsdk.ui.e parame)
  {
    this.fof = parame;
  }

  public final void ab(List paramList)
  {
    this.foi = true;
    this.dxK = paramList;
  }

  public final void arX()
  {
    this.fom = true;
  }

  public final void arY()
  {
    this.fot = false;
  }

  public final boolean asa()
  {
    return this.foa;
  }

  public final void asb()
  {
    this.foa = false;
    notifyChanged();
  }

  public final boolean asc()
  {
    return this.fod > this.fok;
  }

  public final void cq(boolean paramBoolean)
  {
    this.foj = paramBoolean;
  }

  public final w cr(boolean paramBoolean)
  {
    this.fog = paramBoolean;
    return this;
  }

  public final w cs(boolean paramBoolean)
  {
    this.foh = paramBoolean;
    return this;
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
    com.tencent.mm.storage.i locali;
    int i;
    if (paramInt < this.foe)
    {
      locali = (com.tencent.mm.storage.i)getItem(paramInt);
      i = 0;
    }
    while (true)
    {
      Object localObject;
      if (paramView == null)
      {
        paramView = View.inflate(this.mContext, com.tencent.mm.k.aYJ, null);
        localObject = aa(paramView);
      }
      while (true)
      {
        label44: String str2;
        String str3;
        label97: CharSequence localCharSequence;
        label132: label169: label227: ImageView localImageView;
        String str1;
        if (i == 0)
        {
          ((y)localObject).cMS.setVisibility(0);
          if (this.bOk)
          {
            str2 = locali.ru();
            if (cj.hX(str2))
            {
              str3 = locali.getUsername();
              if (this.cWL == null)
                str2 = null;
            }
            else
            {
              if (cj.hX(str2))
                str2 = locali.rq();
              localCharSequence = com.tencent.mm.ao.b.f(this.mContext, str2, (int)((y)localObject).cPP.getTextSize());
              if (!(localCharSequence instanceof SpannableString))
                break label463;
              ((y)localObject).cPP.setVisibility(8);
              ((y)localObject).fov.setVisibility(0);
              ((y)localObject).fov.setText(localCharSequence);
              com.tencent.mm.pluginsdk.ui.c.a(((y)localObject).cMS, locali.getUsername());
              a locala = (a)((y)localObject).cMS.getDrawable();
              if (this.fof != null)
                this.fof.a(locala);
              if (!this.foa)
                break label495;
              ((y)localObject).fou.setVisibility(0);
              if (locali == null)
                break label910;
              localImageView = ((y)localObject).cPS;
              str1 = locali.getUsername();
              if ((this.eMK == null) || (this.eMK.isEmpty()))
                break label794;
              Iterator localIterator = this.eMK.iterator();
              while (true)
                if (localIterator.hasNext())
                  if (str1.equals(((wq)localIterator.next()).eBo))
                  {
                    localImageView.setVisibility(0);
                    if (this.fop)
                      localImageView.setImageResource(com.tencent.mm.h.ajA);
                  }
            }
          }
        }
        y localy;
        label910: 
        while (true)
        {
          ((y)localObject).dws = i;
          return paramView;
          if ((paramInt == this.foe) && (this.foh))
          {
            i = 3;
            locali = null;
            break;
          }
          if ((paramInt != 1 + this.foe) || (!this.fog))
            break label930;
          i = 4;
          locali = null;
          break;
          localy = (y)paramView.getTag();
          if (localy != null)
            break label923;
          localObject = aa(paramView);
          break label44;
          if (!this.cWL.aAk())
          {
            str2 = null;
            break label97;
          }
          str2 = this.cWL.cu(str3);
          break label97;
          localCharSequence = com.tencent.mm.ao.b.f(this.mContext, locali.rr(), (int)((y)localObject).cPP.getTextSize());
          break label132;
          label463: ((y)localObject).cPP.setVisibility(0);
          ((y)localObject).fov.setVisibility(8);
          ((y)localObject).cPP.setText(localCharSequence);
          break label169;
          label495: ((y)localObject).fou.setVisibility(8);
          break label227;
          if (i == 3)
          {
            ((y)localObject).cPP.setVisibility(4);
            ((y)localObject).fov.setVisibility(4);
            ((y)localObject).fou.setVisibility(8);
            if (this.foa)
            {
              ((y)localObject).cMS.setImageResource(com.tencent.mm.h.afS);
              ((y)localObject).cMS.setBackgroundResource(com.tencent.mm.h.afS);
              break label227;
            }
            ((y)localObject).cMS.setVisibility(0);
            ((y)localObject).cMS.setImageResource(com.tencent.mm.h.acr);
            ((y)localObject).cMS.setBackgroundResource(com.tencent.mm.h.afS);
            break label227;
          }
          if (i == 4)
          {
            ((y)localObject).cPP.setVisibility(4);
            ((y)localObject).fov.setVisibility(4);
            ((y)localObject).fou.setVisibility(8);
            if ((this.foa) || (this.foe == 0))
            {
              ((y)localObject).cMS.setImageResource(com.tencent.mm.h.afS);
              ((y)localObject).cMS.setBackgroundResource(com.tencent.mm.h.afS);
              break label227;
            }
            ((y)localObject).cMS.setVisibility(0);
            ((y)localObject).cMS.setImageResource(com.tencent.mm.h.acs);
            ((y)localObject).cMS.setBackgroundResource(com.tencent.mm.h.afS);
            break label227;
          }
          if (i != 2)
            break label227;
          ((y)localObject).cPP.setVisibility(4);
          ((y)localObject).fov.setVisibility(4);
          ((y)localObject).fou.setVisibility(8);
          ((y)localObject).cMS.setVisibility(0);
          ((y)localObject).cMS.setImageResource(com.tencent.mm.h.afS);
          ((y)localObject).cMS.setBackgroundResource(com.tencent.mm.h.afS);
          break label227;
          localImageView.setImageResource(com.tencent.mm.h.ajc);
          continue;
          label794: if ((this.fom) && (this.foo != null) && (!cj.hX(this.foo)) && (this.foo.equals(str1)))
          {
            localImageView.setBackgroundResource(com.tencent.mm.h.adB);
            localImageView.setVisibility(0);
          }
          else if ((this.fol) && (this.fon != null) && (!cj.hX(this.fon)) && (this.fon.equals(str1)))
          {
            localImageView.setBackgroundResource(com.tencent.mm.h.adC);
            localImageView.setVisibility(0);
          }
          else
          {
            localImageView.setVisibility(8);
            continue;
            ((y)localObject).cPS.setVisibility(8);
          }
        }
        label923: localObject = localy;
      }
      label930: i = 2;
      locali = null;
    }
  }

  public final boolean km(int paramInt)
  {
    if (!this.foa)
    {
      if (paramInt < this.foe)
      {
        this.foa = true;
        arW();
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
    if ((this.dxK != null) || (this.fnZ != null))
    {
      if (!cj.hX(this.username))
      {
        if (com.tencent.mm.pluginsdk.h.apl() != null)
          this.eMK = com.tencent.mm.pluginsdk.h.apl().pa(this.username);
        if ((com.tencent.mm.pluginsdk.h.apu() == null) || (!com.tencent.mm.pluginsdk.h.apu().kn(this.username)))
          break label249;
      }
      label249: for (boolean bool = true; ; bool = false)
      {
        this.fop = bool;
        if (!this.foi)
          break label1240;
        if (this.dxK == null)
          break label1185;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.dxK.size());
        aa.e("MicroMsg.ContactsListArchAdapter", "initData memberList.size %d", arrayOfObject1);
        this.foc.clear();
        this.fob.clear();
        if (this.dxK.size() <= 0)
          break label1172;
        Iterator localIterator1 = this.dxK.iterator();
        while (localIterator1.hasNext())
        {
          String str4 = (String)localIterator1.next();
          com.tencent.mm.storage.i locali5 = this.foq.su().tO(str4);
          if ((locali5 != null) && (!cj.hX(locali5.getUsername())) && (locali5.getUsername().equals(str4)))
          {
            this.fob.add(locali5);
            this.foc.add(str4);
          }
        }
      }
      if (this.foc.size() < this.dxK.size())
      {
        Iterator localIterator4 = this.dxK.iterator();
        while (localIterator4.hasNext())
        {
          String str3 = (String)localIterator4.next();
          if (!this.foc.contains(str3))
          {
            this.fob.add(new com.tencent.mm.storage.i(str3));
            this.foc.add(str3);
          }
        }
      }
      if ((this.jdField_for) && (!cj.hX(this.fon)) && (this.dxK.contains(this.fon)))
      {
        Iterator localIterator3 = this.fob.iterator();
        while (localIterator3.hasNext())
        {
          com.tencent.mm.storage.i locali4 = (com.tencent.mm.storage.i)localIterator3.next();
          if (this.fon.equals(locali4.getUsername()))
          {
            this.fob.remove(locali4);
            this.fob.add(0, locali4);
          }
        }
      }
      if (this.fos)
      {
        String str1 = cj.R((String)this.foq.sr().get(2), "");
        if (this.dxK.contains(str1))
        {
          this.foc.remove(str1);
          Iterator localIterator2 = this.fob.iterator();
          while (localIterator2.hasNext())
          {
            com.tencent.mm.storage.i locali3 = (com.tencent.mm.storage.i)localIterator2.next();
            if (str1.equals(locali3.getUsername()))
              this.fob.remove(locali3);
          }
        }
        com.tencent.mm.storage.i locali1 = this.foq.su().tO(str1);
        LinkedList localLinkedList1;
        int j;
        label678: com.tencent.mm.storage.i locali2;
        if ((locali1 != null) && (!cj.hX(locali1.getUsername())) && (locali1.getUsername().equals(str1)))
        {
          this.fob.add(1, locali1);
          this.foc.add(str1);
          if ((!this.fot) || (this.fob.size() < 3))
            break label1172;
          int i = this.fob.size();
          localLinkedList1 = new LinkedList();
          j = 0;
          if (j >= i)
            break label935;
          locali2 = (com.tencent.mm.storage.i)this.fob.get(j);
          if (locali2.rl() <= 0)
            break label760;
          localLinkedList1.add(locali2.rl());
        }
        while (true)
        {
          j++;
          break label678;
          this.fob.add(1, new com.tencent.mm.storage.i(str1));
          break;
          label760: if (!cj.hX(locali2.field_conRemark))
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
        label935: Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localLinkedList1.toString();
        aa.f("MicroMsg.ContactsListArchAdapter", "klem, order list:%s", arrayOfObject2);
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(this.fob.get(0));
        localArrayList.add(this.fob.get(1));
        LinkedList localLinkedList2 = new LinkedList();
        localLinkedList2.add(localLinkedList1.get(0));
        localLinkedList2.add(localLinkedList1.get(0));
        int k = this.fob.size();
        for (int m = 2; m < k; m++)
        {
          String str2 = (String)localLinkedList1.get(m);
          int n = localArrayList.size();
          for (int i1 = 1; (i1 < n) && (str2.compareToIgnoreCase((String)localLinkedList2.get(i1)) >= 0); i1++);
          localLinkedList2.add(i1, str2);
          localArrayList.add(i1, this.fob.get(m));
        }
        this.fob.clear();
        this.fob = localArrayList;
      }
      label1172: this.foe = this.fob.size();
      label1185: if (this.foe != 0)
        break label1247;
      this.fod = 4;
    }
    while (true)
    {
      aa.d("MicroMsg.ContactsListArchAdapter", "Number Size  contactSize :" + this.foe + " realySize : " + this.fod);
      arW();
      return;
      label1240: arZ();
      break;
      label1247: if ((this.foh) && (this.fog))
        this.fod = (4 * (1 + (1 + this.foe) / 4));
      else if (((this.foh) && (!this.fog)) || ((!this.foh) && (this.fog)))
        this.fod = (4 * (1 + this.foe / 4));
      else if ((!this.foh) && (!this.fog))
        this.fod = (4 * (1 + (-1 + this.foe) / 4));
    }
  }

  public final void qH(String paramString)
  {
    this.fon = paramString;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
    this.bOk = com.tencent.mm.model.w.cp(paramString);
    this.cWL = this.foq.sA().ts(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.w
 * JD-Core Version:    0.6.2
 */