package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.p.u;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.pluginsdk.ui.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.AddressView;
import com.tencent.mm.ui.applet.f;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class db extends bc
{
  public static final ColorStateList gSp = a.j(al.getContext(), 2131493120);
  public static final ColorStateList gSq = a.j(al.getContext(), 2131492910);
  private String cIs = "";
  protected List cKz = null;
  protected cz cPN = MMSlideDelView.aHp();
  private com.tencent.mm.ui.applet.b cqO = null;
  private f cqP = null;
  private int dKE = 0;
  private List dKF;
  protected String dKG = null;
  protected int[] dKH;
  private String[] dKI;
  private boolean dKJ = true;
  private boolean dkP = false;
  private String[] gKD = null;
  protected String gRX = null;
  private List gRY;
  private int gRZ = 0;
  private boolean gSc = false;
  private String gSl;
  private LinkedList gSm = new LinkedList();
  private boolean gSn;
  private SparseArray gSs = new SparseArray();
  protected SelectContactUI gUH;
  private de gUI;
  private boolean gUJ;
  private boolean gUK = true;
  private boolean gUL = true;
  private boolean gUM = true;
  private SparseIntArray gUN = new SparseIntArray();
  private int type;

  public db(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, 8, false);
  }

  public db(Context paramContext, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    super(paramContext, new com.tencent.mm.storage.i());
    this.context = paramContext;
    this.dKG = paramString1;
    this.gRX = paramString2;
    this.type = paramInt;
    this.gSc = paramBoolean;
    this.dKF = new LinkedList();
    this.gRY = new LinkedList();
    this.gSl = v.th();
    this.gUJ = v.ts();
  }

  private int a(com.tencent.mm.storage.i parami, int paramInt)
  {
    if (paramInt < this.dKE)
      return 32;
    return parami.rl();
  }

  private boolean aKn()
  {
    return (this.gUL) && ((this.dKG.equals("@micromsg.qq.com")) || (this.dKG.equals("@all.contact.without.chatroom")));
  }

  private String b(com.tencent.mm.storage.i parami, int paramInt)
  {
    String str1;
    if (paramInt < this.dKE)
      str1 = getString(2131166196);
    do
    {
      return str1;
      if (parami.rl() == 31)
        return "";
      if (parami.rl() == 123)
        return "#";
      if (parami.rl() == 33)
        return getString(2131166199);
      if (parami.rl() == 43)
        return getString(2131167554);
      if (parami.rl() == 32)
        return getString(2131166196);
      str1 = (String)this.gSs.get(parami.rl());
    }
    while (str1 != null);
    String str2 = String.valueOf((char)parami.rl());
    this.gSs.put(parami.rl(), str2);
    return str2;
  }

  private String getString(int paramInt)
  {
    String str = (String)this.gSs.get(paramInt);
    if (str == null)
    {
      str = this.context.getString(paramInt);
      this.gSs.put(paramInt, str);
    }
    return str;
  }

  private boolean wP(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return true;
    if (w.g(dU(false)))
    {
      Iterator localIterator = this.dKF.iterator();
      boolean bool = localIterator.hasNext();
      df localdf = null;
      if (bool)
        localdf = (df)localIterator.next();
      if (localdf != null)
      {
        Context localContext1 = this.context;
        Context localContext2 = this.context;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = be.uz().su().tO(localdf.bPx).rr();
        h.p(localContext1, localContext2.getString(2131165296, arrayOfObject), this.context.getString(2131167675));
      }
      return false;
    }
    if ((v.cm(paramString)) && (this.dKF.size() == 0))
    {
      h.c(this.context, 2131166735, 2131167675);
      return false;
    }
    if ((dU(false).size() > 0) && (!w.co(paramString)) && (!w.cr(paramString)))
    {
      h.p(this.context, this.context.getString(2131167605), this.context.getString(2131167675));
      return false;
    }
    return true;
  }

  private df wQ(String paramString)
  {
    Object localObject1 = null;
    Iterator localIterator = this.dKF.iterator();
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (df)localIterator.next();
      if (!((df)localObject2).bPx.equals(paramString))
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
    int i;
    long l1;
    com.tencent.mm.ap.i locali;
    StringBuilder localStringBuilder;
    while (true)
    {
      try
      {
        if (Looper.myLooper() == Looper.getMainLooper())
        {
          i = 1;
          l1 = System.currentTimeMillis();
          if (this.type != 8)
            break label242;
          locali = be.uz().sp();
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("select rcontact.*");
          localStringBuilder.append(" from rconversation, rcontact");
          localStringBuilder.append(" where rconversation.username=rcontact.username");
          localStringBuilder.append(" and rcontact.verifyFlag&8==0");
          localStringBuilder.append(" and rcontact.username!='officialaccounts'");
          Iterator localIterator = this.cKz.iterator();
          if (!localIterator.hasNext())
            break;
          String str = (String)localIterator.next();
          localStringBuilder.append(" and rcontact.username!='").append(str).append("'");
          continue;
        }
      }
      finally
      {
      }
      i = 0;
    }
    localStringBuilder.append(" order by rconversation.conversationTime desc");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localStringBuilder.toString();
    aa.e("MicroMsg.AddressAdapter", "latest contact with conversation sql: %s", arrayOfObject);
    Cursor localCursor = locali.rawQuery(localStringBuilder.toString(), null);
    if (i != 0)
      h(localCursor);
    while (true)
    {
      aa.d("MicroMsg.AddressAdapter", "kevin resetCursor" + (System.currentTimeMillis() - l1));
      return;
      label242: if (this.gKD != null)
      {
        localCursor = be.uz().su().a(this.gKD, this.dKG, this.gRX, this.cKz);
        if (!aKn())
          break;
        this.dKE = 0;
        break;
      }
      if ((this.cIs == null) || (this.cIs.length() <= 0))
      {
        long l2 = System.currentTimeMillis();
        LinkedList localLinkedList = new LinkedList();
        if ((this.gUM) && (!"@black.android".equals(this.dKG)) && (!"@t.qq.com".equals(this.dKG)))
          localLinkedList.add("weixin");
        localCursor = be.uz().su().c(this.dKG, this.gRX, this.cKz, localLinkedList, aKn(), this.gSc);
        if (aKn())
          this.dKE = be.uz().su().c(this.cKz, this.gSc);
        aa.d("MicroMsg.AddressAdapter", "kevin setCursor : " + (System.currentTimeMillis() - l2));
        break;
      }
      localCursor = be.uz().su().d(this.cIs, this.dKG, this.gRX, this.cKz);
      if (!aKn())
        break;
      this.dKE = 0;
      break;
      an.i(new dc(this, localCursor));
    }
  }

  public final void G(com.tencent.mm.storage.i parami)
  {
    df localdf = wQ(parami.getUsername());
    if (localdf == null)
    {
      String str = parami.getUsername();
      parami.rr();
      if (!wP(str))
        return;
      this.dKF.add(new df(parami.getUsername()));
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      this.dKF.remove(localdf);
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final String[] VG()
  {
    aa.v("MicroMsg.AddressAdapter", "getSections");
    return this.dKI;
  }

  public final int VL()
  {
    if (this.dKF != null)
      return this.dKF.size();
    return 0;
  }

  public final void a(SelectContactUI paramSelectContactUI)
  {
    this.gUH = paramSelectContactUI;
  }

  public final void a(de paramde)
  {
    this.gUI = paramde;
  }

  public final void a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    this.dKG = paramString1;
    this.gRX = paramString2;
    this.type = paramInt;
    this.cIs = paramString3;
    this.dKE = 0;
    FZ();
  }

  public final void a(String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    this.dKJ = true;
    if (paramArrayOfString != null)
    {
      this.cIs = null;
      this.gKD = paramArrayOfString;
      this.dKJ = paramBoolean;
      FZ();
      return;
    }
    String str = paramString.trim();
    if (str.startsWith("@"))
      if ((this.dKG == null) || (this.dKG.length() <= 0))
        break label141;
    label141: for (str = str.substring(1) + "%" + this.dKG; ; str = str.substring(1) + "%@t.qq.com")
    {
      aa.d("MicroMsg.AddressAdapter", "dkvoice [" + str + "]");
      this.cIs = str;
      this.gKD = null;
      break;
    }
  }

  public final void aB(List paramList)
  {
    if (this.cKz == null)
      this.cKz = new LinkedList();
    this.cKz.clear();
    this.cKz.addAll(paramList);
    if ((this.type != 2) && (this.type != 4))
      this.cKz.add(v.th());
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (localca != null)
      this.cKz.add(localca.getName());
    if ((this.type == 3) || (this.type == 5) || (this.type == 4) || (this.type == 1) || (this.type == 0) || (this.type == 7) || (this.type == 10))
    {
      Iterator localIterator = w.tL().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.cKz.add(str);
      }
    }
  }

  public final void aD(List paramList)
  {
    if (paramList == null)
      return;
    com.tencent.mm.storage.i locali = v.tJ();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.equals(locali.getUsername()))
        this.dKF.add(new df(locali.getUsername()));
      else
        this.dKF.add(new df(str));
    }
    this.gRZ = this.dKF.size();
    ca(null);
  }

  public final void aE(List paramList)
  {
    if (paramList != null)
      this.gRY = paramList;
  }

  public final void aKR()
  {
    this.gUL = false;
  }

  public final void aKS()
  {
    this.gUM = false;
  }

  public final ArrayList aKT()
  {
    ArrayList localArrayList = dU(false);
    Iterator localIterator = this.gRY.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!localArrayList.contains(str))
        localArrayList.add(str);
    }
    return localArrayList;
  }

  public final boolean aKU()
  {
    return this.dKF.size() > this.gRZ;
  }

  public final List aKV()
  {
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    localHashSet.add(v.th());
    for (int i = 0; i < this.gRZ; i++)
      localHashSet.add(((df)this.dKF.get(i)).bPx);
    for (int j = this.gRZ; j < this.dKF.size(); j++)
    {
      String str1 = ((df)this.dKF.get(j)).bPx;
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

  public final void ca(String paramString)
  {
    if (paramString != null);
    do
    {
      return;
      this.gSl = v.th();
      if (this.gmO != null)
        this.gmO.FX();
      FZ();
    }
    while (this.gmO == null);
    an.i(new dd(this));
  }

  public final void dP(boolean paramBoolean)
  {
    this.dkP = paramBoolean;
  }

  public final void dT(boolean paramBoolean)
  {
    this.gUK = paramBoolean;
  }

  public final ArrayList dU(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = this.dKF.iterator();
    while (localIterator1.hasNext())
    {
      df localdf = (df)localIterator1.next();
      aa.d("MicroMsg.AddressAdapter", "selectedContact.userName" + localdf.bPx);
      if ((!paramBoolean) && (w.cr(localdf.bPx)))
      {
        List localList = r.ch(localdf.bPx);
        if (localList != null)
        {
          Iterator localIterator2 = localList.iterator();
          while (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            if (!localHashSet.contains(str))
            {
              localArrayList.add(str);
              localHashSet.add(str);
            }
          }
        }
      }
      else if (!localHashSet.contains(localdf.bPx))
      {
        localArrayList.add(localdf.bPx);
        localHashSet.add(localdf.bPx);
      }
    }
    return localArrayList;
  }

  public final void detach()
  {
    if (this.cqO != null)
    {
      this.cqO.detach();
      this.cqO = null;
    }
  }

  public final void gW(int paramInt)
  {
    com.tencent.mm.storage.i locali = (com.tencent.mm.storage.i)getItem(paramInt);
    df localdf = wQ(locali.getUsername());
    if (this.gRY.contains(locali.getUsername()));
    String str;
    do
    {
      return;
      if (localdf != null)
        break;
      str = locali.getUsername();
      locali.rr();
    }
    while (!wP(str));
    this.dKF.add(new df(locali.getUsername()));
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (!this.dkP)
        this.dKF.remove(localdf);
    }
  }

  public final int getCount()
  {
    long l = System.currentTimeMillis();
    int i = getCursor().getCount();
    if (System.currentTimeMillis() - l > 5L)
      aa.d("MicroMsg.AddressAdapter", "kevin getCursor().getCount() : " + (System.currentTimeMillis() - l));
    return i;
  }

  public final int getPositionForSection(int paramInt)
  {
    if ((this.dKH != null) && (paramInt >= 0) && (paramInt < this.dKH.length))
      paramInt = this.dKH[paramInt];
    return paramInt + this.dKE;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.gSn)
    {
      for (int j = 0; j < 8; j++)
        this.gSm.add(View.inflate(this.context, 2130903072, null));
      this.gSn = true;
    }
    com.tencent.mm.storage.i locali1 = (com.tencent.mm.storage.i)getItem(paramInt);
    View localView1;
    dg localdg1;
    label204: label242: CharSequence localCharSequence1;
    if (paramView == null)
      if (this.gSm.size() > 0)
      {
        View localView2 = (View)this.gSm.getFirst();
        this.gSm.removeFirst();
        localView1 = localView2;
        dg localdg2 = new dg();
        localdg2.cMT = ((TextView)localView1.findViewById(2131361912));
        localdg2.gSw = ((AddressView)localView1.findViewById(2131361929));
        localdg2.cMW = ((CheckBox)localView1.findViewById(2131361920));
        localdg2.gSx = ((TextView)localView1.findViewById(2131361928));
        if (this.gUH != null)
          this.gUH.aKu().a(localdg2.gSw);
        localView1.setTag(localdg2);
        paramView = localView1;
        localdg1 = localdg2;
        if (this.type != 8)
          break label702;
        if (paramInt != 0)
          break label689;
        localdg1.cMT.setVisibility(8);
        localdg1.cMT.setText(getString(2131167434));
        c.a(localdg1.gSw, locali1.getUsername());
        if (locali1.rJ() == 0)
          break label866;
        String str2 = ar.ub().cq(locali1.rJ());
        if (str2 == null)
          break label854;
        Bitmap localBitmap = u.eN(str2);
        localdg1.gSw.setMaskBitmap(localBitmap);
        label300: if (locali1.field_deleteFlag != 1)
          break label878;
        localdg1.gSw.setNickNameTextColor(gSq);
        localdg1.gSw.updateTextColors();
        localCharSequence1 = locali1.aAd();
        if (localCharSequence1 != null)
          break label900;
      }
    while (true)
    {
      try
      {
        Context localContext = this.context;
        locali1.getUsername();
        String str1 = w.cu(locali1.getUsername());
        if (("".length() > 0) && (!"".equals(str1)))
        {
          StringBuilder localStringBuilder = new StringBuilder(32);
          localStringBuilder.append(str1);
          localStringBuilder.append("(");
          localStringBuilder.append("");
          localStringBuilder.append(")");
          str1 = localStringBuilder.toString();
        }
        CharSequence localCharSequence2 = com.tencent.mm.ao.b.f(localContext, str1, (int)localdg1.gSw.getNickNameSize());
        localObject = localCharSequence2;
        if (localObject == null)
          localObject = "";
        localdg1.gSw.setName((CharSequence)localObject);
        locali1.o((CharSequence)localObject);
        if ((!this.gUK) || ((this.type != 5) && (this.type != 1) && (this.type != 0) && (this.type != 3) && ((this.type != 7) || (this.gUJ)) && (this.type != 8) && (this.type != 10)))
          break label940;
        if (wQ(locali1.getUsername()) == null)
          break label913;
        bool1 = true;
        boolean bool2 = this.gRY.contains(locali1.getUsername());
        if (this.dkP)
          break label940;
        localdg1.cMW.setVisibility(0);
        if (bool2)
          break label919;
        localdg1.cMW.setChecked(bool1);
        localdg1.cMW.setEnabled(true);
        localdg1.gSw.updatePositionFlag();
        if (locali1.field_deleteFlag != 1)
          break label953;
        localdg1.gSx.setVisibility(0);
        localdg1.cMW.setVisibility(8);
        return paramView;
        localView1 = View.inflate(this.context, 2130903072, null);
        break;
        localdg1 = (dg)paramView.getTag();
        break label204;
        label689: localdg1.cMT.setVisibility(8);
        break label242;
        label702: com.tencent.mm.storage.i locali2 = (com.tencent.mm.storage.i)getItem(paramInt - 1);
        if (locali2 == null)
        {
          i = -1;
          if (!this.dKJ)
            continue;
          if (paramInt != 0)
            continue;
          String str4 = b(locali1, paramInt);
          if (au.hX(str4))
            continue;
          localdg1.cMT.setVisibility(0);
          localdg1.cMT.setText(str4);
          break label242;
        }
        int i = a(locali2, paramInt - 1);
        continue;
        if ((paramInt > 0) && (a(locali1, paramInt) != i))
        {
          String str3 = b(locali1, paramInt);
          if (!au.hX(str3))
          {
            localdg1.cMT.setVisibility(0);
            localdg1.cMT.setText(str3);
            break label242;
          }
        }
        localdg1.cMT.setVisibility(8);
        break label242;
        label854: localdg1.gSw.setMaskBitmap(null);
        break label300;
        label866: localdg1.gSw.setMaskBitmap(null);
        break label300;
        label878: localdg1.gSw.setNickNameTextColor(gSp);
      }
      catch (Exception localException)
      {
        Object localObject = null;
        continue;
      }
      label900: localdg1.gSw.setName(localCharSequence1);
      continue;
      label913: boolean bool1 = false;
      continue;
      label919: localdg1.cMW.setChecked(true);
      localdg1.cMW.setEnabled(false);
      continue;
      label940: localdg1.cMW.setVisibility(8);
    }
    label953: localdg1.gSx.setVisibility(8);
    return paramView;
  }

  public final void h(Cursor paramCursor)
  {
    closeCursor();
    setCursor(paramCursor);
    notifyDataSetChanged();
    long l1 = System.currentTimeMillis();
    if (this.gmO != null)
      this.gmO.FW();
    aa.d("MicroMsg.AddressAdapter", "kevin onPostReset" + (System.currentTimeMillis() - l1));
    long l2 = System.currentTimeMillis();
    if ((this.cIs != null) && (this.gUI != null))
      this.gUI.mL(paramCursor.getCount());
    aa.d("MicroMsg.AddressAdapter", "kevin onTextSearchChange" + (System.currentTimeMillis() - l2));
    long l3 = System.currentTimeMillis();
    if (this.gKD != null)
    {
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.gKD);
      this.dKI = w.a(this.dKG, this.gRX, this.gKD, this.cKz);
    }
    while (true)
    {
      aa.d("MicroMsg.AddressAdapter", "kevin resetShowHead" + (System.currentTimeMillis() - l3));
      return;
      long l4 = System.currentTimeMillis();
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.cIs);
      this.dKI = w.a(this.dKG, this.gRX, this.cIs, this.cKz);
      aa.d("MicroMsg.AddressAdapter", "kevin resetShowHead part1 : " + (System.currentTimeMillis() - l4));
    }
  }

  public final void nI(int paramInt)
  {
    com.tencent.mm.storage.i locali = (com.tencent.mm.storage.i)getItem(paramInt);
    df localdf = wQ(locali.getUsername());
    if (this.gRY.contains(locali.getUsername()))
      return;
    if (localdf == null)
      this.dKF.add(new df(locali.getUsername()));
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (!this.dkP)
        this.dKF.remove(localdf);
    }
  }

  public final void notifyDataSetChanged()
  {
    this.gSl = v.th();
    super.notifyDataSetChanged();
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.cqO != null)
      this.cqO.onTouchEvent(paramMotionEvent);
  }

  public final void wH(String paramString)
  {
    a(paramString, null, false);
  }

  public final void wN(String paramString)
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
    if (locali != null)
      G(locali);
  }

  public final void wO(String paramString)
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
    if (locali != null)
      G(locali);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.db
 * JD-Core Version:    0.6.2
 */