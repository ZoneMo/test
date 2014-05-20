package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MergeCursor;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.format.Time;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.model.be;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.ap;
import com.tencent.mm.pluginsdk.e.d;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.MMSlideDelView;
import com.tencent.mm.ui.base.NoMeasuredTextView;
import com.tencent.mm.ui.base.cy;
import com.tencent.mm.ui.base.cz;
import com.tencent.mm.ui.base.db;
import com.tencent.mm.ui.base.dc;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class s extends bc
  implements ar
{
  private static long gYk = 2000L;
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
  private z gXW;
  private Typeface gXX;
  private float gXY = -1.0F;
  private float gXZ = -1.0F;
  private com.tencent.mm.pluginsdk.ui.e gYa;
  private boolean gYb = false;
  private boolean gYc = false;
  private boolean gYd = false;
  private boolean gYe = false;
  private w gYf;
  private g gYg = null;
  private v gYh = null;
  public String gYi = "";
  final y gYj = new y(this);
  private boolean gYl = false;
  private ay gYm = new ay(be.ut().getLooper(), new t(this), false);
  private boolean gpY = false;

  public s(Context paramContext, bd parambd)
  {
    super(paramContext, new n());
    super.a(parambd);
    this.gXT[0] = com.tencent.mm.an.a.j(paramContext, 2131492910);
    this.gXT[1] = com.tencent.mm.an.a.j(paramContext, 2131493126);
    this.gXT[3] = com.tencent.mm.an.a.j(paramContext, 2131492907);
    this.gXT[2] = com.tencent.mm.an.a.j(paramContext, 2131493123);
    this.gXT[2] = com.tencent.mm.an.a.j(paramContext, 2131493123);
    this.gXT[4] = com.tencent.mm.an.a.j(paramContext, 2131492912);
    this.gXU = new HashMap();
    this.gXY = paramContext.getResources().getDimension(2131558419);
    this.gXZ = paramContext.getResources().getDimension(2131558420);
    this.gXX = Typeface.create("sans-serif-medium", 0);
  }

  private CharSequence a(n paramn, int paramInt, boolean paramBoolean)
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
      if ((0x40 & com.tencent.mm.model.v.tl()) != 0);
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
        break label711;
      if (au.hX(paramn.field_digestUser))
        break label700;
      if ((paramn.field_isSend != 0) || (!com.tencent.mm.model.w.cp(paramn.field_username)))
        break label688;
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
          break label742;
        SpannableStringBuilder localSpannableStringBuilder1 = new SpannableStringBuilder(this.context.getString(2131165612));
        localSpannableStringBuilder1.setSpan(new ForegroundColorSpan(-5569532), 0, localSpannableStringBuilder1.length(), 33);
        localSpannableStringBuilder1.append(" ").append(com.tencent.mm.ao.b.d(this.context, str2, paramInt));
        return localSpannableStringBuilder1;
        str8 = str6 + ": " + str7;
        break;
        label688: str3 = com.tencent.mm.model.w.cu(paramn.field_digestUser);
        continue;
        label700: str2 = paramn.field_digest;
        continue;
      }
      catch (Exception localException)
      {
      }
      label711: str2 = com.tencent.mm.booter.w.a(paramn.rO(), paramn.getUsername(), paramn.getContent(), iM(paramn.rR()), this.context);
    }
    label742: if ((paramBoolean) && (paramn.rN() > 1))
    {
      Context localContext = this.context;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramn.rN());
      arrayOfObject[1] = str2;
      str2 = localContext.getString(2131165611, arrayOfObject);
    }
    return com.tencent.mm.ao.b.d(this.context, str2, paramInt);
  }

  private void aLn()
  {
    if (this.gXU == null);
    while (true)
    {
      return;
      Iterator localIterator = this.gXU.entrySet().iterator();
      while (localIterator.hasNext())
        ((x)((Map.Entry)localIterator.next()).getValue()).gYo = null;
    }
  }

  private void aLo()
  {
    an.i(new u(this));
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

  private static String xb(String paramString)
  {
    if ((paramString != null) && (paramString.length() == 32))
      return h.apj().jh(paramString);
    return null;
  }

  public void FZ()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(this.gpY);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "dkpno resetCursor search:%b", arrayOfObject);
    if (this.gpY)
    {
      Cursor[] arrayOfCursor = new Cursor[2];
      arrayOfCursor[0] = be.uz().sx().a(com.tencent.mm.model.w.chM, this.cKz, this.cIs);
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      if ((this.cKz != null) && (this.cKz.size() > 0))
        localArrayList1.addAll(this.cKz);
      try
      {
        while (arrayOfCursor[0].moveToNext())
        {
          String str = arrayOfCursor[0].getString(arrayOfCursor[0].getColumnIndex("username"));
          localArrayList1.add(str);
          if (!str.endsWith("@chatroom"))
            localArrayList2.add(str);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "block user " + str);
        }
      }
      catch (Exception localException)
      {
        localArrayList1.add("officialaccounts");
        localArrayList1.add("helper_entry");
        arrayOfCursor[1] = be.uz().su().c(this.cIs, "@micromsg.with.all.biz.qq.com", localArrayList1, localArrayList2);
        setCursor(new MergeCursor(arrayOfCursor));
      }
    }
    while (true)
    {
      if ((this.gXW != null) && (this.cIs != null))
        getCursor().getCount();
      super.notifyDataSetChanged();
      return;
      setCursor(be.uz().sx().a(com.tencent.mm.model.w.chM, this.cKz, com.tencent.mm.g.a.cgb, false));
    }
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof String)))
      return;
    ca((String)paramObject);
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

  public final void ca(String paramString)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Boolean.valueOf(this.gYb);
    arrayOfObject1[1] = Boolean.valueOf(this.gYc);
    arrayOfObject1[2] = paramString;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "dkpno onNotifyChange mIsFront:%b mChangedBackground:%b event:%s", arrayOfObject1);
    if ((!au.hX(paramString)) && (this.gXU != null))
      this.gXU.remove(paramString);
    if (this.gYb)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Boolean.valueOf(this.gYl);
      arrayOfObject2[1] = Boolean.valueOf(this.gYm.azG());
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ConversationAdapter", "dkpno postTryNotify needNotify:%b timerStopped:%b", arrayOfObject2);
      this.gYl = true;
      if (this.gYm.azG())
        aLo();
      return;
    }
    this.gYc = true;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    n localn = (n)getItem(paramInt);
    String str1 = localn.getUsername();
    this.gYj.uK(str1);
    aa localaa;
    Object localObject;
    x localx;
    com.tencent.mm.storage.i locali;
    label468: boolean bool1;
    label476: boolean bool2;
    label499: boolean bool3;
    label522: boolean bool4;
    label566: int j;
    label770: label895: boolean bool5;
    label945: boolean bool6;
    label982: label1111: label1143: gy localgy;
    if (paramView == null)
    {
      localaa = new aa();
      paramView = View.inflate(this.context, 2130903235, null);
      localaa.cMS = ((ImageView)paramView.findViewById(2131362448));
      c.a(localaa.cMS, str1);
      com.tencent.mm.pluginsdk.ui.a locala = (com.tencent.mm.pluginsdk.ui.a)localaa.cMS.getDrawable();
      if (this.gYa != null)
        this.gYa.a(locala);
      localaa.foP = ((NoMeasuredTextView)paramView.findViewById(2131362450));
      localaa.gYA = ((NoMeasuredTextView)paramView.findViewById(2131362451));
      localaa.gYB = ((NoMeasuredTextView)paramView.findViewById(2131362452));
      localaa.cPT = ((TextView)paramView.findViewById(2131362134));
      localaa.gYC = ((ImageView)paramView.findViewById(2131362454));
      localaa.gYD = ((ImageView)paramView.findViewById(2131362453));
      localaa.gYG = paramView.findViewById(2131362449);
      localaa.gYE = ((ImageView)paramView.findViewById(2131362455));
      localaa.gYF = ((ImageView)paramView.findViewById(2131362456));
      paramView.setTag(localaa);
      localaa.gYB.Q(this.gXZ);
      localaa.gYA.Q(this.gXZ);
      localaa.foP.Q(this.gXY);
      localaa.gYB.setTextColor(this.gXT[0]);
      localaa.gYA.setTextColor(this.gXT[4]);
      localaa.foP.setTextColor(this.gXT[3]);
      localaa.gYB.dA(true);
      localaa.gYA.dA(false);
      localaa.foP.dA(true);
      localaa.foP.setMaxWidth(com.tencent.mm.an.a.fromDPToPix(this.context, 160));
      localaa.gYA.jb();
      localaa.foP.setTypeface(this.gXX);
      localObject = (x)this.gXU.get(str1);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "dkpno getview username:%s ", new Object[] { str1 });
      if (localObject == null)
      {
        localx = new x(this, (byte)0);
        locali = this.gYj.aLq();
        if (locali == null)
          break label1506;
        localx.gYr = locali.bUi;
        localx.DY = locali.rj();
        if (locali == null)
          break label1521;
        bool1 = true;
        localx.gYw = bool1;
        if ((locali == null) || (!locali.rg()))
          break label1527;
        bool2 = true;
        localx.gYy = bool2;
        if ((locali == null) || (locali.ry() != 0))
          break label1533;
        bool3 = true;
        localx.gYx = bool3;
        localx.dtw = com.tencent.mm.model.w.cp(str1);
        if ((!localx.dtw) || (!localx.gYx) || (localn.rN() <= 0))
          break label1539;
        bool4 = true;
        localx.gYv = bool4;
        localx.dws = 0;
        if ((iM(localn.rR()) == 34) && (localn.rO() == 0) && (!au.hX(localn.getContent())))
        {
          String str4 = localn.getContent();
          if ((str1.equals("qmessage")) || (str1.equals("floatbottle")))
          {
            String[] arrayOfString = str4.split(":");
            if ((arrayOfString != null) && (arrayOfString.length > 3))
              str4 = arrayOfString[1] + ":" + arrayOfString[2] + ":" + arrayOfString[3];
          }
          if (!new bf(str4).Ev())
            localx.dws = 1;
        }
        String str2 = com.tencent.mm.model.w.a(locali, str1, localx.dtw);
        if ((!localx.dtw) || (str2 != null))
          break label1545;
        localx.nickName = this.context.getString(2131165739);
        localx.gYo = f(localn);
        int i = (int)localaa.gYB.getTextSize();
        localx.gYp = a(localn, i, localx.gYv);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = str1;
        arrayOfObject[1] = localx.gYp;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "dkpno getview conv == null username:%s, convItem.lastMsg:%s", arrayOfObject);
      }
      switch (localn.getStatus())
      {
      case 3:
      case 4:
      default:
        j = -1;
        localx.gYq = j;
        localx.gYs = com.tencent.mm.model.w.a(localn);
        be.uz().sx();
        localx.gYt = o.e(localn);
        if ((locali != null) && (locali.rf()))
        {
          bool5 = true;
          localx.gYu = bool5;
          String str3 = com.tencent.mm.sdk.platformtools.z.azj();
          if ((!str3.equalsIgnoreCase("zh_CN")) && (!str3.equalsIgnoreCase("zh_TW")))
            break label1615;
          bool6 = true;
          localx.gmq = bool6;
          this.gXU.put(str1, localx);
          localObject = localx;
          if (((x)localObject).gYo == null)
            ((x)localObject).gYo = f(localn);
          if (!((x)localObject).gYv)
            break label1621;
          localaa.gYB.setTextColor(this.gXT[0]);
          label1046: com.tencent.mm.booter.w.bt(localaa.gYB.getWidth());
          com.tencent.mm.booter.w.bu((int)localaa.gYB.getTextSize());
          com.tencent.mm.booter.w.a(localaa.gYB.getPaint());
          if (!str1.toLowerCase().endsWith("@t.qq.com"))
            break label1642;
          localaa.foP.aHM();
          localaa.foP.dz(true);
          int k = ((x)localObject).gYq;
          if (k == -1)
            break label1654;
          localaa.gYB.nk(k);
          localaa.gYB.dy(true);
          localaa.foP.setText(((x)localObject).nickName);
          localaa.gYA.setText(((x)localObject).gYo);
          localaa.gYB.setText(((x)localObject).gYp);
          if ((!((x)localObject).dtw) || (!((x)localObject).gYx))
            break label1666;
          localaa.gYC.setVisibility(0);
          label1207: localaa.gYD.setVisibility(8);
          c.a(localaa.cMS, str1);
          if (this.gXV)
          {
            if ((localn != null) && (localaa != null) && (localObject != null))
              break label1699;
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.ConversationAdapter", "handle show tip cnt, but conversation or viewholder is null");
          }
          label1263: if ((!((x)localObject).gYs) && (((x)localObject).gYt) && (be.se()))
            be.uz().sx().d(localn);
          if ((!((x)localObject).gYt) || (localn.rQ() == -1L))
            break label2033;
          paramView.findViewById(2131362447).setBackgroundResource(2130837909);
          label1330: com.tencent.mm.ak.a.avr();
          localgy = new gy();
          localgy.bQS.bQU = true;
          com.tencent.mm.sdk.b.a.ayH().f(localgy);
          if ((0L != o.a(localn, 7, 0L)) && (!localn.getUsername().equals(localgy.bQT.bQW)))
          {
            localn.p(o.a(localn, 6, localn.rQ()));
            be.uz().sx().a(localn, localn.getUsername());
          }
          if ((h.apl() != null) && (h.apl().oZ(localn.getUsername())))
            break label2049;
          localaa.gYE.setVisibility(8);
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
      if ((h.apu() == null) || (!h.apu().kn(localn.getUsername())))
        break label2105;
      localaa.gYF.setVisibility(0);
      return paramView;
      localaa = (aa)paramView.getTag();
      break;
      label1506: localx.gYr = -1;
      localx.DY = -1;
      break label468;
      label1521: bool1 = false;
      break label476;
      label1527: bool2 = false;
      break label499;
      label1533: bool3 = false;
      break label522;
      label1539: bool4 = false;
      break label566;
      label1545: localx.nickName = com.tencent.mm.ao.b.f(this.context, com.tencent.mm.model.w.a(locali, str1, localx.dtw), (int)localaa.foP.getTextSize());
      break label770;
      j = -1;
      break label895;
      j = 2130838897;
      break label895;
      j = -1;
      break label895;
      j = 2130838895;
      break label895;
      bool5 = false;
      break label945;
      label1615: bool6 = false;
      break label982;
      label1621: localaa.gYB.setTextColor(this.gXT[localObject.dws]);
      break label1046;
      label1642: localaa.foP.dz(false);
      break label1111;
      label1654: localaa.gYB.dy(false);
      break label1143;
      label1666: if (((x)localObject).gYu)
      {
        localaa.gYC.setVisibility(0);
        break label1207;
      }
      localaa.gYC.setVisibility(8);
      break label1207;
      label1699: localaa.cPT.setVisibility(4);
      localaa.gYG.setVisibility(4);
      if (com.tencent.mm.model.w.cT(localn.getUsername()))
      {
        View localView3 = localaa.gYG;
        if (localn.rN() > 0);
        for (int i1 = 0; ; i1 = 4)
        {
          localView3.setVisibility(i1);
          localaa.foP.setTextColor(this.gXT[3]);
          break;
        }
      }
      NoMeasuredTextView localNoMeasuredTextView = localaa.foP;
      if ((((x)localObject).gYw) && (((x)localObject).gYr == 1));
      for (ColorStateList localColorStateList = this.gXT[2]; ; localColorStateList = this.gXT[3])
      {
        localNoMeasuredTextView.setTextColor(localColorStateList);
        if ((((x)localObject).gYw) && (((x)localObject).DY != 0))
          break label1854;
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.ConversationAdapter", "handle show tip count, but talker is null");
        break;
      }
      label1854: if ((((x)localObject).gYu) && (((x)localObject).gYy))
      {
        View localView2 = localaa.gYG;
        if (localn.rN() > 0);
        for (int n = 0; ; n = 4)
        {
          localView2.setVisibility(n);
          break;
        }
      }
      if ((((x)localObject).dtw) && (((x)localObject).gYx))
      {
        View localView1 = localaa.gYG;
        if (localn.rN() > 0);
        for (int m = 0; ; m = 4)
        {
          localView1.setVisibility(m);
          break;
        }
      }
      if (localn.rN() > 100)
      {
        localaa.cPT.setText(2131167869);
        localaa.cPT.setVisibility(0);
        break label1263;
      }
      if (localn.rN() <= 0)
        break label1263;
      localaa.cPT.setText(localn.rN());
      localaa.cPT.setVisibility(0);
      break label1263;
      label2033: paramView.findViewById(2131362447).setBackgroundResource(2130837616);
      break label1330;
      label2049: localaa.gYE.setVisibility(0);
      if (localn.getUsername().equals(localgy.bQT.bQW))
        localaa.gYE.setImageResource(2130839519);
      else
        localaa.gYE.setImageResource(2130839517);
    }
    label2105: localaa.gYF.setVisibility(8);
    return paramView;
  }

  public final void onDestroy()
  {
    this.gYm.azn();
    this.gYh = null;
    this.gYf = null;
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
    if (this.cPN != null)
      this.cPN.aij();
    this.gYb = false;
  }

  public final void onResume()
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Boolean.valueOf(this.gYb);
    arrayOfObject[bool] = Boolean.valueOf(this.gYd);
    arrayOfObject[2] = Boolean.valueOf(this.gYc);
    arrayOfObject[3] = Boolean.valueOf(this.gYe);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ConversationAdapter", "dkpno onResume mIsFront:%b  mNeedReCreate:%b mChangedBackground:%b mContactBackground:%b", arrayOfObject);
    this.gYb = bool;
    Time localTime = new Time();
    localTime.setToNow();
    String str = d.a("MM/dd", localTime).toString();
    if (!this.gYi.equals(str));
    while (true)
    {
      this.gYi = str;
      if (bool)
        aLn();
      if ((this.gYd) && (this.gYh != null))
        this.gYd = false;
      if ((this.gYc) || (this.gYe))
      {
        super.ca(null);
        this.gYc = false;
        this.gYe = false;
      }
      return;
      bool = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.s
 * JD-Core Version:    0.6.2
 */