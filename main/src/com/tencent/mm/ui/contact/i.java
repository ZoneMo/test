package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.support.v4.app.Fragment;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.p.u;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.pluginsdk.ui.e;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.ui.AddressView;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.cy;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.ui.base.dc;
import com.tencent.mm.ui.h;
import info.guardianproject.database.IHeapCursor;
import info.guardianproject.database.MergeHeapCursor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class i extends h
  implements com.tencent.mm.sdk.e.ar
{
  public static final ColorStateList gSp = com.tencent.mm.an.a.j(al.getContext(), 2131493120);
  public static final ColorStateList gSq = com.tencent.mm.an.a.j(al.getContext(), 2131492910);
  private String cIs = "";
  protected List cKz = null;
  protected dc cPK;
  protected cy cPL;
  protected cz cPN = MMSlideDelView.aHp();
  private com.tencent.mm.ui.applet.b cqO = null;
  private int dKE = 0;
  private List dKF;
  protected String dKG = null;
  protected int[] dKH;
  private String[] dKI;
  private boolean dKJ = true;
  protected db dNc;
  private boolean dkP = false;
  private String[] gKD = null;
  protected String gRX = null;
  private List gRY;
  private int gRZ = 0;
  protected m gSa;
  private boolean gSc = false;
  private boolean gSd = false;
  public HashMap gSi = new HashMap();
  private Set gSj = new HashSet();
  private k gSk;
  private String gSl;
  private LinkedList gSm = new LinkedList();
  private boolean gSn;
  private HashMap gSo = new HashMap();
  View.OnClickListener gSr = new j(this);
  private SparseArray gSs = new SparseArray();
  private SparseArray gSt = new SparseArray();
  private HashSet gSu = new HashSet();
  StringBuilder sb = new StringBuilder(32);
  private int type;

  public i(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    super(paramContext);
    this.context = paramContext;
    this.dKG = paramString1;
    this.gRX = paramString2;
    this.type = paramInt;
    this.gSc = true;
    this.dKF = new LinkedList();
    this.gRY = new LinkedList();
    this.gSl = v.th();
    this.TAG = "MiscroMsg.AddressDrawWithCacheAdapter";
  }

  private int a(com.tencent.mm.storage.a parama, int paramInt)
  {
    if (paramInt < this.dKE)
      return 32;
    return parama.rl();
  }

  private boolean aKn()
  {
    return (this.dKG.equals("@micromsg.qq.com")) || (this.dKG.equals("@all.contact.without.chatroom"));
  }

  private String b(com.tencent.mm.storage.a parama, int paramInt)
  {
    String str1;
    if (paramInt < this.dKE)
      str1 = getString(2131166196);
    do
    {
      return str1;
      if (parama.rl() == 31)
        return "";
      if (parama.rl() == 123)
        return "#";
      if (parama.rl() == 33)
        return getString(2131166199);
      if (parama.rl() == 43)
        return getString(2131167554);
      if (parama.rl() == 32)
        return getString(2131166196);
      str1 = (String)this.gSs.get(parama.rl());
    }
    while (str1 != null);
    String str2 = String.valueOf((char)parama.rl());
    this.gSs.put(parama.rl(), str2);
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

  public final String[] VG()
  {
    aa.v("MicroMsg.AddressAdapter", "getSections");
    return this.dKI;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if (paramao == be.uz().su())
    {
      if ((!w.cs((String)paramObject)) && (!this.gSu.contains((String)paramObject)))
        super.i((String)paramObject, 2);
    }
    else
      return;
    aa.d("MicroMsg.AddressAdapter", "newcursor is stranger ，return");
  }

  public final void a(cy paramcy)
  {
    this.cPL = paramcy;
  }

  public final void a(db paramdb)
  {
    this.dNc = paramdb;
  }

  public final void a(dc paramdc)
  {
    this.cPK = paramdc;
  }

  public final void a(k paramk)
  {
    this.gSk = paramk;
  }

  public final SparseArray[] a(HashSet paramHashSet, SparseArray[] paramArrayOfSparseArray)
  {
    SparseArray[] arrayOfSparseArray = new SparseArray[paramArrayOfSparseArray.length];
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add("weixin");
    long l = System.currentTimeMillis();
    Cursor localCursor = be.uz().su().b(this.dKG, this.gRX, this.cKz, localLinkedList, aKn(), this.gSc);
    if ((localCursor instanceof MergeHeapCursor))
    {
      IHeapCursor[] arrayOfIHeapCursor = ((MergeHeapCursor)localCursor).getCursors();
      int j = arrayOfIHeapCursor.length;
      for (int k = 0; k < j; k++)
      {
        arrayOfIHeapCursor[k].setPageSize(5000);
        arrayOfSparseArray[k] = new SparseArray();
        for (int m = 0; arrayOfIHeapCursor[k].moveToNext(); m++)
          arrayOfSparseArray[k].put(m, arrayOfIHeapCursor[k].getString(0));
      }
      this.dKE = arrayOfIHeapCursor[0].getCount();
    }
    while (true)
    {
      localCursor.close();
      aa.d("MicroMsg.AddressAdapter", "refreshPosistion last :" + (System.currentTimeMillis() - l));
      return arrayOfSparseArray;
      arrayOfSparseArray[0] = new SparseArray();
      for (int i = 0; localCursor.moveToNext(); i++)
        arrayOfSparseArray[0].put(i, localCursor.getString(0));
    }
  }

  public final void aB(List paramList)
  {
    if (this.cKz == null)
      this.cKz = new LinkedList();
    this.cKz.clear();
    this.cKz.addAll(paramList);
    if (this.type != 2)
      this.cKz.add(v.th());
    ca localca = be.uz().sz().vB("@t.qq.com");
    if (localca != null)
      this.cKz.add(localca.getName());
    if ((this.type == 3) || (this.type == 5) || (this.type == 4) || (this.type == 1) || (this.type == 0))
    {
      Iterator localIterator = w.tL().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.cKz.add(str);
      }
    }
  }

  public final IHeapCursor aDX()
  {
    long l = System.currentTimeMillis();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add("weixin");
    Cursor localCursor = be.uz().su().a(this.dKG, this.gRX, this.cKz, localLinkedList, aKn(), this.gSc);
    aa.d("MicroMsg.AddressAdapter", "kevin setCursor : " + (System.currentTimeMillis() - l));
    return (IHeapCursor)localCursor;
  }

  public final void aKo()
  {
    this.gSd = true;
  }

  protected final void aKp()
  {
    this.dKE = aDW();
    if (this.gKD != null)
    {
      this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.gKD);
      this.dKI = w.a(this.dKG, this.gRX, this.gKD, this.cKz);
    }
    while (true)
    {
      this.gSj.clear();
      for (int m : this.dKH)
        this.gSj.add(Integer.valueOf(m - 1));
      int i = getCount();
      if (hasLoadAllData())
      {
        long l2 = System.currentTimeMillis();
        HashSet localHashSet = new HashSet();
        this.dKH = new int[30];
        this.dKI = new String[30];
        int n = this.dKE;
        int i1 = 0;
        if (n < i)
        {
          com.tencent.mm.storage.a locala = (com.tencent.mm.storage.a)getItem(n);
          if (locala != null)
          {
            String str = b(locala, n);
            if (!localHashSet.add(str))
              break label262;
            this.dKH[i1] = (n - this.dKE);
            this.dKI[i1] = str;
          }
          label262: for (int i2 = i1 + 1; ; i2 = i1)
          {
            n++;
            i1 = i2;
            break;
            aa.d("MicroMsg.AddressAdapter", "newCursor getItem is null");
          }
        }
        aa.d("MicroMsg.AddressAdapter", "newCursor resetShowHead by Memory : " + (System.currentTimeMillis() - l2) + "favourCount : " + this.dKE);
      }
      else
      {
        long l1 = System.currentTimeMillis();
        this.dKH = w.a(this.dKG, this.gRX, this.cKz, this.cIs);
        this.dKI = w.a(this.dKG, this.gRX, this.cIs, this.cKz);
        aa.d("MicroMsg.AddressAdapter", "kevin resetShowHead part1 : " + (System.currentTimeMillis() - l1));
      }
    }
  }

  public final void aKq()
  {
    this.cPN.aik();
  }

  public final void aKr()
  {
    super.i(null, 1);
  }

  public final void av(String paramString, int paramInt)
  {
    if (paramInt == 5)
      this.gSu.add(paramString);
    super.i(paramString, paramInt);
  }

  public final void clearCache()
  {
    this.gSo.clear();
    this.gSm.clear();
    this.gSn = false;
  }

  public final void dP(boolean paramBoolean)
  {
    this.dkP = paramBoolean;
  }

  public final void detach()
  {
    if (this.cqO != null)
    {
      this.cqO.detach();
      this.cqO = null;
    }
  }

  public final int getCount()
  {
    return super.getCount();
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
      for (int k = 0; k < 8; k++)
        this.gSm.add(View.inflate(this.context, 2130903071, null));
      this.gSn = true;
    }
    com.tencent.mm.storage.a locala1 = (com.tencent.mm.storage.a)getItem(paramInt);
    View localView1;
    l locall1;
    label210: com.tencent.mm.storage.a locala2;
    int i;
    label230: int j;
    label286: label344: label364: CharSequence localCharSequence1;
    if (paramView == null)
      if (this.gSm.size() > 0)
      {
        View localView2 = (View)this.gSm.getFirst();
        this.gSm.removeFirst();
        localView1 = localView2;
        l locall2 = new l();
        locall2.cMT = ((TextView)localView1.findViewById(2131361912));
        locall2.gSg = ((TextView)localView1.findViewById(2131361919));
        locall2.gSw = ((AddressView)localView1.findViewById(2131361929));
        locall2.gSx = ((TextView)localView1.findViewById(2131361928));
        locall2.gSy = localView1.findViewById(2131361927);
        this.gSa.aKu().a(locall2.gSw);
        localView1.setTag(locall2);
        paramView = localView1;
        locall1 = locall2;
        locala2 = (com.tencent.mm.storage.a)getItem(paramInt - 1);
        if (locala2 != null)
          break label600;
        i = -1;
        j = a(locala1, paramInt);
        if (!this.dKJ)
          break label664;
        if (paramInt != 0)
          break label614;
        String str4 = b(locala1, paramInt);
        if (au.hX(str4))
          break label664;
        locall1.cMT.setVisibility(0);
        locall1.cMT.setText(str4);
        c.a(locall1.gSw, locala1.getUsername());
        if (locala1.rJ() == 0)
          break label689;
        String str2 = com.tencent.mm.model.ar.ub().cq(locala1.rJ());
        if (str2 == null)
          break label677;
        Bitmap localBitmap = u.eN(str2);
        locall1.gSw.setMaskBitmap(localBitmap);
        if (locala1.field_deleteFlag != 1)
          break label701;
        locall1.gSw.setNickNameTextColor(gSq);
        localCharSequence1 = locala1.aAd();
        if (localCharSequence1 != null)
          break label730;
      }
    while (true)
    {
      try
      {
        Context localContext = this.context;
        locala1.getUsername();
        Object localObject2 = locala1.rr();
        String str1 = locala1.getUsername();
        if ((localObject2 != null) && (((String)localObject2).length() > 0))
        {
          if (("".length() > 0) && (!"".equals(localObject2)))
          {
            this.sb.append((String)localObject2);
            this.sb.append("(");
            this.sb.append("");
            this.sb.append(")");
            localObject2 = this.sb.toString();
            this.sb.delete(0, this.sb.length());
          }
          CharSequence localCharSequence2 = com.tencent.mm.ao.b.f(localContext, (String)localObject2, (int)locall1.gSw.getNickNameSize());
          localObject1 = localCharSequence2;
          if (localObject1 == null)
            localObject1 = "";
          locall1.gSw.setName((CharSequence)localObject1);
          com.tencent.mm.storage.a.aAc();
          locall1.gSw.updatePositionFlag();
          if (locala1.field_deleteFlag != 1)
            break label743;
          locall1.gSx.setVisibility(0);
          return paramView;
          localView1 = View.inflate(this.context, 2130903071, null);
          break;
          locall1 = (l)paramView.getTag();
          break label210;
          label600: i = a(locala2, paramInt - 1);
          break label230;
          label614: if ((paramInt > 0) && (j != i))
          {
            String str3 = b(locala1, paramInt);
            if (!au.hX(str3))
            {
              locall1.cMT.setVisibility(0);
              locall1.cMT.setText(str3);
              break label286;
            }
          }
          label664: locall1.cMT.setVisibility(8);
          break label286;
          label677: locall1.gSw.setMaskBitmap(null);
          break label344;
          label689: locall1.gSw.setMaskBitmap(null);
          break label344;
          label701: locall1.gSw.setNickNameTextColor(gSp);
          break label364;
        }
        localObject2 = str1;
        continue;
      }
      catch (Exception localException)
      {
        Object localObject1 = null;
        continue;
      }
      label730: locall1.gSw.setName(localCharSequence1);
    }
    label743: locall1.gSx.setVisibility(8);
    return paramView;
  }

  public final void i(Fragment paramFragment)
  {
    this.gSa = ((m)paramFragment);
  }

  public final void notifyDataSetChanged()
  {
    this.gSl = v.th();
    if (this.dKH == null)
      aKp();
    this.dKE = aDW();
    aa.i("MicroMsg.AddressAdapter", "newcursor favourCount %d" + this.dKE);
    super.notifyDataSetChanged();
  }

  public final void pause()
  {
    this.gSu.clear();
    super.pause();
  }

  public final ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList1 = new ArrayList();
    for (int i = 0; i < paramArrayList.size(); i++)
      localArrayList1.add((String)paramArrayList.get(i));
    ArrayList localArrayList2 = new ArrayList(localArrayList1.size());
    Cursor localCursor = be.uz().su().ar(localArrayList1);
    while (localCursor.moveToNext())
    {
      com.tencent.mm.storage.a locala = new com.tencent.mm.storage.a();
      locala.convertFrom(localCursor);
      localArrayList2.add(locala);
    }
    localCursor.close();
    aa.d("MicroMsg.AddressAdapter", "rebulidAllChangeData :" + (System.currentTimeMillis() - l));
    return localArrayList2;
  }

  public final void wH(String paramString)
  {
    this.dKJ = true;
    String str = paramString.trim();
    if (str.startsWith("@"))
      if ((this.dKG == null) || (this.dKG.length() <= 0))
        break label114;
    label114: for (str = str.substring(1) + "%" + this.dKG; ; str = str.substring(1) + "%@t.qq.com")
    {
      aa.d("MicroMsg.AddressAdapter", "dkvoice [" + str + "]");
      this.cIs = str;
      this.gKD = null;
      av(null, 0);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.i
 * JD-Core Version:    0.6.2
 */