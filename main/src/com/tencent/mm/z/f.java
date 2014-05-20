package com.tencent.mm.z;

import android.database.Cursor;
import com.tencent.mm.model.ay;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.u;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.nr;
import com.tencent.mm.protocal.a.ns;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.sv;
import com.tencent.mm.protocal.a.sw;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

public final class f extends x
  implements ab
{
  private static final List cuJ = new ArrayList();
  private long bMS;
  private m cjh;
  private a cke;
  private final List cuK = new LinkedList();
  private ak cuL = null;

  public f()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = cj.azV();
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "dktext :%s", arrayOfObject);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsg", "empty msg sender created");
  }

  public f(long paramLong)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsg", "resend msg , local id = " + paramLong);
    this.bMS = paramLong;
    this.cuL = be.uz().sw().bU(paramLong);
    if (this.cuL == null)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneSendMsg", "resend msg , msg is null localid:%d", arrayOfObject);
    }
  }

  public f(String paramString1, String paramString2, int paramInt)
  {
    Object[] arrayOfObject = new Object[i];
    arrayOfObject[0] = cj.azV();
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "dktext :%s", arrayOfObject);
    if (!au.hX(paramString1))
    {
      ak localak = new ak();
      localak.setStatus(i);
      localak.uK(paramString1);
      localak.G(bv.dA(paramString1));
      localak.bZ(i);
      localak.setContent(paramString2);
      localak.setType(paramInt);
      this.bMS = be.uz().sw().v(localak);
      if (this.bMS == -1L)
        break label159;
    }
    while (true)
    {
      Assert.assertTrue(i);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsg", "new msg inserted to db , local id = " + this.bMS);
      return;
      label159: int j = 0;
    }
  }

  private void Bp()
  {
    for (int i = 0; i < this.cuK.size(); i++)
      dM(i);
  }

  public static void a(ay paramay)
  {
    cuJ.remove(paramay);
  }

  private static void a(nr paramnr)
  {
    if ((paramnr.dGR != 1) || (!w.cp(paramnr.fzt.getString())) || (!paramnr.dGS.contains("@")));
    long l1;
    List localList;
    do
    {
      return;
      l1 = System.currentTimeMillis();
      localList = com.tencent.mm.model.r.cg(paramnr.fzt.getString());
    }
    while ((localList == null) || (localList.size() == 0));
    LinkedList localLinkedList = new LinkedList();
    String str1 = paramnr.dGS;
    int k;
    for (int i = 0; i < str1.length(); i = k + 1)
    {
      k = str1.indexOf("@", i);
      if (k == -1)
        break;
      localLinkedList.add(str1.substring(k + 1, Math.min(k + 40, str1.length())));
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "after split @ :%s", new Object[] { localLinkedList });
    long l2 = System.currentTimeMillis();
    HashMap localHashMap1 = new HashMap();
    Cursor localCursor = be.uz().su().at(localList);
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        i locali = new i();
        locali.convertFrom(localCursor);
        Iterator localIterator4 = localLinkedList.iterator();
        while (localIterator4.hasNext())
        {
          String str7 = (String)localIterator4.next();
          if (str7.length() != 0)
            if ((!au.hX(locali.field_nickname)) && (str7.startsWith(locali.field_nickname)))
              localHashMap1.put(locali.field_username, locali.field_username);
            else if ((!au.hX(locali.field_conRemark)) && (str7.startsWith(locali.field_conRemark)))
              localHashMap1.put(locali.field_username, locali.field_username);
            else if ((!au.hX(locali.field_alias)) && (str7.startsWith(locali.field_alias)))
              localHashMap1.put(locali.field_username, locali.field_username);
            else if ((!au.hX(locali.field_username)) && (str7.startsWith(locali.field_username)))
              localHashMap1.put(locali.field_username, locali.field_username);
        }
        localCursor.moveToNext();
      }
      localCursor.close();
    }
    long l3 = System.currentTimeMillis();
    HashMap localHashMap2 = new HashMap();
    com.tencent.mm.model.r.b(paramnr.fzt.getString(), localHashMap2);
    Iterator localIterator1 = localHashMap2.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str4 = (String)localIterator1.next();
      Iterator localIterator3 = localLinkedList.iterator();
      while (localIterator3.hasNext())
      {
        String str5 = (String)localIterator3.next();
        if (str5.length() != 0)
        {
          String str6 = (String)localHashMap2.get(str4);
          if ((!au.hX(str6)) && (str5.startsWith(str6)))
            localHashMap1.put(str4, str4);
        }
      }
    }
    StringBuilder localStringBuilder;
    if (localHashMap1.values().size() > 0)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("<msgsource><atuserlist><![CDATA[");
      Iterator localIterator2 = localHashMap1.keySet().iterator();
      for (int j = 0; localIterator2.hasNext(); j = 1)
      {
        String str3 = (String)localIterator2.next();
        if (j != 0)
          localStringBuilder.append(",");
        localStringBuilder.append(str3);
      }
      localStringBuilder.append("]]></atuserlist>");
      if ((!au.hX(paramnr.fzz)) && (paramnr.fzz.startsWith("<msgsource>")))
        break label851;
    }
    label851: for (String str2 = "<msgsource></msgsource>"; ; str2 = paramnr.fzz)
    {
      paramnr.fzz = str2;
      paramnr.fzz = paramnr.fzz.replace("<msgsource>", localStringBuilder.toString());
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramnr.fzz;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "send text msg with MsgSrouce: %s", arrayOfObject1);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l1);
      arrayOfObject2[1] = Long.valueOf(l3 - l2);
      arrayOfObject2[2] = Long.valueOf(l2 - l1);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "format msgsource time:%d, %d, %d", arrayOfObject2);
      return;
    }
  }

  private void dM(int paramInt)
  {
    ak localak = (ak)this.cuK.get(paramInt);
    localak.cL(8);
    localak.setStatus(5);
    be.uz().sw().a(localak.Bo(), localak);
    Iterator localIterator = cuJ.iterator();
    while (localIterator.hasNext())
    {
      ay localay = (ay)localIterator.next();
      String str = localak.aCl();
      localak.getContent();
      localay.dq(str);
    }
  }

  public final long Bo()
  {
    return this.bMS;
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    this.cjh = paramm;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new sv());
    localb.b(new sw());
    localb.es("/cgi-bin/micromsg-bin/newsendmsg");
    localb.cN(522);
    localb.cO(237);
    localb.cP(1000000237);
    this.cke = localb.wx();
    sv localsv = (sv)this.cke.wr();
    Object localObject;
    int i;
    if (this.cuL == null)
    {
      localObject = be.uz().sw().aCS();
      if ((localObject != null) && (((List)localObject).size() != 0))
        break label244;
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneSendMsg", "no sending message");
      i = -2;
    }
    label244: 
    do
    {
      return i;
      if (this.cuL.getStatus() != 5)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Long.valueOf(this.cuL.Bo());
        arrayOfObject[1] = Integer.valueOf(this.cuL.getStatus());
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.NetSceneSendMsg", "msg:%d status:%d should not be resend !", arrayOfObject);
      }
      this.cuL.setStatus(1);
      be.uz().sw().a(this.bMS, this.cuL);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(this.cuL);
      this.cuL = null;
      localObject = localArrayList;
      break;
      this.cuK.clear();
      for (int j = 0; j < ((List)localObject).size(); j++)
      {
        ak localak = (ak)((List)localObject).get(j);
        if (localak.rO() == 1)
        {
          nr localnr = new nr();
          localnr.fzt = new rw().sn(localak.aCl());
          localnr.fzy = ((int)(localak.DL() / 1000L));
          localnr.dGR = localak.getType();
          localnr.dGS = localak.getContent();
          localnr.fOR = u.a(v.th(), localak.DL()).hashCode();
          a(localnr);
          localsv.fAD.add(localnr);
          localsv.fAC = localsv.fAD.size();
          this.cuK.add(localak);
        }
      }
      i = a(paramr, this.cke, this);
    }
    while (i >= 0);
    Bp();
    return i;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    if (this.cuK.size() > 0)
      return com.tencent.mm.n.aa.cmh;
    return com.tencent.mm.n.aa.cmi;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      Bp();
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    }
    int i;
    do
    {
      return;
      LinkedList localLinkedList = ((sw)this.cke.ws()).fAD;
      if (this.cuK.size() == localLinkedList.size())
      {
        for (int j = 0; j < localLinkedList.size(); j++)
        {
          ns localns = (ns)localLinkedList.get(j);
          if (localns.fAY != 0)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "send msg failed: item ret code=" + localns.fAY);
            dM(j);
            this.cjh.a(4, localns.fAY, paramString, this);
            return;
          }
          long l = ((ak)this.cuK.get(j)).Bo();
          com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsg", "msg local id = " + l + ", SvrId = " + localns.fzo + " sent successfully!");
          ak localak = be.uz().sw().bU(l);
          localak.cL(74);
          localak.dA(localns.fzo);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(localns.fzo);
          arrayOfObject[1] = Integer.valueOf(at.cHK);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSendMsg", "dkmsgid  set svrmsgid %d -> %d", arrayOfObject);
          if ((10007 == at.cHJ) && (at.cHK != 0))
          {
            localak.dA(at.cHK);
            at.cHK = 0;
          }
          localak.setStatus(2);
          be.uz().sw().a(l, localak);
        }
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSendMsg", "total " + j + " msgs sent successfully");
      }
      i = a(wM(), this.cjh);
      if (i == -2)
      {
        this.cjh.a(0, 0, paramString, this);
        return;
      }
    }
    while (i >= 0);
    this.cjh.a(3, -1, paramString, this);
  }

  public final int getType()
  {
    return 522;
  }

  protected final int we()
  {
    return 10;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.f
 * JD-Core Version:    0.6.2
 */