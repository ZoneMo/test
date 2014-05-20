package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class en extends bc
{
  private String cIs = "";
  protected List cKz = null;
  private List dKF;
  protected String dKG = null;
  private int[] dKH;
  private String[] dKI;
  protected String gRX = null;
  private int gRZ = 0;
  private int gVA = 0;
  private int[] gVw;
  private ColorStateList gVx;
  private ColorStateList gVy;
  private String gVz = "";

  public en(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, new i());
    this.dKG = paramString1;
    this.gRX = paramString2;
    this.gVz = paramString3;
    this.dKF = new LinkedList();
    this.gVx = a.j(paramContext, 2131493120);
    this.gVy = a.j(paramContext, 2131493122);
  }

  private List VJ()
  {
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = this.dKF.iterator();
    while (localIterator1.hasNext())
    {
      eo localeo = (eo)localIterator1.next();
      aa.d("MicroMsg.SnsAddressAdapter", "selectedContact.userName" + localeo.bPx);
      if (w.cr(localeo.bPx))
      {
        List localList = r.ch(localeo.bPx);
        if (localList != null)
        {
          Iterator localIterator2 = localList.iterator();
          while (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            if (!localHashSet.contains(str))
            {
              localLinkedList.add(str);
              localHashSet.add(str);
            }
          }
        }
      }
      else if (!localHashSet.contains(localeo.bPx))
      {
        localLinkedList.add(localeo.bPx);
        localHashSet.add(localeo.bPx);
      }
    }
    return localLinkedList;
  }

  private int a(int paramInt, i parami)
  {
    if (paramInt < this.gVA)
      return 0;
    return parami.rl();
  }

  private String b(int paramInt, i parami)
  {
    int i = 32;
    if (paramInt < this.gVA)
      return this.context.getString(2131166201);
    if (parami.rl() == 123)
      return "#";
    if (parami.rl() == 33)
      return this.context.getString(2131165857);
    if (parami.rl() == 43)
      return this.context.getString(2131167554);
    if (parami.rl() == i)
    {
      if ((parami.rv() != null) && (!parami.rv().equals("")))
      {
        i = parami.rv().charAt(0);
        if ((i < 97) || (i > 122))
          break label313;
      }
      int j;
      for (i = (char)(i - 32); ; j = 123)
        label313: 
        do
        {
          return String.valueOf(i);
          if ((parami.rw() != null) && (!parami.rw().equals("")))
          {
            j = parami.rw().charAt(0);
            break;
          }
          if ((parami.rn() != null) && (!parami.rn().equals("")))
          {
            j = parami.rn().charAt(0);
            break;
          }
          if ((parami.ro() != null) && (!parami.ro().equals("")))
          {
            j = parami.ro().charAt(0);
            break;
          }
          if ((parami.kn() != null) && (!parami.kn().equals("")) && (isLetter(parami.kn().charAt(0))))
          {
            j = parami.kn().charAt(0);
            break;
          }
          if ((parami.getUsername() == null) || (parami.getUsername().equals("")) || (!isLetter(parami.getUsername().charAt(0))))
            break;
          j = parami.getUsername().charAt(0);
          break;
        }
        while ((j == 64) || ((j >= 65) && (j <= 90)));
    }
    return String.valueOf((char)parami.rl());
  }

  private static boolean isLetter(char paramChar)
  {
    return ((paramChar >= 'A') && (paramChar <= 'Z')) || ((paramChar >= 'a') && (paramChar <= 'z'));
  }

  private boolean wP(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return true;
    if (w.g(VJ()))
    {
      Iterator localIterator = this.dKF.iterator();
      boolean bool = localIterator.hasNext();
      eo localeo = null;
      if (bool)
        localeo = (eo)localIterator.next();
      if (localeo != null)
      {
        Context localContext1 = this.context;
        Context localContext2 = this.context;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = be.uz().su().tO(localeo.bPx).rr();
        h.p(localContext1, localContext2.getString(2131165296, arrayOfObject), this.context.getString(2131167675));
      }
      return false;
    }
    if ((v.cm(paramString)) && (this.dKF.size() == 0))
    {
      h.c(this.context, 2131166735, 2131167675);
      return false;
    }
    if ((VJ().size() > 0) && (!w.co(paramString)) && (!w.cr(paramString)))
    {
      h.p(this.context, this.context.getString(2131167605), this.context.getString(2131167675));
      return false;
    }
    return true;
  }

  private eo wU(String paramString)
  {
    Object localObject1 = null;
    Iterator localIterator = this.dKF.iterator();
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (eo)localIterator.next();
      if (!((eo)localObject2).bPx.equals(paramString))
        break label52;
    }
    while (true)
    {
      localObject1 = localObject2;
      break;
      return localObject1;
      label52: localObject2 = localObject1;
    }
  }

  public final void FZ()
  {
    int i = 0;
    List localList = cj.c(this.gVz.split(";"));
    int j;
    if ((this.cIs == null) || (this.cIs.length() <= 0))
    {
      setCursor(be.uz().su().a(this.dKG, this.gRX, this.cKz, localList));
      this.gVA = localList.size();
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.cIs);
      this.dKI = w.a(this.dKG, this.gRX, this.cIs, this.cKz);
      this.gVw = null;
      if (this.dKH == null)
        break label312;
      aa.d("MicroMsg.SnsAddressAdapter", "reset : showSection = " + this.dKI.length + " secPos = " + this.dKH.length + " count = " + getCount());
      if (getCount() <= 0)
        break label295;
      j = getCount();
      label192: this.gVw = new int[j];
    }
    while (true)
    {
      if (i >= this.dKH.length)
        break label312;
      if (i < -1 + this.dKH.length);
      for (int k = this.dKH[(i + 1)]; ; k = j)
      {
        for (int m = this.dKH[i]; m < k; m++)
          this.gVw[m] = i;
        setCursor(be.uz().su().d(this.cIs, this.dKG, this.gRX, this.cKz));
        this.gVA = 0;
        break;
        label295: j = 0;
        break label192;
      }
      i++;
    }
    label312: if (this.gmO != null)
      this.gmO.FW();
    notifyDataSetChanged();
  }

  protected final void Ga()
  {
    closeCursor();
    FZ();
  }

  public final String[] VG()
  {
    aa.v("MicroMsg.SnsAddressAdapter", "getSections");
    return this.dKI;
  }

  public final int VL()
  {
    if (this.dKF != null)
      return this.dKF.size();
    return 0;
  }

  public final void aB(List paramList)
  {
    if (paramList == null)
      paramList = new LinkedList();
    this.cKz = paramList;
    this.cKz.add(v.th());
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (localca != null)
      this.cKz.add(localca.getName());
    Iterator localIterator = w.tL().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.cKz.add(str);
    }
    ca(null);
  }

  public final void aD(List paramList)
  {
    this.dKF.clear();
    i locali = v.tJ();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.equals(locali.getUsername()))
        this.dKF.add(new eo(locali.getUsername()));
      else
        this.dKF.add(new eo(str));
    }
    ca(null);
  }

  public final boolean aKU()
  {
    return this.dKF.size() > 0;
  }

  public final List aKV()
  {
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    localHashSet.add(v.th());
    for (int i = 0; i < this.gRZ; i++)
      localHashSet.add(((eo)this.dKF.get(i)).bPx);
    for (int j = this.gRZ; j < this.dKF.size(); j++)
    {
      String str1 = ((eo)this.dKF.get(j)).bPx;
      if (w.cr(str1))
      {
        List localList = r.ch(str1);
        if (localList != null)
        {
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            String str2 = (String)localIterator.next();
            if (!localHashSet.contains(str2))
            {
              localLinkedList.add(str2);
              localHashSet.add(str2);
            }
          }
        }
      }
      else if (!localHashSet.contains(str1))
      {
        localLinkedList.add(str1);
        localHashSet.add(str1);
      }
    }
    return localLinkedList;
  }

  public final List aKZ()
  {
    return this.dKF;
  }

  public final int aLa()
  {
    return this.gVA;
  }

  public final void gW(int paramInt)
  {
    i locali = (i)getItem(paramInt);
    eo localeo = wU(locali.getUsername());
    if (localeo == null)
    {
      String str = locali.getUsername();
      locali.rr();
      if (!wP(str))
        return;
      this.dKF.add(new eo(locali.getUsername()));
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      this.dKF.remove(localeo);
    }
  }

  public final int getCount()
  {
    return getCursor().getCount();
  }

  public final int getPositionForSection(int paramInt)
  {
    if ((this.dKH != null) && (paramInt >= 0) && (paramInt < this.dKH.length))
      paramInt = this.dKH[paramInt];
    return paramInt + this.gVA;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ep localep1;
    i locali1;
    int i;
    label130: i locali2;
    label180: ColorStateList localColorStateList;
    label204: boolean bool;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903225, null);
      ep localep2 = new ep();
      localep2.cMT = ((TextView)paramView.findViewById(2131361912));
      localep2.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localep2.cMU = ((TextView)paramView.findViewById(2131361923));
      localep2.cMW = ((CheckBox)paramView.findViewById(2131361920));
      localep2.dKL = ((TextView)paramView.findViewById(2131361924));
      paramView.setTag(localep2);
      localep1 = localep2;
      locali1 = (i)getItem(paramInt - 1);
      if (locali1 != null)
        break label338;
      i = -1;
      locali2 = (i)getItem(paramInt);
      if (paramInt != 0)
        break label352;
      localep1.cMT.setVisibility(0);
      localep1.cMT.setText(b(paramInt, locali2));
      localep1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      TextView localTextView1 = localep1.cMU;
      if (w.db(locali2.getUsername()))
        break label420;
      localColorStateList = this.gVx;
      localTextView1.setTextColor(localColorStateList);
      localep1.cMW.setVisibility(0);
      CheckBox localCheckBox = localep1.cMW;
      if (wU(locali2.getUsername()) == null)
        break label429;
      bool = true;
      label242: localCheckBox.setChecked(bool);
      if (!this.dKG.equals("@domain.android"))
        break label435;
      localep1.cTU.setVisibility(8);
      localep1.dKL.setText(locali2.getUsername());
    }
    while (true)
    {
      TextView localTextView2 = localep1.cMU;
      localTextView2.setText(com.tencent.mm.ao.b.g(this.context, locali2.rr(), (int)localep1.cMU.getTextSize()));
      return paramView;
      localep1 = (ep)paramView.getTag();
      break;
      label338: i = a(paramInt - 1, locali1);
      break label130;
      label352: if ((paramInt > 0) && (a(paramInt, locali2) != i))
      {
        localep1.cMT.setVisibility(0);
        localep1.cMT.setText(b(paramInt, locali2));
        localep1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        break label180;
      }
      localep1.cMT.setVisibility(8);
      break label180;
      label420: localColorStateList = this.gVy;
      break label204;
      label429: bool = false;
      break label242;
      label435: c.f((ImageView)localep1.cTU.getContentView(), locali2.getUsername());
      localep1.dKL.setVisibility(8);
    }
  }

  public final void ih(String paramString)
  {
    String str = paramString.trim();
    if (str.startsWith("@"))
      if ((this.dKG == null) || (this.dKG.length() <= 0))
        break label78;
    label78: for (str = str.substring(1) + "%" + this.dKG; ; str = str.substring(1) + "%@t.qq.com")
    {
      this.cIs = str;
      closeCursor();
      FZ();
      return;
    }
  }

  public final boolean nJ(int paramInt)
  {
    return wU(((i)getItem(paramInt)).getUsername()) != null;
  }

  public final void wN(String paramString)
  {
    i locali = be.uz().su().tO(paramString);
    eo localeo;
    if (locali != null)
    {
      localeo = wU(locali.getUsername());
      if (localeo != null)
        break label74;
      String str = locali.getUsername();
      locali.rr();
      if (wP(str))
        this.dKF.add(new eo(locali.getUsername()));
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      label74: this.dKF.remove(localeo);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.en
 * JD-Core Version:    0.6.2
 */