package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.ai.t;
import com.tencent.mm.model.al;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.e.e;
import com.tencent.mm.pluginsdk.ui.chat.az;
import com.tencent.mm.pluginsdk.ui.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bc;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import junit.framework.Assert;

public final class es extends bc
  implements t, m
{
  private static Map gNU;
  private static String gNs;
  protected final String bNl;
  private int cLI;
  protected final String clp;
  private short[] dLa;
  private LayoutInflater dLe;
  protected View.OnCreateContextMenuListener dYT;
  protected g dYp;
  protected ChattingUI gKH;
  protected final v gMj;
  protected fg gNA;
  private fg gNB;
  protected az gNC;
  private az gND;
  protected ex gNE;
  private ex gNF;
  protected n gNG;
  private n gNH;
  private View.OnCreateContextMenuListener gNI;
  private Handler gNJ;
  private long gNK = -1L;
  private long gNL = -1L;
  private long gNM = -1L;
  private int gNN = 0;
  private int gNO = 0;
  private boolean gNP = false;
  private boolean gNQ = false;
  private boolean gNR = false;
  private boolean gNS = false;
  private TreeSet gNT;
  private HashMap gNV = new HashMap();
  ak gNW;
  private View.OnClickListener gNX;
  private short[] gNo;
  private int gNp;
  private HashSet gNq = new HashSet();
  protected final lm gNr;
  private int gNt;
  private final int gNu;
  private final int gNv;
  protected ez gNw;
  private ez gNx;
  protected fl gNy;
  private fl gNz;

  static
  {
    HashMap localHashMap = new HashMap();
    gNU = localHashMap;
    localHashMap.put("T49S", Integer.valueOf(19));
    gNU.put("T49R", Integer.valueOf(18));
    gNU.put("T268435505S", Integer.valueOf(21));
    gNU.put("T268435505R", Integer.valueOf(20));
    gNU.put("T1048625S", Integer.valueOf(30));
    gNU.put("T1048625R", Integer.valueOf(29));
    gNU.put("T369098801S", Integer.valueOf(47));
    gNU.put("T369098801R", Integer.valueOf(46));
    gNU.put("T335544369S", Integer.valueOf(42));
    gNU.put("T335544369R", Integer.valueOf(41));
    gNU.put("T402653233S", Integer.valueOf(45));
    gNU.put("T402653233R", Integer.valueOf(44));
    gNU.put("T16777265S", Integer.valueOf(23));
    gNU.put("T16777265R", Integer.valueOf(22));
    gNU.put("T10000R", Integer.valueOf(5));
    gNU.put("T39S", Integer.valueOf(3));
    gNU.put("T39R", Integer.valueOf(1));
    gNU.put("T3S", Integer.valueOf(3));
    gNU.put("T3R", Integer.valueOf(1));
    gNU.put("T23S", Integer.valueOf(3));
    gNU.put("T23R", Integer.valueOf(1));
    gNU.put("T47S", Integer.valueOf(15));
    gNU.put("T47R", Integer.valueOf(14));
    gNU.put("T34S", Integer.valueOf(7));
    gNU.put("T34R", Integer.valueOf(6));
    gNU.put("T35R", Integer.valueOf(8));
    gNU.put("T42S", Integer.valueOf(13));
    gNU.put("T42R", Integer.valueOf(12));
    gNU.put("T37R", Integer.valueOf(9));
    gNU.put("T40R", Integer.valueOf(9));
    gNU.put("T43S", Integer.valueOf(11));
    gNU.put("T43R", Integer.valueOf(10));
    gNU.put("T48S", Integer.valueOf(17));
    gNU.put("T48R", Integer.valueOf(16));
    gNU.put("T52R", Integer.valueOf(25));
    gNU.put("T50R", Integer.valueOf(24));
    gNU.put("T50S", Integer.valueOf(43));
    gNU.put("T285212721R", Integer.valueOf(26));
    gNU.put("T301989937S", Integer.valueOf(32));
    gNU.put("T301989937R", Integer.valueOf(31));
    gNU.put("T1S", Integer.valueOf(4));
    gNU.put("T1R", Integer.valueOf(2));
    gNU.put("T11S", Integer.valueOf(4));
    gNU.put("T11R", Integer.valueOf(2));
    gNU.put("T13S", Integer.valueOf(3));
    gNU.put("T13R", Integer.valueOf(1));
    gNU.put("T21S", Integer.valueOf(4));
    gNU.put("T21R", Integer.valueOf(2));
    gNU.put("T31S", Integer.valueOf(4));
    gNU.put("T31R", Integer.valueOf(2));
    gNU.put("T36S", Integer.valueOf(4));
    gNU.put("T36R", Integer.valueOf(2));
    gNU.put("T53R", Integer.valueOf(27));
    gNU.put("T53S", Integer.valueOf(28));
    gNU.put("T55R", Integer.valueOf(36));
    gNU.put("T55S", Integer.valueOf(37));
    gNU.put("T57R", Integer.valueOf(36));
    gNU.put("T57S", Integer.valueOf(37));
    gNU.put("T-1879048191R", Integer.valueOf(33));
    gNU.put("T-1879048189R", Integer.valueOf(34));
    gNU.put("T-1879048190R", Integer.valueOf(35));
    gNU.put("T-1879048188R", Integer.valueOf(38));
    gNU.put("T-1879048187R", Integer.valueOf(39));
    gNU.put("T318767153R", Integer.valueOf(40));
    gNU.put("T318767153R", Integer.valueOf(40));
    gNU.put("T-1879048186R", Integer.valueOf(48));
    gNU.put("T-1879048186S", Integer.valueOf(49));
  }

  public es(ChattingUI paramChattingUI, ak paramak, String paramString1, String paramString2, v paramv, View.OnCreateContextMenuListener paramOnCreateContextMenuListener)
  {
    super(paramChattingUI, paramak);
    this.gNV.put(Integer.valueOf(19), new cq(19));
    this.gNV.put(Integer.valueOf(18), new ci(18));
    this.gNV.put(Integer.valueOf(21), new ct());
    this.gNV.put(Integer.valueOf(20), new cj());
    this.gNV.put(Integer.valueOf(23), new cn());
    this.gNV.put(Integer.valueOf(22), new cm());
    this.gNV.put(Integer.valueOf(30), new ch());
    this.gNV.put(Integer.valueOf(29), new cg());
    this.gNV.put(Integer.valueOf(47), new cq(47));
    this.gNV.put(Integer.valueOf(46), new ci(46));
    this.gNV.put(Integer.valueOf(42), new cq(42));
    this.gNV.put(Integer.valueOf(41), new ci(41));
    this.gNV.put(Integer.valueOf(45), new cq(45));
    this.gNV.put(Integer.valueOf(44), new ci(44));
    this.gNV.put(Integer.valueOf(5), new do());
    this.gNV.put(Integer.valueOf(3), new di());
    this.gNV.put(Integer.valueOf(1), new dh());
    this.gNV.put(Integer.valueOf(15), new df());
    this.gNV.put(Integer.valueOf(14), new de());
    this.gNV.put(Integer.valueOf(7), new ej());
    this.gNV.put(Integer.valueOf(6), new du());
    this.gNV.put(Integer.valueOf(8), new dl());
    this.gNV.put(Integer.valueOf(13), new cy());
    this.gNV.put(Integer.valueOf(12), new cx());
    this.gNV.put(Integer.valueOf(9), new dg());
    this.gNV.put(Integer.valueOf(11), new dt());
    this.gNV.put(Integer.valueOf(10), new ds());
    this.gNV.put(Integer.valueOf(17), new dk());
    this.gNV.put(Integer.valueOf(16), new dj());
    this.gNV.put(Integer.valueOf(25), new eo());
    this.gNV.put(Integer.valueOf(24), new el());
    this.gNV.put(Integer.valueOf(43), new ep());
    this.gNV.put(Integer.valueOf(4), new dr(4));
    this.gNV.put(Integer.valueOf(2), new dq(2));
    this.gNV.put(Integer.valueOf(26), new cw());
    this.gNV.put(Integer.valueOf(27), new em());
    this.gNV.put(Integer.valueOf(28), new en());
    this.gNV.put(Integer.valueOf(31), new dq(2));
    this.gNV.put(Integer.valueOf(32), new dr(4));
    this.gNV.put(Integer.valueOf(33), new eh());
    this.gNV.put(Integer.valueOf(34), new dw());
    this.gNV.put(Integer.valueOf(35), new ee());
    this.gNV.put(Integer.valueOf(36), new dm());
    this.gNV.put(Integer.valueOf(37), new dn());
    this.gNV.put(Integer.valueOf(38), new er());
    this.gNV.put(Integer.valueOf(39), new eq());
    this.gNV.put(Integer.valueOf(40), new da());
    this.gNV.put(Integer.valueOf(48), new ck());
    this.gNV.put(Integer.valueOf(49), new cl());
    this.gNW = new ak();
    this.gNX = null;
    this.dYp = null;
    this.gKH = paramChattingUI;
    this.gNt = 211;
    this.gNu = paramChattingUI.getResources().getDimensionPixelSize(2131558427);
    this.gNv = paramChattingUI.getResources().getDimensionPixelSize(2131558428);
    this.gNr = new lm(paramChattingUI, new et(this, paramChattingUI), new eu(this));
    this.bNl = paramString1;
    gNs = paramString1;
    if (i.tC(paramString1));
    for (this.clp = i.tE(paramString2); ; this.clp = paramString2)
    {
      this.gMj = paramv;
      this.cLI = 0;
      this.gNp = -1;
      this.gNT = new TreeSet();
      this.gNI = paramOnCreateContextMenuListener;
      this.dYT = paramOnCreateContextMenuListener;
      ez localez = new ez(paramChattingUI, paramString1, paramv);
      this.gNx = localez;
      this.gNw = localez;
      fl localfl = new fl(paramOnCreateContextMenuListener, paramChattingUI);
      this.gNz = localfl;
      this.gNy = localfl;
      fg localfg = new fg(paramChattingUI);
      this.gNB = localfg;
      this.gNA = localfg;
      az localaz = new az(paramChattingUI);
      this.gND = localaz;
      this.gNC = localaz;
      ex localex = new ex(this);
      this.gNF = localex;
      this.gNE = localex;
      n localn = new n(paramChattingUI);
      this.gNH = localn;
      this.gNG = localn;
      Iterator localIterator = this.gNV.keySet().iterator();
      while (localIterator.hasNext())
      {
        Integer localInteger = (Integer)localIterator.next();
        ((ce)this.gNV.get(localInteger)).gJU = paramChattingUI.gJU;
      }
    }
    this.dLe = com.tencent.mm.ui.ez.bR(paramChattingUI);
  }

  private static short B(ak paramak)
  {
    int i = 1;
    int j;
    Map localMap;
    StringBuilder localStringBuilder;
    if (paramak.rO() == i)
    {
      j = i;
      localMap = gNU;
      localStringBuilder = new StringBuilder("T").append(paramak.getType());
      if (j == 0)
        break label82;
    }
    label82: for (String str = "S"; ; str = "R")
    {
      int k = au.c((Integer)localMap.get(str));
      if (k <= 0)
        break label90;
      return (short)k;
      j = 0;
      break;
    }
    label90: boolean bool1 = paramak.aBY();
    boolean bool2 = paramak.aBV();
    if (bool1)
    {
      if (j != 0)
        i = 3;
      return (short)i;
    }
    if (bool2)
    {
      if (j != 0);
      for (int i1 = 7; ; i1 = 6)
        return (short)i1;
    }
    if (paramak.aCd())
    {
      if (j != 0);
      for (int n = 15; ; n = 14)
        return (short)n;
    }
    if (j != 0);
    for (int m = 4; ; m = 2)
      return (short)m;
  }

  private static ak a(ak paramak, Cursor paramCursor)
  {
    if (paramak == null)
      paramak = new ak();
    paramak.convertFrom(paramCursor);
    return paramak;
  }

  public final void FZ()
  {
    Cursor localCursor;
    if (!this.gNR)
    {
      this.cLI = be.uz().sw().vl(this.bNl);
      if (this.gNp < 0)
        this.gNp = (-18 + this.cLI);
      localCursor = be.uz().sw().ak(this.bNl, this.gNp);
      if ((localCursor == null) || (localCursor.isClosed()))
      {
        aa.w("MicroMsg.ChattingListAdapter", "update pos fail, cursor is null");
        setCursor(localCursor);
      }
    }
    while (true)
    {
      int i = getCount();
      if (i > 0)
      {
        this.gNo = new short[i];
        this.dLa = new short[i];
      }
      super.notifyDataSetChanged();
      return;
      if (localCursor.moveToFirst())
      {
        this.gNW = a(this.gNW, localCursor);
        this.gNK = this.gNW.field_createTime;
      }
      if (localCursor.moveToLast())
      {
        this.gNW = a(this.gNW, localCursor);
        this.gNL = this.gNW.field_createTime;
      }
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Long.valueOf(this.gNK);
      arrayOfObject4[1] = Long.valueOf(this.gNL);
      aa.e("MicroMsg.ChattingListAdapter", "update pos topCreateTime[%d] downCreateTime[%d]", arrayOfObject4);
      break;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Boolean.valueOf(this.gNP);
      arrayOfObject1[1] = Boolean.valueOf(this.gNQ);
      aa.e("MicroMsg.ChattingListAdapter", "topLoadMore[%B] downLoadMore[%B]", arrayOfObject1);
      if ((!this.gNP) && (!this.gNQ) && (this.gNL >= this.gNM))
      {
        this.gNM = be.uz().sw().vr(this.bNl);
        this.gNO = Math.max(0, -1 + be.uz().sw().a(this.bNl, this.gNL, this.gNM));
        this.gNL = this.gNM;
      }
      if (this.gNP)
      {
        this.gNP = false;
        long l2 = be.uz().sw().k(this.bNl, this.gNK);
        this.gNN = Math.max(0, -1 + be.uz().sw().a(this.bNl, l2, this.gNK));
        this.gNK = l2;
      }
      if (this.gNQ)
      {
        this.gNQ = false;
        long l1 = be.uz().sw().l(this.bNl, this.gNL);
        this.gNO = Math.max(0, -1 + be.uz().sw().a(this.bNl, this.gNL, l1));
        this.gNL = l1;
      }
      Object[] arrayOfObject2 = new Object[5];
      arrayOfObject2[0] = Long.valueOf(this.gNK);
      arrayOfObject2[1] = Long.valueOf(this.gNL);
      arrayOfObject2[2] = Long.valueOf(this.gNM);
      arrayOfObject2[3] = Integer.valueOf(this.gNN);
      arrayOfObject2[4] = Integer.valueOf(this.gNO);
      aa.f("MicroMsg.ChattingListAdapter", "query topCreateTime[%d] downCreateTime[%d], lastCreateTime[%d], topInc[%d], bottomInc[%d]", arrayOfObject2);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(be.uz().sw().a(this.bNl, this.gNK, this.gNL));
      aa.f("MicroMsg.ChattingListAdapter", "count([top, down]) = %d", arrayOfObject3);
      setCursor(be.uz().sw().b(this.bNl, this.gNK, this.gNL));
    }
  }

  protected final void Ga()
  {
    setCursor(be.uz().sw().aAG());
  }

  public final int PG()
  {
    return this.cLI;
  }

  public final int VV()
  {
    if (this.gNR)
      return this.gNN;
    if (this.gNp < 18)
    {
      int i = this.gNp;
      this.gNp = 0;
      return i;
    }
    this.gNp = (-18 + this.gNp);
    return 18;
  }

  public final int XS()
  {
    return this.gNT.size();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.gNJ != null)
      this.gNJ.post(new ew(this));
  }

  public final void aJi()
  {
    this.gNP = true;
  }

  public final void aJj()
  {
    this.gNQ = true;
  }

  public final boolean aJk()
  {
    if (this.gNR)
    {
      this.gNM = be.uz().sw().vr(this.bNl);
      if (this.gNM >= this.gNL)
      {
        this.gNL = this.gNM;
        FZ();
        return true;
      }
    }
    return false;
  }

  public final boolean aJl()
  {
    if (!this.gNR)
      if (this.gNp > 0);
    long l;
    do
    {
      return true;
      return false;
      l = be.uz().sw().vq(this.bNl);
    }
    while (this.gNK <= l);
    return false;
  }

  public final boolean aJm()
  {
    if (!this.gNR);
    long l;
    do
    {
      return true;
      l = be.uz().sw().vr(this.bNl);
    }
    while (this.gNL >= l);
    return false;
  }

  public final Set aJn()
  {
    return this.gNT;
  }

  public final void aJo()
  {
    this.gNT.clear();
  }

  public final void aJp()
  {
    this.gNS = true;
    notifyDataSetChanged();
    aa.d("MicroMsg.ChattingListAdapter", "disable clickListener");
    this.gNw = null;
    this.gNy = null;
    this.gNA = null;
    this.gNC = null;
    this.gNE = null;
    this.gNG = null;
  }

  public final void aJq()
  {
    this.gNS = false;
    notifyDataSetChanged();
    aa.d("MicroMsg.ChattingListAdapter", "enable ClickListener");
    this.gNw = this.gNx;
    this.gNy = this.gNz;
    this.gNA = this.gNB;
    this.gNC = this.gND;
    this.gNE = this.gNF;
    this.gNG = this.gNH;
  }

  public final boolean ap(Context paramContext, String paramString)
  {
    try
    {
      this.dYp = new g(au.b(paramContext.getAssets().open(paramString)));
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final void c(Handler paramHandler)
  {
    this.gNJ = paramHandler;
  }

  public final int cd(long paramLong)
  {
    ak localak = be.uz().sw().bU(paramLong);
    if (localak == null)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Long.valueOf(paramLong);
      aa.c("MicroMsg.ChattingListAdapter", "get msg info by id %d error", arrayOfObject4);
      return 0;
    }
    long l = localak.field_createTime;
    int j;
    if ((l < this.gNK) || (l > this.gNL))
    {
      this.gNK = l;
      this.gNL = be.uz().sw().l(this.bNl, l);
      this.gNM = be.uz().sw().vr(this.bNl);
      this.gNR = true;
      int i = be.uz().sw().a(this.bNl, this.gNK, this.gNL);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.f("MicroMsg.ChattingListAdapter", "reset position, reload count %d", arrayOfObject1);
      if (i >= 18)
        break label343;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Long.valueOf(this.gNK);
      arrayOfObject3[1] = Integer.valueOf(0);
      aa.e("MicroMsg.ChattingListAdapter", "reload count less than on scene, bottom not more data, try up to load more data, and reset selection, old top msg create time %d, old selection %d", arrayOfObject3);
      this.gNK = be.uz().sw().k(this.bNl, this.gNK);
      j = be.uz().sw().a(this.bNl, this.gNK, l);
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[5];
      arrayOfObject2[0] = Long.valueOf(paramLong);
      arrayOfObject2[1] = Long.valueOf(this.gNK);
      arrayOfObject2[2] = Long.valueOf(this.gNL);
      arrayOfObject2[3] = Long.valueOf(this.gNM);
      arrayOfObject2[4] = Integer.valueOf(j);
      aa.f("MicroMsg.ChattingListAdapter", "set local message id, id[%d] top create time[%d] bottom create time[%d] last create time[%d] selection[%d]", arrayOfObject2);
      return j;
      j = be.uz().sw().a(this.bNl, this.gNK, l);
      continue;
      label343: j = 0;
    }
  }

  public final boolean ce(long paramLong)
  {
    if (this.gNT.contains(Long.valueOf(paramLong)))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(paramLong);
      aa.e("MicroMsg.ChattingListAdapter", "remove select item, msgId = %d", arrayOfObject2);
      this.gNT.remove(Long.valueOf(paramLong));
    }
    while (true)
    {
      ca(null);
      return true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(paramLong);
      aa.e("MicroMsg.ChattingListAdapter", "add select item, msgId = %d", arrayOfObject1);
      if (this.gNT.size() >= 100)
      {
        h.p(this.gKH, this.gKH.getString(2131165696), "");
        return false;
      }
      this.gNT.add(Long.valueOf(paramLong));
    }
  }

  public final void ei(String paramString)
  {
    ca(null);
  }

  public final int getItemViewType(int paramInt)
  {
    return B((ak)getItem(paramInt));
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ak localak1 = (ak)getItem(paramInt);
    ak localak2;
    long l1;
    long l2;
    int i1;
    if ((paramInt != 0) && ((this.dLa[paramInt] == 0) || (this.gNo[(paramInt - 1)] == 0)))
    {
      localak2 = (ak)getItem(paramInt - 1);
      l1 = localak2.DL();
      l2 = localak1.DL();
      if (l2 - l1 >= 60000L)
        break label680;
      i1 = 1;
    }
    while (true)
    {
      int i2;
      label92: label109: int i;
      label169: boolean bool1;
      label188: ce localce1;
      label226: cf localcf;
      int k;
      label254: boolean bool2;
      label296: ce localce2;
      if ((l2 - l1) / 180000L < 1L)
      {
        i2 = 1;
        if ((i1 == 0) && (i2 == 0))
          break label692;
        this.dLa[paramInt] = 2;
        this.gNo[(paramInt - 1)] = B(localak2);
        if (((this.dLa[paramInt] != 1) && (paramInt != 0) && (!this.gNq.contains(Long.valueOf(localak1.Bo())))) || (localak1.DL() <= 1000L))
          break label702;
        i = 1;
        int j = localak1.getType();
        if (localak1.rO() != 1)
          break label708;
        bool1 = true;
        localce1 = o(j, bool1);
        if (localce1 == null)
          break label714;
        this.gNo[paramInt] = ((short)localce1.aJh());
        paramView = localce1.a(this.dLe, paramView);
        localcf = (cf)paramView.getTag();
        Assert.assertNotNull(paramView);
        Assert.assertNotNull(localcf);
        if (!this.gNS)
          break label767;
        k = 1;
        localcf.gMz = k;
        if (i == 0)
          break label773;
        localcf.dkq.setVisibility(0);
        localcf.dkq.setText(e.b(this.gKH, localak1.DL(), false));
        int m = localak1.getType();
        if (localak1.rO() != 1)
          break label786;
        bool2 = true;
        localce2 = o(m, bool2);
        if (localce2 != null)
        {
          this.gNo[paramInt] = ((short)localce2.aJh());
          localcf.gMA = 0L;
          if ((be.nS() == null) || (be.nS().op() == null) || (be.nS().oo() != 0));
        }
      }
      try
      {
        localcf.gMA = Long.parseLong(be.nS().op());
        localce2.a(localcf, paramInt, this.gKH, localak1);
        if ((localcf.dkq.getVisibility() == 0) && (this.dYp != null))
        {
          localcf.dkq.setTextColor(this.dYp.aqQ());
          if (this.dYp.aqW())
          {
            localcf.dkq.setShadowLayer(2.0F, 1.2F, 1.2F, this.dYp.aqR());
            if (!this.dYp.aqS())
              break label818;
            localcf.dkq.setBackgroundResource(2130837807);
            localcf.dkq.setPadding(this.gNv, this.gNu, this.gNv, this.gNu);
          }
        }
        else
        {
          if ((localcf.gMy != null) && (localcf.gMy.getVisibility() == 0) && (this.dYp != null) && (!this.bNl.equals("qqmail")))
          {
            localcf.gMy.setTextColor(this.dYp.aqT());
            localcf.gMy.setShadowLayer(0.0F, 0.0F, 0.0F, 0);
          }
          if (!this.gNS)
            break label836;
          if (!localak1.isSystem())
            break label830;
          n = 0;
          if (n == 0)
            break label836;
          if (localcf.daW != null)
            localcf.daW.setChecked(this.gNT.contains(Long.valueOf(localak1.Bo())));
          if (localcf.eyN != null)
          {
            localcf.eyN.setTag(Long.valueOf(localak1.Bo()));
            localcf.eyN.setOnClickListener(this.gNX);
          }
          localcf.dJ(true);
          return paramView;
          label680: i1 = 0;
          continue;
          i2 = 0;
          break label92;
          label692: this.dLa[paramInt] = 1;
          break label109;
          label702: i = 0;
          break label169;
          label708: bool1 = false;
          break label188;
          label714: if ((localce1 != null) || (paramView != null))
            break label226;
          aa.e("MicroMsg.ChattingListAdapter", "inflating fail, item & convertView both are null, msgtype = " + localak1.getType() + ", isSend = " + localak1.rO());
          break label226;
          label767: k = 0;
          break label254;
          label773: localcf.dkq.setVisibility(8);
          break label296;
          label786: bool2 = false;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localcf.gMA = 0L;
          continue;
          localcf.dkq.setShadowLayer(0.0F, 0.0F, 0.0F, 0);
          continue;
          label818: localcf.dkq.setBackgroundColor(0);
          continue;
          label830: int n = 1;
        }
        label836: localcf.dJ(false);
      }
    }
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 51;
  }

  public final boolean isInEditMode()
  {
    return this.gNS;
  }

  public final void nz(int paramInt)
  {
    ak localak = (ak)getItem(paramInt);
    if ((localak != null) && (localak.Bo() != 0L))
      this.gNq.add(Long.valueOf(localak.Bo()));
  }

  public final ce o(int paramInt, boolean paramBoolean)
  {
    Map localMap1 = gNU;
    StringBuilder localStringBuilder1 = new StringBuilder("T").append(paramInt);
    String str1;
    int i;
    Map localMap2;
    StringBuilder localStringBuilder2;
    if (paramBoolean)
    {
      str1 = "S";
      i = au.c((Integer)localMap1.get(str1));
      if (i == 0)
      {
        localMap2 = gNU;
        localStringBuilder2 = new StringBuilder("T1");
        if (!paramBoolean)
          break label133;
      }
    }
    label133: for (String str2 = "S"; ; str2 = "R")
    {
      i = au.c((Integer)localMap2.get(str2));
      return (ce)this.gNV.get(Integer.valueOf(i));
      str1 = "R";
      break;
    }
  }

  public final void o(View.OnClickListener paramOnClickListener)
  {
    this.gNX = paramOnClickListener;
  }

  public final boolean wB(String paramString)
  {
    try
    {
      this.dYp = new g(au.b(new FileInputStream(paramString)));
      return true;
    }
    catch (Exception localException)
    {
      this.dYp = null;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.es
 * JD-Core Version:    0.6.2
 */