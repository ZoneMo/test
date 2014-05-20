package com.tencent.mm.plugin.search.ui;

import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ao.d;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.u;
import com.tencent.mm.platformtools.SpellMap;
import com.tencent.mm.plugin.search.model.SearchUtils;
import com.tencent.mm.plugin.search.model.aq;
import com.tencent.mm.plugin.search.model.ar;
import com.tencent.mm.plugin.search.model.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

final class e extends BaseAdapter
{
  private static float ejd = 0.0F;
  private Dialog dDT;
  private List ehA;
  private String[] ehz;
  private SearchContactUI eiL;
  private List eiM;
  private String eiN;
  private HashMap eiO;
  private int eiP;
  private List eiQ;
  private int eiR;
  private List eiS;
  private int eiT;
  private int eiU;
  private int eiV;
  private List eiW;
  private int eiX;
  private List eiY;
  private int eiZ;
  private List eja;
  private TextPaint ejb;
  private int ejc;
  private AdapterView.OnItemClickListener eje = new j(this);
  private AdapterView.OnItemClickListener ejf = new k(this);
  private AdapterView.OnItemClickListener ejg = new l(this);
  private AdapterView.OnItemClickListener ejh = new m(this);
  private AdapterView.OnItemClickListener eji = new n(this);
  private int mCount;

  public e(SearchContactUI paramSearchContactUI)
  {
    this.eiL = paramSearchContactUI;
    this.eiM = Collections.emptyList();
    this.ehA = Collections.emptyList();
    this.ehz = new String[0];
    this.eiO = new HashMap();
    this.eiR = 2147483647;
    this.eiS = Collections.emptyList();
    this.eiT = 2147483647;
    this.eiU = 2147483647;
    this.eiV = 2147483647;
    this.eiW = Collections.emptyList();
    this.eiX = 2147483647;
    this.eiY = Collections.emptyList();
    this.eiZ = 2147483647;
    this.eja = Collections.emptyList();
    this.ejb = new TextPaint();
    this.ejb.setTextSize(this.eiL.getResources().getDimension(com.tencent.mm.g.aaO));
    this.ejc = this.eiL.getResources().getDimensionPixelSize(com.tencent.mm.g.aaO);
  }

  private q a(List paramList, int paramInt)
  {
    q localq = new q();
    if (paramInt >= paramList.size())
      return localq;
    aq localaq = (aq)paramList.get(paramInt);
    localq.ejp = localaq;
    if ((localaq.type == 131072) || (localaq.type == 131073) || (localaq.type == 131074))
    {
      localk = be.uz().su();
      locali = localk.tI(localaq.eid);
      if (locali == null)
        locali = localk.tN(localaq.eid);
      localq.username = locali.getUsername();
      a(localq, localaq, locali);
      if (localaq.type == 131074)
        localq.cnh = com.tencent.mm.p.p.eI(localq.username).field_brandIconURL;
      localq.ejo = this.ejg;
      localq.data = locali;
    }
    while ((localaq.type != 131075) && (localaq.type != 131076))
    {
      com.tencent.mm.storage.k localk;
      com.tencent.mm.storage.i locali;
      return localq;
    }
    com.tencent.mm.modelfriend.h localh = ax.Al().z(localaq.eic);
    localq.username = localh.getUsername();
    a(localq, localaq, localh);
    if (localaq.type == 131075);
    for (localq.ejo = this.eje; ; localq.ejo = this.ejf)
    {
      localq.data = localh;
      break;
    }
  }

  private CharSequence a(List paramList, String[] paramArrayOfString)
  {
    Arrays.sort(paramArrayOfString, new g(this));
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    int i = 0;
    boolean bool = false;
    Iterator localIterator = paramList.iterator();
    int j = -1;
    Object localObject1 = null;
    Object localObject2 = null;
    s locals;
    label122: int i1;
    String str;
    com.tencent.mm.storage.i locali;
    Object localObject5;
    Object localObject4;
    int k;
    if (localIterator.hasNext())
    {
      locals = (s)localIterator.next();
      if (locals.ehk == j)
        break label549;
      if (localObject1 != null)
      {
        com.tencent.mm.ao.a.a(this.eiL, (SpannableString)localObject1, this.ejc);
        if (localObject2 != null)
          localSpannableStringBuilder.append((CharSequence)localObject2).append('(').append((CharSequence)localObject1).append("), ");
      }
      else
      {
        i1 = locals.ehk;
        int i2 = locals.ehm;
        str = paramArrayOfString[i1];
        locali = be.uz().su().tO(str);
        localObject5 = com.tencent.mm.model.w.a(locali, str);
        bool = false;
        i = 0;
        switch (i2)
        {
        case 7:
        case 8:
        case 9:
        case 10:
        case 15:
        case 16:
        case 17:
        case 18:
        default:
          localObject5 = localObject2;
          localObject4 = localObject1;
          k = i1;
        case 4:
        case 12:
        case 11:
        case 5:
        case 14:
        case 13:
        case 6:
        case 19:
        }
      }
    }
    while (true)
    {
      int m = locals.ehn;
      int n = m + this.ehz[locals.ehl].length();
      if (i != 0)
      {
        a((SpannableString)localObject4, 0, locals.content.substring(m, n), bool);
        Object localObject7 = localObject5;
        j = k;
        localObject1 = localObject4;
        localObject2 = localObject7;
        break;
        localSpannableStringBuilder.append((CharSequence)localObject1).append(", ");
        break label122;
        localObject4 = new SpannableString(SearchUtils.am(str, locali.rp()));
        k = i1;
        bool = false;
        i = 0;
        continue;
        bool = true;
        i = 1;
        localObject4 = new SpannableString(locali.kn());
        k = i1;
        continue;
        bool = true;
        i = 1;
        localObject4 = new SpannableString((CharSequence)localObject5);
        k = i1;
        localObject5 = null;
        continue;
        localObject4 = new SpannableString(locals.content);
        k = i1;
        bool = false;
        i = 0;
        continue;
      }
      a((SpannableString)localObject4, m, n);
      Object localObject6 = localObject5;
      j = k;
      localObject1 = localObject4;
      localObject2 = localObject6;
      break;
      if (localObject1 != null)
      {
        com.tencent.mm.ao.a.a(this.eiL, (SpannableString)localObject1, this.ejc);
        if (localObject2 != null)
          localSpannableStringBuilder.append((CharSequence)localObject2).append('(').append((CharSequence)localObject1).append(')');
      }
      else
      {
        return localSpannableStringBuilder;
      }
      localSpannableStringBuilder.append((CharSequence)localObject1);
      return localSpannableStringBuilder;
      label549: Object localObject3 = localObject2;
      localObject4 = localObject1;
      k = j;
      localObject5 = localObject3;
    }
  }

  private void a(SpannableString paramSpannableString, int paramInt1, int paramInt2)
  {
    if (paramInt1 >= paramInt2)
      return;
    if (paramInt1 < 0)
      paramInt1 = 0;
    if (paramInt2 > paramSpannableString.length())
      paramInt2 = paramSpannableString.length();
    paramSpannableString.setSpan(new ForegroundColorSpan(this.eiL.getResources().getColor(com.tencent.mm.f.aaH)), paramInt1, paramInt2, 33);
    paramSpannableString.setSpan(new StyleSpan(1), paramInt1, paramInt2, 33);
  }

  private void a(SpannableString paramSpannableString, int paramInt, String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(16);
    String str1 = paramString.toLowerCase();
    String str2 = paramSpannableString.toString().substring(paramInt);
    Object localObject1 = localStringBuilder;
    int i = 0;
    Object localObject2;
    if (i < str2.length())
    {
      ((StringBuilder)localObject1).setLength(0);
      localObject2 = localObject1;
    }
    for (int j = i; ; j++)
    {
      if (j >= str2.length())
        break label187;
      String str3 = SpellMap.j(str2.charAt(j));
      if ((str3 == null) || (str3.length() == 0))
        break label187;
      if (paramBoolean);
      for (localObject2 = ((StringBuilder)localObject2).append(Character.toLowerCase(str3.charAt(0))); ((StringBuilder)localObject2).length() >= str1.length(); localObject2 = ((StringBuilder)localObject2).append(str3.toLowerCase()))
      {
        if (!((StringBuilder)localObject2).toString().startsWith(str1))
          break label177;
        a(paramSpannableString, i + paramInt, paramInt + (j + 1));
        return;
      }
    }
    label177: label187: for (localObject1 = localObject2; ; localObject1 = localObject2)
    {
      i++;
      break;
    }
  }

  private void a(q paramq, aq paramaq, Object paramObject)
  {
    Resources localResources = this.eiL.getResources();
    com.tencent.mm.storage.i locali;
    com.tencent.mm.modelfriend.h localh;
    label25: String str7;
    String str15;
    String[] arrayOfString2;
    if ((paramObject instanceof com.tencent.mm.storage.i))
    {
      locali = (com.tencent.mm.storage.i)paramObject;
      localh = null;
      if (locali == null)
        break label662;
      str7 = com.tencent.mm.model.w.a(locali, locali.getUsername());
      if (paramaq.type != 131073)
        break label404;
      str15 = be.uz().sA().tu(locali.getUsername());
      if (str15 != null)
        break label391;
      arrayOfString2 = null;
      label75: if ((arrayOfString2 != null) && (arrayOfString2.length > 0))
        paramq.ejr = ("(" + arrayOfString2.length + ")");
    }
    boolean bool1;
    int j;
    CharSequence localCharSequence2;
    String str8;
    label238: int k;
    CharSequence localCharSequence1;
    int m;
    Object localObject1;
    Object localObject3;
    Object localObject2;
    label259: SpannableString localSpannableString1;
    int i7;
    label286: label322: int i9;
    int i10;
    for (String[] arrayOfString1 = arrayOfString2; ; arrayOfString1 = null)
    {
      int i11 = paramaq.ehm;
      bool1 = false;
      j = 0;
      switch (i11)
      {
      case 4:
      case 5:
      case 6:
      case 11:
      case 12:
      case 13:
      case 14:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      default:
        localCharSequence2 = null;
        str8 = null;
        k = 0;
        localCharSequence1 = localCharSequence2;
        m = 0;
        localObject1 = null;
        localObject3 = str8;
        localObject2 = str7;
        if (localObject2 == null)
          break label997;
        localSpannableString1 = new SpannableString(com.tencent.mm.ao.a.ti((String)localObject2));
        if (m == 0)
          break label942;
        i7 = 0;
        if (i7 >= paramaq.eig.length)
          break label942;
        int i8 = this.ehz[i7].length();
        Iterator localIterator2 = paramaq.eig[i7].iterator();
        while (true)
        {
          if (!localIterator2.hasNext())
            break label936;
          i9 = ((ar)localIterator2.next()).ehn;
          i10 = i9 + i8;
          if (j != 0)
            break;
          a(localSpannableString1, i9, i10);
        }
        if (!(paramObject instanceof com.tencent.mm.modelfriend.h))
          break label996;
        localh = (com.tencent.mm.modelfriend.h)paramObject;
        locali = null;
        break label25;
        label391: arrayOfString2 = com.tencent.mm.plugin.search.model.a.egG.split(str15);
        break label75;
        label404: paramq.ejr = "";
      case 10:
      case 8:
      case 7:
      case 2:
      case 1:
      case 15:
      case 21:
      case 9:
      case 3:
      }
    }
    boolean bool2 = true;
    label420: for (int i12 = 1; ; i12 = 0)
    {
      j = i12;
      localObject2 = str7;
      boolean bool3 = bool2;
      m = 1;
      bool1 = bool3;
      k = 0;
      localCharSequence1 = null;
      localObject1 = null;
      localObject3 = null;
      break label259;
      bool1 = true;
      j = 1;
      String str13 = locali.kn();
      String str14 = localResources.getString(com.tencent.mm.n.bxO);
      localObject1 = str13;
      localObject2 = str7;
      k = 1;
      localObject3 = str14;
      m = 0;
      localCharSequence1 = null;
      break label259;
      String str11 = locali.rp();
      if (str11.length() == 0)
        str11 = locali.getUsername();
      String str12 = localResources.getString(com.tencent.mm.n.bxP);
      localObject1 = str11;
      localObject3 = str12;
      k = 1;
      localObject2 = str7;
      m = 0;
      bool1 = false;
      j = 0;
      localCharSequence1 = null;
      break label259;
      String str9 = paramaq.content;
      String str10 = localResources.getString(com.tencent.mm.n.bxN);
      localObject1 = str9;
      localObject2 = str7;
      k = 1;
      localObject3 = str10;
      m = 0;
      bool1 = false;
      j = 0;
      localCharSequence1 = null;
      break label259;
      if ((arrayOfString1 == null) || (paramaq.CE == null) || (!(paramaq.CE instanceof List)))
        break;
      localCharSequence2 = a((List)paramaq.CE, arrayOfString1);
      str8 = localResources.getString(com.tencent.mm.n.bxM);
      break label238;
      String str1 = localh.yM();
      int i = paramaq.ehm;
      bool1 = false;
      j = 0;
      switch (i)
      {
      default:
        localObject2 = str1;
        m = 0;
        bool1 = false;
        j = 0;
        k = 0;
        localCharSequence1 = null;
        localObject1 = null;
        localObject3 = null;
        break;
      case 18:
        bool1 = true;
      case 17:
        j = 1;
      case 16:
        m = 1;
        String str6 = localh.yS();
        localObject3 = localResources.getString(com.tencent.mm.n.bxN);
        localObject1 = str6;
        localObject2 = str1;
        k = 0;
        localCharSequence1 = null;
        break;
      case 15:
        String str4 = localh.yS();
        String str5 = localResources.getString(com.tencent.mm.n.bxN);
        localObject1 = str4;
        localObject2 = str1;
        k = 1;
        localObject3 = str5;
        m = 0;
        bool1 = false;
        j = 0;
        localCharSequence1 = null;
        break;
      case 8:
        bool1 = true;
      case 7:
        j = 1;
      case 2:
        String str2 = localh.yP();
        String str3 = localResources.getString(com.tencent.mm.n.bxQ);
        localObject1 = str2;
        localObject2 = str1;
        k = 1;
        localObject3 = str3;
        m = 0;
        localCharSequence1 = null;
        break;
        a(localSpannableString1, 0, paramaq.content.substring(i9, i10), bool1);
        break label322;
        label936: i7++;
        break label286;
        label942: int n = localResources.getDimensionPixelSize(com.tencent.mm.g.aaO);
        com.tencent.mm.ao.a.a(this.eiL, localSpannableString1, n);
        label996: label997: for (paramq.ejq = localSpannableString1; localCharSequence1 != null; paramq.ejq = "")
        {
          paramq.ejs = TextUtils.concat(new CharSequence[] { localObject3, localCharSequence1 });
          return;
        }
        if (localObject1 != null)
        {
          SpannableString localSpannableString2 = new SpannableString(com.tencent.mm.ao.a.ti((String)localObject3 + localObject1));
          if (k != 0)
          {
            int i2 = ((String)localObject3).length();
            for (int i3 = 0; i3 < paramaq.eig.length; i3++)
            {
              int i4 = this.ehz[i3].length();
              Iterator localIterator1 = paramaq.eig[i3].iterator();
              while (localIterator1.hasNext())
              {
                int i5 = ((ar)localIterator1.next()).ehn;
                int i6 = i5 + i4;
                if (j == 0)
                  a(localSpannableString2, i5 + i2, i6 + i2);
                else
                  a(localSpannableString2, i2, paramaq.content.substring(i5, i6), bool1);
              }
            }
          }
          int i1 = localResources.getDimensionPixelSize(com.tencent.mm.g.aaO);
          com.tencent.mm.ao.a.a(this.eiL, localSpannableString2, i1);
          paramq.ejs = localSpannableString2;
          return;
        }
        paramq.ejs = "";
        return;
        bool2 = false;
        break label420;
        bool2 = false;
      }
    }
  }

  private static List b(List paramList, int paramInt1, int paramInt2)
  {
    f localf = new f();
    aq localaq = new aq();
    localaq.type = paramInt1;
    int i = Collections.binarySearch(paramList, localaq, localf);
    int j;
    int m;
    if (paramInt2 == paramInt1)
    {
      j = i;
      if (i >= 0)
        break label98;
      m = -1 + -i;
      label53: if (j >= 0)
        break label136;
    }
    label98: int i1;
    for (int i2 = -1 + -j; ; i2 = i1)
    {
      return paramList.subList(m, i2);
      localaq.type = paramInt2;
      j = Collections.binarySearch(paramList, localaq, localf);
      break;
      int k;
      do
      {
        i = k;
        k = i - 1;
      }
      while ((k >= 0) && (((aq)paramList.get(k)).type == paramInt1));
      m = k + 1;
      break label53;
      label136: int n = paramList.size();
      for (i1 = j + 1; (i1 < n) && (((aq)paramList.get(i1)).type == paramInt2); i1++);
    }
  }

  public final void a(List paramList1, List paramList2, List paramList3, String[] paramArrayOfString, boolean paramBoolean)
  {
    if (paramList1 == null)
      paramList1 = Collections.emptyList();
    if (paramList2 == null)
      paramList2 = Collections.emptyList();
    if (paramList3 == null)
      paramList3 = Collections.emptyList();
    if (paramArrayOfString == null)
      paramArrayOfString = new String[0];
    this.eiM = paramList1;
    this.ehA = paramList2;
    this.eja = paramList3;
    this.ehz = paramArrayOfString;
    List localList;
    label180: int k;
    if (this.ehz.length > 0)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      for (String str2 : this.ehz)
        localStringBuilder.append(str2 + ' ');
      localStringBuilder.setLength(-1 + localStringBuilder.length());
      this.eiN = localStringBuilder.toString();
      if (this.ehA.size() <= 3)
        break label672;
      localList = this.ehA.subList(0, 3);
      this.eiQ = localList;
      this.eiS = b(this.eiM, 131072, 131076);
      this.eiW = b(this.eiM, 131073, 131073);
      this.eiY = b(this.eiM, 131074, 131074);
      k = 0;
      if (!this.eiQ.isEmpty())
        break label681;
      this.eiP = 2147483647;
      label252: if (!this.eiS.isEmpty())
        break label704;
      this.eiR = 2147483647;
      label270: this.eiT = 2147483647;
      this.eiU = 2147483647;
      if ((this.ehz.length == 1) && (this.ehz[0].length() > 0) && (this.ehz[0].length() <= 20))
      {
        if (!this.ehz[0].matches("^[0-9]+$"))
          break label729;
        int n = k + 1;
        this.eiU = k;
        k = n;
      }
      label348: if (!this.eiW.isEmpty())
        break label763;
      this.eiV = 2147483647;
      label366: if (!this.eiY.isEmpty())
        break label788;
      this.eiX = 2147483647;
      label384: if (!this.eja.isEmpty())
        break label813;
      this.eiZ = 2147483647;
      label402: this.mCount = k;
      if (paramBoolean)
        this.eiO.clear();
      this.eiO.put(Integer.valueOf(this.eiP), this.eiL.getString(com.tencent.mm.n.bxL));
      this.eiO.put(Integer.valueOf(this.eiR), this.eiL.getString(com.tencent.mm.n.bxJ));
      this.eiO.put(Integer.valueOf(this.eiV), this.eiL.getString(com.tencent.mm.n.bxI));
      this.eiO.put(Integer.valueOf(this.eiX), this.eiL.getString(com.tencent.mm.n.bxH));
      this.eiO.put(Integer.valueOf(this.eiZ), this.eiL.getString(com.tencent.mm.n.bxK));
      if (this.ehz.length <= 0)
        break label838;
    }
    label672: label681: label704: label838: for (String str1 = this.ehz[0]; ; str1 = "")
    {
      this.eiO.put(Integer.valueOf(this.eiT), new o(this.eiL.getString(com.tencent.mm.n.bxG, new Object[] { str1 }), com.tencent.mm.h.aie, this.eji));
      this.eiO.put(Integer.valueOf(this.eiU), new o(this.eiL.getString(com.tencent.mm.n.bxF, new Object[] { str1 }), com.tencent.mm.h.aie, this.eji));
      notifyDataSetChanged();
      return;
      this.eiN = "";
      break;
      localList = this.ehA;
      break label180;
      this.eiP = 0;
      k = 0 + (1 + this.eiQ.size());
      break label252;
      this.eiR = k;
      k += 1 + this.eiS.size();
      break label270;
      label729: if (!this.ehz[0].matches("^[A-Za-z0-9\\-_]+"))
        break label348;
      int m = k + 1;
      this.eiT = k;
      k = m;
      break label348;
      label763: this.eiV = k;
      k += 1 + this.eiW.size();
      break label366;
      this.eiX = k;
      k += 1 + this.eiY.size();
      break label384;
      this.eiZ = k;
      k += 1 + this.eja.size();
      break label402;
    }
  }

  public final int getCount()
  {
    return this.mCount;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final int getItemViewType(int paramInt)
  {
    if ((paramInt == this.eiP) || (paramInt == this.eiR) || (paramInt == this.eiV) || (paramInt == this.eiX) || (paramInt == this.eiZ))
      return 2;
    if ((paramInt == this.eiT) || (paramInt == this.eiU))
      return 3;
    if (paramInt > this.eiZ)
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i6;
    Object localObject8;
    Object localObject1;
    r localr1;
    Object localObject7;
    q localq;
    if (paramView == null)
    {
      i6 = getItemViewType(paramInt);
      if (i6 == 0)
      {
        View localView4 = View.inflate(this.eiL, com.tencent.mm.k.aZb, null);
        r localr2 = new r();
        localr2.cMS = ((ImageView)localView4.findViewById(com.tencent.mm.i.amX));
        localr2.cPP = ((TextView)localView4.findViewById(com.tencent.mm.i.aCQ));
        localr2.eju = ((TextView)localView4.findViewById(com.tencent.mm.i.apc));
        localr2.dle = ((TextView)localView4.findViewById(com.tencent.mm.i.axN));
        ab.yf().a(localr2);
        localView4.setTag(localr2);
        localObject8 = localView4;
        paramView = (View)localObject8;
      }
    }
    else
    {
      localObject1 = paramView.getTag();
      if (!(localObject1 instanceof r))
        break label781;
      localr1 = (r)localObject1;
      localObject7 = this.eiO.get(Integer.valueOf(paramInt));
      if ((localObject7 != null) && ((localObject7 instanceof q)))
        break label708;
      if (paramInt <= this.eiX)
        break label503;
      localq = a(this.eiY, -1 + (paramInt - this.eiX));
    }
    while (true)
    {
      if (localq != null)
        break label597;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.b("MicroMsg.SearchContactUI", "Failed generating list item, pos = %d.", arrayOfObject2);
      paramView = null;
      return paramView;
      if (i6 == 1)
      {
        View localView3 = View.inflate(this.eiL, com.tencent.mm.k.aZc, null);
        int i7 = paramViewGroup.getPaddingLeft() + paramViewGroup.getPaddingRight();
        localView3.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(paramViewGroup.getWidth(), 1073741824), i7, -1), View.MeasureSpec.makeMeasureSpec(-2, 1073741824));
        w localw2 = new w();
        localw2.cMS = ((ImageView)localView3.findViewById(com.tencent.mm.i.amX));
        localw2.cPP = ((TextView)localView3.findViewById(com.tencent.mm.i.aCQ));
        localw2.dle = ((TextView)localView3.findViewById(com.tencent.mm.i.aCi));
        localw2.dkq = ((TextView)localView3.findViewById(com.tencent.mm.i.aNX));
        localView3.setTag(localw2);
        localObject8 = localView3;
        break;
      }
      if (i6 == 2)
      {
        View localView2 = View.inflate(this.eiL, com.tencent.mm.k.aZa, null);
        t localt2 = new t();
        localt2.ejw = ((TextView)localView2.findViewById(com.tencent.mm.i.aoZ));
        localView2.setTag(localt2);
        localObject8 = localView2;
        break;
      }
      View localView1 = View.inflate(this.eiL, com.tencent.mm.k.aYZ, null);
      p localp2 = new p();
      localp2.daU = ((ImageView)localView1.findViewById(com.tencent.mm.i.awj));
      localp2.dMc = ((TextView)localView1.findViewById(com.tencent.mm.i.aCQ));
      localView1.setTag(localp2);
      localObject8 = localView1;
      break;
      label503: if (paramInt > this.eiV)
      {
        localq = a(this.eiW, -1 + (paramInt - this.eiV));
      }
      else if (paramInt > this.eiR)
      {
        localq = a(this.eiS, -1 + (paramInt - this.eiR));
      }
      else
      {
        int i5 = this.eiP;
        localq = null;
        if (paramInt > i5)
          localq = a(this.eiQ, -1 + (paramInt - this.eiP));
      }
    }
    label597: this.eiO.put(Integer.valueOf(paramInt), localq);
    localr1.ejt = localq;
    if (localq.ejp.type == 131074)
    {
      Bitmap localBitmap = u.E(localr1.ejt.username, localr1.ejt.cnh);
      if (localBitmap != null)
        localr1.cMS.setImageBitmap(localBitmap);
    }
    while (true)
    {
      localr1.cPP.setText(localq.ejq);
      localr1.eju.setText(localq.ejr);
      localr1.dle.setText(localq.ejs);
      return paramView;
      label708: localq = (q)localObject7;
      break;
      localr1.cMS.setImageResource(com.tencent.mm.h.acW);
      continue;
      if ((localq.username != null) && (localq.username.length() > 0))
        com.tencent.mm.pluginsdk.ui.c.a(localr1.cMS, localq.username);
      else
        localr1.cMS.setImageResource(com.tencent.mm.h.adI);
    }
    label781: w localw1;
    Object localObject4;
    Object localObject5;
    v localv;
    aq localaq;
    String str2;
    int j;
    SpannableString localSpannableString;
    int n;
    int i1;
    if ((localObject1 instanceof w))
    {
      localw1 = (w)localObject1;
      localObject4 = this.eiO.get(Integer.valueOf(paramInt));
      if ((localObject4 == null) || (!(localObject4 instanceof v)))
      {
        List localList = this.eja;
        int i = -1 + (paramInt - this.eiZ);
        if ((localw1 == null) || (localw1.cPP == null) || (localList == null))
          localObject5 = null;
        while (localObject5 == null)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(paramInt);
          aa.b("MicroMsg.SearchContactUI", "Failed generating list item, pos = %d.", arrayOfObject1);
          return null;
          localv = new v();
          if (i >= localList.size())
          {
            localObject5 = localv;
          }
          else
          {
            localaq = (aq)localList.get(i);
            if (localaq == null)
            {
              localObject5 = null;
            }
            else
            {
              localv.ejp = localaq;
              localv.username = localaq.eid;
              localv.ejq = com.tencent.mm.ao.b.e(this.eiL, com.tencent.mm.model.w.cu(localv.username), (int)localw1.cPP.getTextSize());
              String str1 = be.uz().sw().bU(localaq.eic).field_content;
              if (com.tencent.mm.model.w.cp(localv.username))
                str1 = bv.dz(str1);
              TextView localTextView = localw1.dle;
              str2 = com.tencent.mm.ao.a.ti(str1.replace('\n', ' '));
              j = localTextView.getMeasuredWidth();
              this.eiL.getResources();
              int k = this.ejc;
              localSpannableString = new SpannableString(str2);
              d.a(this.eiL, localSpannableString, k);
              com.tencent.mm.ao.a.a(this.eiL, localSpannableString, k);
              if (ejd == 0.0F)
                ejd = this.ejb.measureText("…");
              for (int m = 0; m < localaq.eig.length; m++)
              {
                int i3 = this.ehz[m].length();
                Iterator localIterator = localaq.eig[m].iterator();
                while (localIterator.hasNext())
                {
                  int i4 = ((ar)localIterator.next()).ehn;
                  a(localSpannableString, i4, i4 + i3);
                }
              }
              ar localar = (ar)localaq.eig[0].get(0);
              n = localar.ehn;
              i1 = localar.dKv;
              if (i1 > localSpannableString.length())
                i1 = localSpannableString.length();
              if (n <= i1)
                break label1978;
            }
          }
        }
      }
    }
    label1978: for (int i2 = i1; ; i2 = n)
    {
      float f1 = this.ejb.measureText(localSpannableString, 0, i2);
      float f2 = this.ejb.measureText(localSpannableString, i2, i1);
      float f3 = this.ejb.measureText(localSpannableString, i1, str2.length());
      Object localObject6;
      if (f3 + (f1 + f2) < j)
        localObject6 = localSpannableString;
      while (true)
      {
        localv.ejs = ((CharSequence)localObject6);
        localv.ejx = com.tencent.mm.pluginsdk.e.e.b(this.eiL, localaq.timestamp, true);
        localv.ejo = this.ejh;
        localObject5 = localv;
        break;
        if (f1 + f2 + ejd < j)
        {
          localObject6 = new SpannableStringBuilder(localSpannableString, 0, i1);
          float f4 = j - f1 - f2;
          ((SpannableStringBuilder)localObject6).append(TextUtils.ellipsize(localSpannableString.subSequence(i1, localSpannableString.length()), this.ejb, f4, TextUtils.TruncateAt.END));
        }
        else if (f3 + (f2 + ejd) < j)
        {
          SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder();
          float f5 = j - f2 - f3;
          localSpannableStringBuilder1.append(TextUtils.ellipsize(localSpannableString.subSequence(0, i2), this.ejb, f5, TextUtils.TruncateAt.START));
          localSpannableStringBuilder1.append(localSpannableString, i2, localSpannableString.length());
          localObject6 = localSpannableStringBuilder1;
        }
        else if (f2 + ejd + ejd >= j)
        {
          localObject6 = TextUtils.ellipsize(localSpannableString.subSequence(i2, i1), this.ejb, j, TextUtils.TruncateAt.END);
        }
        else
        {
          SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder();
          float f6 = (j - f2) / 2.0F;
          CharSequence localCharSequence1 = localSpannableString.subSequence(0, i2);
          CharSequence localCharSequence2 = localSpannableString.subSequence(i1, localSpannableString.length());
          localSpannableStringBuilder2.append(TextUtils.ellipsize(localCharSequence1, this.ejb, f6, TextUtils.TruncateAt.START));
          localSpannableStringBuilder2.append(localSpannableString, i2, i1);
          localSpannableStringBuilder2.append(TextUtils.ellipsize(localCharSequence2, this.ejb, f6, TextUtils.TruncateAt.END));
          localObject6 = localSpannableStringBuilder2;
        }
      }
      this.eiO.put(Integer.valueOf(paramInt), localObject5);
      localw1.ejy = ((v)localObject5);
      if ((((v)localObject5).username != null) && (((v)localObject5).username.length() > 0))
        com.tencent.mm.pluginsdk.ui.c.a(localw1.cMS, ((v)localObject5).username);
      while (true)
      {
        localw1.cPP.setText(((v)localObject5).ejq);
        localw1.dle.setText(((v)localObject5).ejs);
        localw1.dkq.setText(((v)localObject5).ejx);
        return paramView;
        localObject5 = (v)localObject4;
        break;
        localw1.cMS.setImageResource(com.tencent.mm.h.afI);
      }
      if ((localObject1 instanceof t))
      {
        t localt1 = (t)localObject1;
        Object localObject3 = this.eiO.get(Integer.valueOf(paramInt));
        if ((localObject3 == null) || (!(localObject3 instanceof String)) || (((String)localObject3).length() == 0))
        {
          localt1.ejw.setVisibility(4);
          return paramView;
        }
        localt1.ejw.setVisibility(0);
        localt1.ejw.setText((String)localObject3);
        return paramView;
      }
      if (!(localObject1 instanceof p))
        break;
      p localp1 = (p)localObject1;
      Object localObject2 = this.eiO.get(Integer.valueOf(paramInt));
      if ((localObject2 == null) || (!(localObject2 instanceof o)))
        break;
      o localo = (o)localObject2;
      localp1.dMc.setText(localo.text);
      localp1.daU.setImageResource(localo.iconId);
      localp1.ejn = localo;
      return paramView;
    }
  }

  public final int getViewTypeCount()
  {
    return 4;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.ui.e
 * JD-Core Version:    0.6.2
 */