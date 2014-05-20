package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.h;
import com.tencent.mm.ui.base.preference.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class s
{
  private final int FN;
  private n cIG;
  private Context context;
  private String fnJ;
  private HashMap fnK = new HashMap();
  private boolean fnL = false;
  private boolean fnM;
  public w fnN;
  private aj fnO;
  private aa fnP;
  private View.OnClickListener fnQ;
  private View.OnClickListener fnR;
  private View fnS;
  private View fnT;
  private aj fnU;
  private ai fnV;
  private x fnW;

  public s(Context paramContext)
  {
    boolean bool1 = this.fnL;
    boolean bool2 = false;
    if (bool1)
      bool2 = true;
    this.fnM = bool2;
    this.fnO = null;
    this.fnP = null;
    this.fnU = new t(this);
    this.fnV = new u(this);
    this.fnW = new v(this);
    this.FN = 4;
    this.context = paramContext;
    this.fnN = new w(this.context);
    this.fnN.a(this.fnW);
  }

  private static String kk(int paramInt)
  {
    if (paramInt >= 0)
      return "pref_contact_list_row_" + paramInt;
    String str = "unkown";
    if (paramInt == -1)
      str = "header";
    while (true)
    {
      return "pref_contact_list_row_" + str;
      if (paramInt == -2)
        str = "footer";
    }
  }

  private void qG(String paramString)
  {
    this.fnN.setUsername(paramString);
    this.fnN.cq(this.fnM);
    this.fnN.notifyChanged();
    Yy();
  }

  public final void Yy()
  {
    int i = 0;
    if ((this.cIG == null) || (this.fnJ == null))
      return;
    Iterator localIterator = this.fnK.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.cIG.wo(str);
    }
    this.fnK.clear();
    int j = this.cIG.indexOf(this.fnJ);
    if (this.fnS != null);
    for (int k = 1; ; k = 0)
    {
      if ((this.fnT != null) && ((!this.fnL) || (this.fnN.asc())));
      for (int m = 1; ; m = 0)
      {
        if (k != 0)
        {
          ContactListCustomPreference localContactListCustomPreference1 = new ContactListCustomPreference(this.context);
          localContactListCustomPreference1.setKey(kk(-1));
          localContactListCustomPreference1.setCustomView(this.fnS);
          localContactListCustomPreference1.kq(h.ady);
          localContactListCustomPreference1.setOnClickListener(this.fnQ);
          this.cIG.a(localContactListCustomPreference1, j);
          this.fnK.put(localContactListCustomPreference1.getKey(), localContactListCustomPreference1);
          j++;
        }
        aj localaj;
        int n;
        label222: ContactListExpandPreference localContactListExpandPreference;
        int i1;
        if (this.fnO != null)
        {
          localaj = this.fnO;
          n = 0;
          if (i >= this.fnN.getCount())
            break label473;
          localContactListExpandPreference = new ContactListExpandPreference(this.context, 1);
          localContactListExpandPreference.setKey(kk(n));
          localContactListExpandPreference.foC.a(this.fnN, n);
          localContactListExpandPreference.foC.asf();
          localContactListExpandPreference.foC.a(this.fnV);
          localContactListExpandPreference.foC.a(localaj);
          this.cIG.a(localContactListExpandPreference, j + n);
          this.fnK.put(localContactListExpandPreference.getKey(), localContactListExpandPreference);
          i1 = h.adF;
          if ((i != 0) || (i + 4 < this.fnN.getCount()))
            break label422;
          if ((k != 0) || (m != 0))
            break label396;
          i1 = h.adG;
        }
        while (true)
        {
          localContactListExpandPreference.foC.kq(i1);
          i += 4;
          n++;
          break label222;
          localaj = this.fnU;
          break;
          label396: if (k != 0)
          {
            i1 = h.adE;
          }
          else if (m != 0)
          {
            i1 = h.adD;
            continue;
            label422: if (i == 0)
            {
              if (k == 0)
                i1 = h.adD;
              else
                i1 = h.adF;
            }
            else if ((i + 4 >= this.fnN.getCount()) && (m == 0))
              i1 = h.adE;
          }
        }
        label473: if (m == 0)
          break;
        ContactListCustomPreference localContactListCustomPreference2 = new ContactListCustomPreference(this.context);
        localContactListCustomPreference2.setKey(kk(-2));
        localContactListCustomPreference2.setCustomView(this.fnT);
        localContactListCustomPreference2.setOnClickListener(this.fnR);
        this.cIG.a(localContactListCustomPreference2, j + n);
        this.fnK.put(localContactListCustomPreference2.getKey(), localContactListCustomPreference2);
        return;
      }
    }
  }

  public final void a(aa paramaa)
  {
    this.fnP = paramaa;
  }

  public final void a(aj paramaj)
  {
    this.fnO = paramaj;
  }

  public final void a(n paramn, String paramString)
  {
    if ((paramn == null) || (paramString == null))
      return;
    this.cIG = paramn;
    this.fnJ = paramString;
    paramn.O(paramString, true);
  }

  public final void arV()
  {
    this.fnL = false;
    boolean bool1 = this.fnL;
    boolean bool2 = false;
    if (bool1)
      bool2 = true;
    this.fnM = bool2;
  }

  public final void d(String paramString, List paramList)
  {
    if (paramList == null)
      paramList = new ArrayList(0);
    this.fnN.ab(paramList);
    qG(paramString);
  }

  public final void z(ArrayList paramArrayList)
  {
    if (paramArrayList == null)
      paramArrayList = new ArrayList(0);
    this.fnN.A(paramArrayList);
    qG(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.s
 * JD-Core Version:    0.6.2
 */