package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.format.Time;
import android.text.style.ForegroundColorSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.ap;
import com.tencent.mm.pluginsdk.e.d;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.NoMeasuredTextView;
import com.tencent.mm.ui.base.cy;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.ui.base.dc;
import com.tencent.mm.ui.l;
import info.guardianproject.database.IHeapCursor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class ab extends com.tencent.mm.ui.h
  implements ar
{
  private String cIs;
  protected List cKz = null;
  protected dc cPK;
  protected cy cPL;
  protected db cPM;
  protected cz cPN = MMSlideDelView.aHp();
  boolean eAA = false;
  private ColorStateList[] gXT = new ColorStateList[5];
  private HashMap gXU;
  private boolean gXV = true;
  private Typeface gXX;
  private float gXY = -1.0F;
  private float gXZ = -1.0F;
  private ad gYH = null;
  private HashSet gYI;
  private HashSet gYJ;
  private HashSet gYK;
  private boolean gYL = false;
  private boolean gYM = false;
  final ag gYN = new ag(this);
  private float gYO = -1.0F;
  private com.tencent.mm.pluginsdk.ui.e gYa;
  private boolean gYd = false;
  private g gYg = null;
  public String gYi = "";
  public boolean glB = false;
  private boolean gpY = false;

  public ab(Context paramContext, com.tencent.mm.ui.k paramk)
  {
    super(paramContext, (short)0);
    this.TAG = "MicroMsg.ConversationWithCacheAdapter";
    super.a(paramk);
    this.gXT[0] = com.tencent.mm.an.a.j(paramContext, 2131492910);
    this.gXT[1] = com.tencent.mm.an.a.j(paramContext, 2131493126);
    this.gXT[3] = com.tencent.mm.an.a.j(paramContext, 2131492907);
    this.gXT[2] = com.tencent.mm.an.a.j(paramContext, 2131493123);
    this.gXT[2] = com.tencent.mm.an.a.j(paramContext, 2131493123);
    this.gXT[4] = com.tencent.mm.an.a.j(paramContext, 2131492912);
    this.gXU = new HashMap();
    this.gYI = new HashSet();
    this.gYJ = new HashSet();
    this.gYK = new HashSet();
    this.gXY = paramContext.getResources().getDimension(2131558419);
    this.gXZ = paramContext.getResources().getDimension(2131558420);
    this.gXX = Typeface.create("sans-serif-medium", 0);
  }

  private SparseArray a(l paraml, SparseArray paramSparseArray, HashMap paramHashMap)
  {
    String str = (String)paraml.fc;
    int i = paramSparseArray.size();
    n localn1 = (n)paraml.gkS;
    int j = paramSparseArray.size();
    int k = 0;
    if (k < j)
      if (((String)paramSparseArray.get(k)).equals(str))
      {
        label57: Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = str;
        arrayOfObject[1] = Integer.valueOf(i);
        arrayOfObject[2] = Integer.valueOf(k);
        aa.e("MicroMsg.ConversationWithCacheAdapter", "resortPosition username %s,  size %d, position %d", arrayOfObject);
        switch (paraml.gkR)
        {
        case 3:
        case 4:
        default:
          label132: if (k < 0)
            aa.e("MicroMsg.ConversationWithCacheAdapter", "CursorDataAdapter.CHANGE_TYPE_UPDATE  position < 0");
          break;
        case 5:
        case 2:
        }
      }
    label481: label633: label637: 
    while (true)
    {
      return paramSparseArray;
      k++;
      break;
      k = -1;
      break label57;
      if (k >= 0)
      {
        while (k < i - 1)
        {
          paramSparseArray.put(k, paramSparseArray.get(k + 1));
          k++;
        }
        paramSparseArray.remove(i - 1);
        return paramSparseArray;
        if (localn1 == null)
        {
          aa.e("MicroMsg.ConversationWithCacheAdapter", "CursorDataAdapter.CHANGE_TYPE_INSERT  cov == null");
          if (k >= 0)
          {
            aa.b("MicroMsg.ConversationWithCacheAdapter", "CursorDataAdapter.CHANGE_TYPE_INSERT  cov == null delete it username %s", new Object[] { str });
            while (k < i - 1)
            {
              paramSparseArray.put(k, paramSparseArray.get(k + 1));
              k++;
            }
            paramSparseArray.remove(i - 1);
            return paramSparseArray;
          }
        }
        else
        {
          if (k >= 0)
            break label132;
          for (int m = 0; (m < i) && (c((String)paramSparseArray.get(m), paramHashMap).field_flag > localn1.field_flag); m++);
          for (int n = i; n > m; n--)
            paramSparseArray.put(n, paramSparseArray.get(n - 1));
          paramSparseArray.put(m, str);
          return paramSparseArray;
          n localn2 = c(str, paramHashMap);
          if (localn1 == null)
          {
            aa.b("MicroMsg.ConversationWithCacheAdapter", "CursorDataAdapter.CHANGE_TYPE_UPDATE  cov == null delete it username %s", new Object[] { str });
            while (k < i - 1)
            {
              paramSparseArray.put(k, paramSparseArray.get(k + 1));
              k++;
            }
            paramSparseArray.remove(i - 1);
            return paramSparseArray;
          }
          long l1 = localn2.field_flag;
          long l2 = localn1.field_flag;
          if (l1 != l2)
          {
            int i3;
            int i4;
            int i5;
            int i6;
            if (l1 < l2)
            {
              int i9 = k - 1;
              i3 = 0;
              i4 = i9;
              i5 = 1;
              i6 = i3;
              if (i6 > i4)
                break label633;
              if (c((String)paramSparseArray.get(i6), paramHashMap).field_flag > localn1.field_flag)
                break label580;
            }
            for (int i7 = 1; ; i7 = 0)
            {
              if (i7 == 0)
                break label637;
              if (i5 != 0)
              {
                while (k > i6)
                {
                  paramSparseArray.put(k, paramSparseArray.get(k - 1));
                  k--;
                }
                int i1 = k + 1;
                int i2 = i - 1;
                i3 = i1;
                i4 = i2;
                i5 = 0;
                break;
                i6++;
                break label481;
              }
              int i8 = i6 - 1;
              while (k < i8)
              {
                paramSparseArray.put(k, paramSparseArray.get(k + 1));
                k++;
              }
              i8 = i6;
              paramSparseArray.put(i8, str);
              return paramSparseArray;
            }
          }
        }
      }
    }
  }

  private void a(af paramaf)
  {
    if ((paramaf.dtw) && (paramaf.cTv == null))
    {
      paramaf.nickName = this.context.getString(2131165739);
      return;
    }
    paramaf.nickName = com.tencent.mm.ao.b.f(this.context, paramaf.cTv, (int)this.gYO);
  }

  private void aLn()
  {
    if (this.gXU == null);
    while (true)
    {
      return;
      Iterator localIterator = this.gXU.entrySet().iterator();
      while (localIterator.hasNext())
        ((af)((Map.Entry)localIterator.next()).getValue()).gYo = null;
    }
  }

  public static void aLu()
  {
  }

  private void aLz()
  {
    if (this.gYJ != null)
      this.gYJ.clear();
    if ((this.gXU == null) || (this.gYI == null) || (this.gYI.isEmpty()))
      return;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.gYI.size());
    aa.e("MicroMsg.ConversationWithCacheAdapter", "dealWithContactEvents contactEvents size %d", arrayOfObject1);
    Iterator localIterator = this.gYI.iterator();
    int i = 0;
    String str1;
    boolean bool3;
    while (true)
      if (localIterator.hasNext())
      {
        str1 = (String)localIterator.next();
        if ((str1 != null) && (!str1.equals("")))
          if (this.gXU.containsKey(str1))
          {
            af localaf = (af)this.gXU.get(str1);
            if (localaf == null)
              break label410;
            this.gYN.uK(str1);
            boolean bool1 = com.tencent.mm.model.w.cp(str1);
            com.tencent.mm.storage.i locali = this.gYN.aLq();
            if (locali == null)
              continue;
            String str2 = com.tencent.mm.model.w.a(locali, str1, bool1);
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = str2;
            arrayOfObject2[1] = localaf.cTv;
            aa.e("MicroMsg.ConversationWithCacheAdapter", "dealWithContactEvents newdisplayname %s old dispalyname %s", arrayOfObject2);
            if ((str2 != null) && (!str2.equals(localaf.cTv)))
            {
              localaf.cTv = str2;
              a(localaf);
              i = 1;
            }
            boolean bool2 = locali.rf();
            if (locali.ry() == 0)
            {
              bool3 = true;
              label265: if ((localaf.gYu == bool2) && (bool3 == localaf.gYx))
                break label410;
              localaf.gYu = bool2;
              localaf.gYx = bool3;
              localaf.gYy = locali.rg();
              aa.e("MicroMsg.ConversationWithCacheAdapter", "dealWithContactEvents in cache username %s mute change", new Object[] { str1 });
              this.gYJ.add(str1);
              a(3, be.uz().sx(), str1);
            }
          }
      }
    label410: for (int j = 1; ; j = i)
    {
      i = j;
      break;
      bool3 = false;
      break label265;
      aa.e("MicroMsg.ConversationWithCacheAdapter", "dealWithContactEvents not in cache username %s mute change", new Object[] { str1 });
      this.gYJ.add(str1);
      break;
      if (i != 0)
        notifyDataSetChanged();
      this.gYI.clear();
      return;
    }
  }

  private CharSequence b(n paramn, int paramInt, boolean paramBoolean)
  {
    if ((!au.hX(paramn.field_editingMsg)) && ((paramn.field_atCount <= 0) || (paramn.field_unReadCount <= 0)))
    {
      SpannableStringBuilder localSpannableStringBuilder2 = new SpannableStringBuilder(this.context.getString(2131165610));
      localSpannableStringBuilder2.setSpan(new ForegroundColorSpan(-5569532), 0, localSpannableStringBuilder2.length(), 33);
      localSpannableStringBuilder2.append(" ").append(com.tencent.mm.ao.b.d(this.context, paramn.field_editingMsg, paramInt));
      return localSpannableStringBuilder2;
    }
    String str1 = paramn.getUsername();
    if (str1.equals("qqmail"))
    {
      if (au.c((Integer)be.uz().sr().get(17)) == 1);
      for (int k = 1; k == 0; k = 0)
        return this.context.getString(2131165862);
    }
    if (str1.equals("tmessage"))
    {
      ca localca = be.uz().sz().vB("@t.qq.com");
      if ((localca != null) && (localca.aBS()));
      for (int j = 1; j == 0; j = 0)
        return this.context.getString(2131165862);
    }
    if (str1.equals("qmessage"))
    {
      if ((0x40 & v.tl()) != 0);
      for (int i = 1; i == 0; i = 0)
        return this.context.getString(2131165862);
    }
    String str6;
    String str7;
    String str8;
    String str3;
    if ((paramn.field_msgType != null) && ((paramn.field_msgType.equals("47")) || (paramn.field_msgType.equals("1048625"))))
    {
      String str5 = xb(paramn.field_digest);
      str6 = "";
      if (str5 != null)
        return "[" + str5 + "]";
      if ((paramn.field_digest != null) && (paramn.field_digest.contains(":")))
      {
        str6 = paramn.field_digest.substring(0, paramn.field_digest.indexOf(":"));
        String str9 = xb(paramn.field_digest.substring(1 + paramn.field_digest.indexOf(":")).replace(" ", ""));
        if (str9 != null)
        {
          String str10 = "[" + str9 + "]";
          if (au.hX(str6))
            return str10;
          return str6 + ": " + str10;
        }
      }
      str7 = this.context.getString(2131167720);
      if (au.hX(str6))
      {
        str8 = str7;
        paramn.field_digest = str8;
      }
    }
    else
    {
      if (au.hX(paramn.field_digest))
        break label718;
      if (au.hX(paramn.field_digestUser))
        break label707;
      if ((paramn.field_isSend != 0) || (!com.tencent.mm.model.w.cp(paramn.field_username)))
        break label695;
      str3 = com.tencent.mm.model.w.q(paramn.field_digestUser, paramn.field_username);
    }
    String str2;
    while (true)
    {
      try
      {
        String str4 = String.format(paramn.field_digest, new Object[] { str3 });
        str2 = str4;
        if ((paramn.field_atCount <= 0) || (paramn.field_unReadCount <= 0))
          break label749;
        SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder(this.context.getString(2131165612));
        localSpannableStringBuilder1.setSpan(new ForegroundColorSpan(-5569532), 0, localSpannableStringBuilder1.length(), 33);
        localSpannableStringBuilder1.append(" ").append(com.tencent.mm.ao.b.d(this.context, str2, paramInt));
        return localSpannableStringBuilder1;
        str8 = str6 + ": " + str7;
        break;
        label695: str3 = com.tencent.mm.model.w.cu(paramn.field_digestUser);
        continue;
        label707: str2 = paramn.field_digest;
        continue;
      }
      catch (Exception localException)
      {
      }
      label718: str2 = com.tencent.mm.booter.w.a(paramn.rO(), paramn.getUsername(), paramn.getContent(), iM(paramn.rR()), this.context);
    }
    label749: if ((paramBoolean) && (paramn.rN() > 1))
    {
      Context localContext = this.context;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramn.rN());
      arrayOfObject[1] = str2;
      str2 = localContext.getString(2131165611, arrayOfObject);
    }
    return com.tencent.mm.ao.b.d(this.context, str2, paramInt);
  }

  private n c(String paramString, HashMap paramHashMap)
  {
    if ((paramHashMap != null) && (paramHashMap.containsKey(paramString)))
      return (n)paramHashMap.get(paramString);
    return (n)getItemByKey(paramString);
  }

  private CharSequence f(n paramn)
  {
    if (paramn.getStatus() == 1)
      return this.context.getString(2131165599);
    if (paramn.rQ() == 9223372036854775807L)
      return "";
    return com.tencent.mm.pluginsdk.e.e.b(this.context, paramn.rQ(), true);
  }

  private static int iM(String paramString)
  {
    int i = 1;
    if ((paramString != null) && (paramString.length() > 0));
    try
    {
      int j = Integer.valueOf(paramString).intValue();
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return i;
  }

  public static void onCreate()
  {
  }

  private static String xb(String paramString)
  {
    if ((paramString != null) && (paramString.length() == 32))
      return com.tencent.mm.pluginsdk.h.apj().jh(paramString);
    return null;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    String str = (String)paramObject;
    int i;
    if ((paramao instanceof o))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      arrayOfObject2[1] = str;
      aa.e("MicroMsg.ConversationWithCacheAdapter", "onConversationStorageNotifyChange event type %d, username %s", arrayOfObject2);
      boolean bool1 = str.contains("@");
      i = 0;
      if (bool1)
      {
        boolean bool2 = str.endsWith("@chatroom");
        i = 0;
        if (!bool2)
        {
          boolean bool3 = str.endsWith("@micromsg.qq.com");
          i = 0;
          if (!bool3)
            break label103;
        }
      }
      if (i == 0);
    }
    label103: 
    do
    {
      do
      {
        return;
        i = 1;
        break;
        if ((paramObject != null) && (this.gXU != null))
          if (paramObject.equals(""))
          {
            if (paramInt == 5)
            {
              this.gYL = true;
              super.i(null, 1);
            }
          }
          else
            this.gYK.add(str);
        if (paramInt == 3)
          paramInt = 2;
        super.i(str, paramInt);
        return;
      }
      while (!(paramao instanceof com.tencent.mm.storage.k));
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      arrayOfObject1[1] = paramObject;
      aa.e("MicroMsg.ConversationWithCacheAdapter", "onContactStorageNotifyChange event type %d, username %s", arrayOfObject1);
    }
    while (this.gYI == null);
    this.gYI.add(str);
  }

  public final void a(cy paramcy)
  {
    this.cPL = paramcy;
  }

  public final void a(db paramdb)
  {
    this.cPM = paramdb;
  }

  public final void a(dc paramdc)
  {
    this.cPK = paramdc;
  }

  public final void a(ad paramad)
  {
    this.gYH = paramad;
  }

  public final SparseArray[] a(HashSet paramHashSet, SparseArray[] paramArrayOfSparseArray)
  {
    if ((paramArrayOfSparseArray == null) || (paramArrayOfSparseArray.length <= 0));
    while (true)
    {
      return paramArrayOfSparseArray;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramHashSet.size());
      arrayOfObject[1] = Integer.valueOf(paramArrayOfSparseArray[0].size());
      aa.e("MicroMsg.ConversationWithCacheAdapter", "refreshPosistion events size %d oldPosistion size %d", arrayOfObject);
      if (paramHashSet != null)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator1 = paramHashSet.iterator();
        while (localIterator1.hasNext())
        {
          l locall3 = (l)localIterator1.next();
          if ((locall3 != null) && (locall3.gkR != 5) && (!localArrayList.contains(locall3.fc)))
          {
            aa.d("MicroMsg.ConversationWithCacheAdapter", "searchArray.add(event.object) " + (String)locall3.fc);
            localArrayList.add(locall3.fc);
          }
        }
        HashMap localHashMap1 = new HashMap();
        Cursor localCursor = be.uz().sx().a(localArrayList, com.tencent.mm.model.w.chM, this.cKz, com.tencent.mm.g.a.cgb);
        while (localCursor.moveToNext())
        {
          n localn = new n();
          localn.convertFrom(localCursor);
          localHashMap1.put(localn.field_username, localn);
        }
        localCursor.close();
        Iterator localIterator2 = paramHashSet.iterator();
        while (localIterator2.hasNext())
        {
          l locall2 = (l)localIterator2.next();
          if (locall2 != null)
          {
            if (locall2.gkR != 5)
            {
              StringBuilder localStringBuilder = new StringBuilder("evnet name,").append((String)locall2.fc).append("  event.newObj   ==");
              if (localHashMap1.get(locall2.fc) == null);
              for (boolean bool = true; ; bool = false)
              {
                aa.d("MicroMsg.ConversationWithCacheAdapter", bool);
                locall2.gkS = localHashMap1.get(locall2.fc);
                break;
              }
            }
            locall2.gkS = null;
          }
        }
        localArrayList.clear();
        localHashMap1.clear();
      }
      HashMap localHashMap2 = new HashMap();
      Iterator localIterator3 = paramHashSet.iterator();
      while (localIterator3.hasNext())
      {
        l locall1 = (l)localIterator3.next();
        if (locall1 != null)
        {
          a(locall1, paramArrayOfSparseArray[0], localHashMap2);
          if (locall1.gkR != 5)
            localHashMap2.put(locall1.fc, locall1.gkS);
        }
      }
    }
  }

  public final IHeapCursor aDX()
  {
    aa.d("MicroMsg.ConversationWithCacheAdapter", "createCursor");
    return (IHeapCursor)be.uz().sx().a(com.tencent.mm.model.w.chM, this.cKz, com.tencent.mm.g.a.cgb, true);
  }

  public final void aKs()
  {
    boolean bool1 = true;
    if (this.cKz == null)
      this.cKz = new ArrayList();
    this.cKz.clear();
    int i;
    if ((0x8000 & v.tl()) == 0)
    {
      i = bool1;
      boolean bool2 = v.tu();
      if ((i == 0) || (!bool2))
        break label110;
      label53: if (bool1 != this.gYM)
      {
        if (!bool1)
          break label115;
        a(5, be.uz().sx(), "floatbottle");
      }
    }
    while (true)
    {
      this.gYM = bool1;
      if (this.gYM)
        this.cKz.add("floatbottle");
      return;
      i = 0;
      break;
      label110: bool1 = false;
      break label53;
      label115: a(2, be.uz().sx(), "floatbottle");
    }
  }

  public final void aLA()
  {
    this.gYJ.clear();
  }

  public final void aLr()
  {
    this.gYH = null;
  }

  public final void aLs()
  {
    if (this.gYg == null)
      this.gYg = new ac(this);
    com.tencent.mm.sdk.b.a.ayH().a("BackupResetAccUin", this.gYg);
  }

  public final void aLt()
  {
    if (this.gYg != null)
    {
      com.tencent.mm.sdk.b.a.ayH().b("BackupResetAccUin", this.gYg);
      this.gYg = null;
    }
  }

  public final void aLv()
  {
    super.i(null, 1);
  }

  public final HashSet aLw()
  {
    return this.gYK;
  }

  public final boolean aLx()
  {
    return this.gYL;
  }

  public final void aLy()
  {
    if ((this.gXU == null) || (this.gYK == null) || (this.gYK.isEmpty()))
      return;
    if (this.gYL)
    {
      this.gXU.clear();
      this.gYL = false;
      this.gYK.clear();
      return;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.gYK.size());
    aa.e("MicroMsg.ConversationWithCacheAdapter", "dealWithConversationEvents size %d", arrayOfObject);
    Iterator localIterator = this.gYK.iterator();
    while (localIterator.hasNext())
      this.gXU.remove(localIterator.next());
    this.gYK.clear();
  }

  public final void b(com.tencent.mm.pluginsdk.ui.e parame)
  {
    this.gYa = parame;
  }

  public final void clearCache()
  {
    if (this.gXU != null)
      this.gXU.clear();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    n localn = (n)getItem(paramInt);
    String str1 = localn.getUsername();
    this.gYN.uK(str1);
    ah localah;
    Object localObject;
    af localaf;
    label492: boolean bool1;
    label500: boolean bool2;
    label523: boolean bool3;
    label546: boolean bool4;
    label590: int j;
    label899: boolean bool5;
    label949: label1013: gy localgy;
    if (paramView == null)
    {
      localah = new ah();
      paramView = View.inflate(this.context, 2130903235, null);
      localah.cMS = ((ImageView)paramView.findViewById(2131362448));
      c.a(localah.cMS, str1);
      com.tencent.mm.pluginsdk.ui.a locala = (com.tencent.mm.pluginsdk.ui.a)localah.cMS.getDrawable();
      if (this.gYa != null)
        this.gYa.a(locala);
      localah.foP = ((NoMeasuredTextView)paramView.findViewById(2131362450));
      localah.gYA = ((NoMeasuredTextView)paramView.findViewById(2131362451));
      localah.gYB = ((NoMeasuredTextView)paramView.findViewById(2131362452));
      localah.cPT = ((TextView)paramView.findViewById(2131362134));
      localah.gYC = ((ImageView)paramView.findViewById(2131362454));
      localah.gYD = ((ImageView)paramView.findViewById(2131362453));
      localah.gYG = paramView.findViewById(2131362449);
      localah.gYE = ((ImageView)paramView.findViewById(2131362455));
      localah.gYF = ((ImageView)paramView.findViewById(2131362456));
      localah.gYY = new ae(this);
      paramView.setTag(localah);
      localah.gYB.Q(this.gXZ);
      localah.gYA.Q(this.gXZ);
      localah.foP.Q(this.gXY);
      this.gYO = localah.foP.getTextSize();
      localah.gYB.setTextColor(this.gXT[0]);
      localah.gYA.setTextColor(this.gXT[4]);
      localah.foP.setTextColor(this.gXT[3]);
      localah.gYB.dA(true);
      localah.gYA.dA(false);
      localah.foP.dA(true);
      localah.foP.setMaxWidth(com.tencent.mm.an.a.fromDPToPix(this.context, 160));
      localah.gYA.jb();
      localah.foP.setTypeface(this.gXX);
      localObject = (af)this.gXU.get(str1);
      aa.e("MicroMsg.ConversationWithCacheAdapter", "dkpno getview username:%s ", new Object[] { str1 });
      com.tencent.mm.storage.i locali;
      if (localObject == null)
      {
        localaf = new af(this, (byte)0);
        locali = this.gYN.aLq();
        if (locali == null)
          break label1482;
        localaf.gYr = locali.bUi;
        localaf.DY = locali.rj();
        if (locali == null)
          break label1497;
        bool1 = true;
        localaf.gYw = bool1;
        if ((locali == null) || (!locali.rg()))
          break label1503;
        bool2 = true;
        localaf.gYy = bool2;
        if ((locali == null) || (locali.ry() != 0))
          break label1509;
        bool3 = true;
        localaf.gYx = bool3;
        localaf.dtw = com.tencent.mm.model.w.cp(str1);
        if ((!localaf.dtw) || (!localaf.gYx) || (localn.rN() <= 0))
          break label1515;
        bool4 = true;
        localaf.gYv = bool4;
        localaf.dws = 0;
        if ((iM(localn.rR()) == 34) && (localn.rO() == 0) && (!au.hX(localn.getContent())))
        {
          String str2 = localn.getContent();
          if ((str1.equals("qmessage")) || (str1.equals("floatbottle")))
          {
            String[] arrayOfString = str2.split(":");
            if ((arrayOfString != null) && (arrayOfString.length > 3))
              str2 = arrayOfString[1] + ":" + arrayOfString[2] + ":" + arrayOfString[3];
          }
          if (!new bf(str2).Ev())
            localaf.dws = 1;
        }
        localaf.cTv = com.tencent.mm.model.w.a(locali, str1, localaf.dtw);
        a(localaf);
        localaf.gYo = f(localn);
        int i = (int)localah.gYB.getTextSize();
        localaf.gYp = b(localn, i, localaf.gYv);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1;
        arrayOfObject[1] = localaf.gYp;
        aa.e("MicroMsg.ConversationWithCacheAdapter", "dkpno getview conv == null username:%s, convItem.lastMsg:%s", arrayOfObject);
      }
      switch (localn.getStatus())
      {
      case 3:
      case 4:
      default:
        j = -1;
        localaf.gYq = j;
        localaf.gYs = com.tencent.mm.model.w.a(localn);
        be.uz().sx();
        localaf.gYt = o.e(localn);
        if ((locali != null) && (locali.rf()))
        {
          bool5 = true;
          localaf.gYu = bool5;
          this.gXU.put(str1, localaf);
          localObject = localaf;
          if (((af)localObject).gYo == null)
            ((af)localObject).gYo = f(localn);
          if (!((af)localObject).gYv)
            break label1555;
          localah.gYB.setTextColor(this.gXT[0]);
          com.tencent.mm.booter.w.bt(localah.gYB.getWidth());
          com.tencent.mm.booter.w.bu((int)localah.gYB.getTextSize());
          com.tencent.mm.booter.w.a(localah.gYB.getPaint());
          if (!str1.toLowerCase().endsWith("@t.qq.com"))
            break label1576;
          localah.foP.aHM();
          localah.foP.dz(true);
          label1078: int k = ((af)localObject).gYq;
          if (k == -1)
            break label1588;
          localah.gYB.nk(k);
          localah.gYB.dy(true);
          label1110: localah.foP.setText(((af)localObject).nickName);
          localah.gYA.setText(((af)localObject).gYo);
          localah.gYB.setText(((af)localObject).gYp);
          localah.gYC.setVisibility(8);
          if (!((af)localObject).dtw)
            break label1600;
          if (((af)localObject).gYx)
            localah.gYC.setVisibility(0);
          label1184: localah.gYD.setVisibility(8);
          c.a(localah.cMS, str1);
          if (this.gXV)
          {
            if ((localn != null) && (localah != null) && (localObject != null))
              break label1620;
            aa.w("MicroMsg.ConversationWithCacheAdapter", "handle show tip cnt, but conversation or viewholder is null");
          }
          label1239: if ((!((af)localObject).gYs) && (((af)localObject).gYt) && (be.se()))
            be.uz().sx().d(localn);
          if ((!((af)localObject).gYt) || (localn.rQ() == -1L))
            break label1953;
          paramView.findViewById(2131362447).setBackgroundResource(2130837909);
          label1306: com.tencent.mm.ak.a.avr();
          localgy = new gy();
          localgy.bQS.bQU = true;
          com.tencent.mm.sdk.b.a.ayH().f(localgy);
          if ((0L != o.a(localn, 7, 0L)) && (!localn.getUsername().equals(localgy.bQT.bQW)))
          {
            localn.p(o.a(localn, 6, localn.rQ()));
            be.uz().sx().a(localn, localn.getUsername());
          }
          if ((com.tencent.mm.pluginsdk.h.apl() != null) && (com.tencent.mm.pluginsdk.h.apl().oZ(localn.getUsername())))
            break label1969;
          localah.gYE.setVisibility(8);
        }
        break;
      case 0:
      case 1:
      case 2:
      case 5:
      }
    }
    while (true)
    {
      if ((com.tencent.mm.pluginsdk.h.apu() == null) || (!com.tencent.mm.pluginsdk.h.apu().kn(localn.getUsername())))
        break label2025;
      localah.gYF.setVisibility(0);
      return paramView;
      localah = (ah)paramView.getTag();
      break;
      label1482: localaf.gYr = -1;
      localaf.DY = -1;
      break label492;
      label1497: bool1 = false;
      break label500;
      label1503: bool2 = false;
      break label523;
      label1509: bool3 = false;
      break label546;
      label1515: bool4 = false;
      break label590;
      j = -1;
      break label899;
      j = 2130838897;
      break label899;
      j = -1;
      break label899;
      j = 2130838895;
      break label899;
      bool5 = false;
      break label949;
      label1555: localah.gYB.setTextColor(this.gXT[localObject.dws]);
      break label1013;
      label1576: localah.foP.dz(false);
      break label1078;
      label1588: localah.gYB.dy(false);
      break label1110;
      label1600: if (!((af)localObject).gYu)
        break label1184;
      localah.gYC.setVisibility(0);
      break label1184;
      label1620: localah.cPT.setVisibility(4);
      localah.gYG.setVisibility(4);
      if (com.tencent.mm.model.w.cT(localn.getUsername()))
      {
        View localView3 = localah.gYG;
        if (localn.rN() > 0);
        for (int i1 = 0; ; i1 = 4)
        {
          localView3.setVisibility(i1);
          localah.foP.setTextColor(this.gXT[3]);
          break;
        }
      }
      NoMeasuredTextView localNoMeasuredTextView = localah.foP;
      if ((((af)localObject).gYw) && (((af)localObject).gYr == 1));
      for (ColorStateList localColorStateList = this.gXT[2]; ; localColorStateList = this.gXT[3])
      {
        localNoMeasuredTextView.setTextColor(localColorStateList);
        if ((((af)localObject).gYw) && (((af)localObject).DY != 0))
          break label1774;
        aa.w("MicroMsg.ConversationWithCacheAdapter", "handle show tip count, but talker is null");
        break;
      }
      label1774: if ((((af)localObject).gYu) && (((af)localObject).gYy))
      {
        View localView2 = localah.gYG;
        if (localn.rN() > 0);
        for (int n = 0; ; n = 4)
        {
          localView2.setVisibility(n);
          break;
        }
      }
      if ((((af)localObject).dtw) && (((af)localObject).gYx))
      {
        View localView1 = localah.gYG;
        if (localn.rN() > 0);
        for (int m = 0; ; m = 4)
        {
          localView1.setVisibility(m);
          break;
        }
      }
      if (localn.rN() > 100)
      {
        localah.cPT.setText(2131167869);
        localah.cPT.setVisibility(0);
        break label1239;
      }
      if (localn.rN() <= 0)
        break label1239;
      localah.cPT.setText(localn.rN());
      localah.cPT.setVisibility(0);
      break label1239;
      label1953: paramView.findViewById(2131362447).setBackgroundResource(2130837616);
      break label1306;
      label1969: localah.gYE.setVisibility(0);
      if (localn.getUsername().equals(localgy.bQT.bQW))
        localah.gYE.setImageResource(2130839519);
      else
        localah.gYE.setImageResource(2130839517);
    }
    label2025: localah.gYF.setVisibility(8);
    return paramView;
  }

  public final boolean hasLoadAllData()
  {
    return super.hasLoadAllData();
  }

  public final void ih(String paramString)
  {
    this.cIs = paramString.trim();
    if ((this.cIs != null) && (this.cIs.length() > 0));
    for (this.gpY = true; ; this.gpY = false)
    {
      i(null, 1);
      return;
    }
  }

  public final int nN(int paramInt)
  {
    int i = getCount();
    if (i <= 0)
      return -1;
    for (int j = Math.abs((paramInt + 1) % i); j != paramInt; j = (j + 1) % i)
    {
      n localn = (n)getItem(j);
      if ((localn != null) && (localn.rN() > 0))
        return j;
    }
    return -1;
  }

  public final void onDestroy()
  {
    this.gYH = null;
    if (this.gXU != null)
    {
      this.gXU.clear();
      this.gXU = null;
    }
    closeCursor();
    aDU();
  }

  public final void onPause()
  {
    aa.d("MicroMsg.ConversationWithCacheAdapter", "adpter onPause  hasResume " + this.glB);
    if (!this.glB);
    do
    {
      return;
      this.glB = false;
      super.pause();
    }
    while (this.cPN == null);
    this.cPN.aij();
  }

  public final void onResume()
  {
    aa.d("MicroMsg.ConversationWithCacheAdapter", "adpter onResume  hasResume " + this.glB);
    if (this.glB)
      return;
    this.glB = true;
    aKs();
    aLz();
    super.aEb();
    Time localTime = new Time();
    localTime.setToNow();
    String str = d.a("MM/dd", localTime).toString();
    if (!this.gYi.equals(str));
    for (int i = 1; ; i = 0)
    {
      this.gYi = str;
      if (i != 0)
        aLn();
      if ((!this.gYd) || (this.gYH == null))
        break;
      this.gYH.aLB();
      this.gYd = false;
      super.i(null, 1);
      return;
    }
  }

  public final ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramArrayList.size());
    aa.e("MicroMsg.ConversationWithCacheAdapter", "rebulidAllChangeData obj.size() %d", arrayOfObject);
    ArrayList localArrayList = new ArrayList(paramArrayList.size());
    Cursor localCursor = be.uz().sx().a(paramArrayList, com.tencent.mm.model.w.chM, this.cKz, com.tencent.mm.g.a.cgb);
    while (localCursor.moveToNext())
    {
      n localn = new n();
      localn.convertFrom(localCursor);
      localArrayList.add(localn);
    }
    localCursor.close();
    return localArrayList;
  }

  public final boolean xc(String paramString)
  {
    return (this.gXU == null) || (!this.gXU.containsKey(paramString));
  }

  public final boolean xd(String paramString)
  {
    return this.gYJ.contains(paramString);
  }

  public final boolean xe(String paramString)
  {
    return this.gYI.contains(paramString);
  }

  public final boolean xf(String paramString)
  {
    if (xc(paramString))
      return false;
    af localaf = (af)this.gXU.get(paramString);
    if (localaf == null)
      return false;
    if (com.tencent.mm.model.w.cp(paramString))
      return localaf.gYx;
    return localaf.gYu;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ab
 * JD-Core Version:    0.6.2
 */