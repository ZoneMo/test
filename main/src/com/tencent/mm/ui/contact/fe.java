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
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MaskLayout;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class fe extends bc
{
  private String cIs = "";
  protected List cKz = null;
  private int dKE = 0;
  protected String dKG = null;
  private int[] dKH;
  private String[] dKI;
  protected String gRX = null;
  private int gVA = 0;
  private List gVL = new ArrayList();
  private int[] gVw;
  private ColorStateList gVx;
  private ColorStateList gVy;
  private String gVz = "";

  public fe(Context paramContext, String paramString)
  {
    super(paramContext, new i());
    this.dKG = paramString;
    this.gRX = "";
    this.gVx = a.j(paramContext, 2131493120);
    this.gVy = a.j(paramContext, 2131493122);
  }

  private int a(int paramInt, i parami)
  {
    if (paramInt < this.gVA)
      return 0;
    if ((paramInt >= this.gVA) && (paramInt < this.dKE + this.gVA))
      return 1;
    return parami.rl();
  }

  private boolean aKn()
  {
    return (this.dKG.equals("@micromsg.qq.com")) || (this.dKG.equals("@all.contact.without.chatroom"));
  }

  private String b(int paramInt, i parami)
  {
    int i = 32;
    if (paramInt < this.gVA)
      return this.context.getString(2131166201);
    if (paramInt < this.gVA + this.dKE)
      return this.context.getString(2131166196);
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
          break label336;
      }
      int j;
      for (i = (char)(i - 32); ; j = 123)
        label336: 
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

  public final void FZ()
  {
    int i = 0;
    List localList = this.gVL;
    int j;
    if ((this.cIs == null) || (this.cIs.length() <= 0))
    {
      setCursor(be.uz().su().a(this.dKG, this.gRX, this.cKz, aKn(), localList));
      this.gVA = localList.size();
      if (aKn())
        this.dKE = be.uz().su().c(this.cKz, true);
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.cIs);
      this.dKI = w.a(this.dKG, this.gRX, this.cIs, this.cKz);
      this.gVw = null;
      if (this.dKH == null)
        break label341;
      aa.d("MicroMsg.VoipAddressAdapter", "reset : showSection = " + this.dKI.length + " secPos = " + this.dKH.length + " count = " + getCount());
      if (getCount() <= 0)
        break label324;
      j = getCount();
      label209: this.gVw = new int[j];
    }
    while (true)
    {
      if (i >= this.dKH.length)
        break label341;
      if (i < -1 + this.dKH.length);
      for (int k = this.dKH[(i + 1)]; ; k = j)
      {
        for (int m = this.dKH[i]; m < k; m++)
          this.gVw[m] = i;
        setCursor(be.uz().su().d(this.cIs, this.dKG, this.gRX, this.cKz));
        this.gVA = 0;
        if (!aKn())
          break;
        this.dKE = 0;
        break;
        label324: j = 0;
        break label209;
      }
      i++;
    }
    label341: if (this.gmO != null)
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
    aa.v("MicroMsg.VoipAddressAdapter", "getSections");
    return this.dKI;
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

  public final int aLa()
  {
    return this.gVA;
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
    ff localff1;
    i locali1;
    int i;
    label130: i locali2;
    label180: ColorStateList localColorStateList;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903225, null);
      ff localff2 = new ff();
      localff2.cMT = ((TextView)paramView.findViewById(2131361912));
      localff2.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localff2.cMU = ((TextView)paramView.findViewById(2131361923));
      localff2.cMW = ((CheckBox)paramView.findViewById(2131361920));
      localff2.dKL = ((TextView)paramView.findViewById(2131361924));
      paramView.setTag(localff2);
      localff1 = localff2;
      locali1 = (i)getItem(paramInt - 1);
      if (locali1 != null)
        break label310;
      i = -1;
      locali2 = (i)getItem(paramInt);
      if (paramInt != 0)
        break label324;
      localff1.cMT.setVisibility(0);
      localff1.cMT.setText(b(paramInt, locali2));
      localff1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      TextView localTextView1 = localff1.cMU;
      if (w.db(locali2.getUsername()))
        break label392;
      localColorStateList = this.gVx;
      label204: localTextView1.setTextColor(localColorStateList);
      localff1.cMW.setVisibility(8);
      if (!this.dKG.equals("@domain.android"))
        break label401;
      localff1.cTU.setVisibility(8);
      localff1.dKL.setText(locali2.getUsername());
    }
    while (true)
    {
      TextView localTextView2 = localff1.cMU;
      localTextView2.setText(com.tencent.mm.ao.b.g(this.context, locali2.rr(), (int)localff1.cMU.getTextSize()));
      return paramView;
      localff1 = (ff)paramView.getTag();
      break;
      label310: i = a(paramInt - 1, locali1);
      break label130;
      label324: if ((paramInt > 0) && (a(paramInt, locali2) != i))
      {
        localff1.cMT.setVisibility(0);
        localff1.cMT.setText(b(paramInt, locali2));
        localff1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        break label180;
      }
      localff1.cMT.setVisibility(8);
      break label180;
      label392: localColorStateList = this.gVy;
      break label204;
      label401: c.a((ImageView)localff1.cTU.getContentView(), locali2.getUsername());
      localff1.dKL.setVisibility(8);
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fe
 * JD-Core Version:    0.6.2
 */