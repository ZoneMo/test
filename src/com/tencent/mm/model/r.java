package com.tencent.mm.model;

import android.content.Context;
import com.tencent.mm.m.af;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.n;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.plugin.chatroom.b.a;
import com.tencent.mm.protocal.a.ce;
import com.tencent.mm.protocal.a.cf;
import com.tencent.mm.protocal.a.do;
import com.tencent.mm.protocal.a.du;
import com.tencent.mm.protocal.a.g;
import com.tencent.mm.protocal.a.np;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public final class r
{
  public static i a(i parami, np paramnp)
  {
    parami.setUsername(an.a(paramnp.fEL));
    parami.bt(an.a(paramnp.fEL));
    parami.bv(an.a(paramnp.fEL));
    parami.bw(an.a(paramnp.fEH));
    parami.bL(paramnp.cqq);
    parami.bH(an.a(paramnp.fOO));
    parami.bI(an.a(paramnp.fOP));
    parami.bJ(an.a(paramnp.fEH));
    parami.bS(paramnp.fEp);
    parami.bN(paramnp.cqs);
    parami.bO(RegionCodeDecoder.w(paramnp.cqx, paramnp.Tu, paramnp.Tv));
    parami.bz(paramnp.cqr);
    return parami;
  }

  public static boolean a(com.tencent.mm.storage.b paramb)
  {
    if (paramb == null)
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "updateChatroomMember error! member is null");
      return false;
    }
    boolean bool = be.uz().sA().b(paramb);
    String str1;
    k localk;
    i locali;
    if (bool)
    {
      str1 = paramb.field_chatroomname;
      String str2 = paramb.field_roomowner;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      aa.e("MicroMsg.ChatroomMembersLogic", "update contact chatroom type to %d", arrayOfObject);
      localk = be.uz().su();
      locali = localk.tO(str1);
      if ((locali.rj() != 0) && (!cj.hX(str2)) && (!cj.hX(v.th())))
      {
        if (!str2.equals(v.th()))
          break label128;
        locali.bW(1);
      }
    }
    while (true)
    {
      localk.a(str1, locali);
      return bool;
      label128: locali.bW(0);
    }
  }

  public static boolean a(String paramString, do paramdo)
  {
    if ((!paramString.toLowerCase().endsWith("@chatroom")) || (paramdo.fzc == 0))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "DelChatroomMember: room:[" + paramString + "] listCnt:" + paramdo.fzc);
      return false;
    }
    c localc = be.uz().sA();
    com.tencent.mm.storage.b localb = localc.ts(paramString);
    List localList = com.tencent.mm.storage.b.tp(localb.field_memberlist);
    aa.d("MicroMsg.ChatroomMembersLogic", "DelChatroomMember before " + localList.size());
    Iterator localIterator = paramdo.fzd.iterator();
    while (localIterator.hasNext())
      localList.remove(an.a(((du)localIterator.next()).fEL));
    aa.d("MicroMsg.ChatroomMembersLogic", "DelChatroomMember after " + localList.size());
    localb.aq(localList).tq(f(localList));
    boolean bool = localc.b(localb);
    aa.d("MicroMsg.ChatroomMembersLogic", "delChatroomMember " + bool);
    return bool;
  }

  public static boolean a(String paramString, g paramg)
  {
    if ((!paramString.toLowerCase().endsWith("@chatroom")) || (paramg.fzc == 0))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "AddChatroomMember: room:[" + paramString + "] listCnt:" + paramg.fzc);
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    k localk = be.uz().su();
    int i = 0;
    while (i < paramg.fzc)
    {
      String str = an.a(((np)paramg.fzd.get(i)).fEL);
      if (cj.hX(str))
      {
        aa.b("MicroMsg.ChatroomMembersLogic", "this member name is null! chatRoomName : %s", new Object[] { paramString });
        i++;
      }
      else
      {
        i locali1 = localk.tO(str);
        i locali2;
        if (locali1.rj() != 0)
        {
          locali1.qH();
          localk.a(locali1.getUsername(), locali1);
          locali2 = locali1;
        }
        while (true)
        {
          localArrayList.add(locali2.getUsername());
          break;
          locali2 = a(locali1, (np)paramg.fzd.get(i));
          localk.B(locali2);
        }
      }
    }
    return a(paramString, localArrayList, null);
  }

  public static boolean a(String paramString1, String paramString2, ce paramce, String paramString3, a parama)
  {
    if (((!paramString1.toLowerCase().endsWith("@chatroom")) && (!paramString1.toLowerCase().endsWith("@groupcard")) && (!paramString1.toLowerCase().endsWith("@talkroom"))) || (paramce.fzc == 0))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "SyncAddChatroomMember: room:[" + paramString1 + "] listCnt:" + paramce.fzc);
      return false;
    }
    k localk = be.uz().su();
    com.tencent.mm.storage.b localb1 = be.uz().sA().ts(paramString1);
    if (localb1 != null)
      parama.cWq = localb1.aAg();
    ArrayList localArrayList = new ArrayList();
    aa.d("MicroMsg.ChatroomMembersLogic", "SyncAddChatroomMember: room:[" + paramString1 + "] memCnt:" + paramce.fzc);
    int i = 0;
    while (i < paramce.fzc)
    {
      cf localcf = (cf)paramce.fDc.get(i);
      i locali = localk.tO(localcf.eBo);
      if (locali == null)
      {
        aa.e("MicroMsg.ChatroomMembersLogic", "SyncAddChatroomMember memberlist username is null");
        i++;
      }
      else
      {
        com.tencent.mm.plugin.chatroom.b.b localb4 = new com.tencent.mm.plugin.chatroom.b.b();
        localb4.bPx = localcf.eBo;
        x localx;
        if (paramce.fDd == 0)
        {
          localb4.cTv = localcf.fDf;
          localb4.cWs = localcf.fDi;
          if (!cj.hX(localcf.fDh))
          {
            localx = af.wm().eq(localcf.eBo);
            if (localx == null)
            {
              localx = new x();
              localx.setUsername(localcf.eBo);
            }
            localx.eo(localcf.fDg);
            localx.ep(localcf.fDh);
            localx.bU(3);
            if (cj.hX(localcf.fDg))
              break label488;
          }
        }
        label488: for (boolean bool3 = true; ; bool3 = false)
        {
          localx.Q(bool3);
          af.wm().a(localx);
          if (localb1 != null)
          {
            com.tencent.mm.plugin.chatroom.b.b localb5 = localb1.tm(localcf.eBo);
            if (localb5 != null)
            {
              localb4.cTv = localb5.cTv;
              localb4.cWs = localb5.cWs;
            }
          }
          parama.cWo.add(localb4);
          if (locali.rj() == 0)
          {
            locali.setUsername(localcf.eBo);
            locali.bt(localcf.fDe);
            locali.qH();
            localk.B(locali);
            ar.tZ().jdMethod_do(localcf.eBo);
          }
          localArrayList.add(locali.getUsername());
          break;
        }
      }
    }
    com.tencent.mm.storage.b localb2 = be.uz().sA().ts(paramString1);
    if (localb2 == null)
      localb2 = new com.tencent.mm.storage.b();
    long l1 = System.currentTimeMillis();
    com.tencent.mm.storage.b localb3 = localb2.to(paramString1).tr(paramString2).aq(localArrayList).tq(f(localArrayList));
    if (paramce.fDd != 0);
    for (boolean bool1 = true; ; bool1 = false)
    {
      localb3.a(paramString3, parama, bool1);
      boolean bool2 = a(localb2);
      long l2 = System.currentTimeMillis() - l1;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(bool2);
      arrayOfObject[1] = Long.valueOf(l2);
      aa.e("MicroMsg.ChatroomMembersLogic", "syncAddChatroomMember ret : %s , during : %s", arrayOfObject);
      return bool2;
    }
  }

  public static boolean a(String paramString1, ArrayList paramArrayList, String paramString2)
  {
    c localc = be.uz().sA();
    com.tencent.mm.storage.b localb = localc.tt(paramString1);
    if (paramString1.endsWith("@chatroom"));
    LinkedList localLinkedList;
    int i;
    int m;
    for (Object localObject = cg(paramString1); ; localObject = new LinkedList())
    {
      localLinkedList = new LinkedList();
      i = 0;
      if (localObject == null)
        break label185;
      for (int j = 0; ; j++)
      {
        int k = ((List)localObject).size();
        m = 0;
        if (j >= k)
          break;
        localLinkedList.add(((List)localObject).get(j));
      }
    }
    while (m < paramArrayList.size())
    {
      if (!((List)localObject).contains(paramArrayList.get(m)))
        localLinkedList.add(paramArrayList.get(m));
      m++;
    }
    if (!cj.hX(paramString2))
      localb.tr(paramString2);
    localb.aq(localLinkedList).tq(f(localLinkedList));
    return localc.b(localb);
    label185: 
    while (i < paramArrayList.size())
    {
      localLinkedList.add(paramArrayList.get(i));
      i++;
    }
    if (!cj.hX(paramString2))
      localb.tr(paramString2);
    localb.aq(localLinkedList).tq(f(localLinkedList));
    localb.tr(paramString2);
    boolean bool = localc.b(localb);
    aa.d("MicroMsg.ChatroomMembersLogic", "insertMembersByChatRoomName " + bool);
    return bool;
  }

  public static boolean b(String paramString, Map paramMap)
  {
    com.tencent.mm.storage.b localb = be.uz().sA().ts(paramString);
    if (localb == null)
      return false;
    Iterator localIterator = localb.aAe().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramMap.put(str, localb.cu(str));
    }
    return true;
  }

  public static boolean cb(String paramString)
  {
    String str = (String)be.uz().sr().get(2);
    List localList = cg(paramString);
    if (localList == null)
    {
      aa.d("MicroMsg.ChatroomMembersLogic", "getmembsersbychatroomname is null ");
      return false;
    }
    if ((localList.size() == 0) || (!localList.contains(str)))
    {
      aa.d("MicroMsg.ChatroomMembersLogic", "getmembsersbychatroomname is list is zero or no contains user  " + localList.size() + " ");
      return false;
    }
    return true;
  }

  public static boolean cc(String paramString)
  {
    if ((paramString == null) || (!paramString.toLowerCase().endsWith("@chatroom")));
    c localc;
    com.tencent.mm.storage.b localb;
    do
    {
      return false;
      aa.e("MicroMsg.ChatroomMembersLogic", "updateFailState chatRoomName %s", new Object[] { paramString });
      localc = be.uz().sA();
      localb = localc.ts(paramString);
    }
    while (localb == null);
    localb.aAm();
    return localc.b(localb);
  }

  public static boolean cd(String paramString)
  {
    if (!paramString.toLowerCase().endsWith("@groupcard"))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "deleteWholeGroupcard: room:[" + paramString + "]");
      return false;
    }
    k localk = be.uz().su();
    if (localk.tP(paramString))
      localk.tU(paramString);
    while (true)
    {
      return cf(paramString);
      aa.e("MicroMsg.ChatroomMembersLogic", "deleteWholeGroupcard RoomName not exist:[" + paramString + "]");
    }
  }

  public static boolean ce(String paramString)
  {
    if (!paramString.toLowerCase().endsWith("@chatroom"))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "deleteWholeChatroom: room:[" + paramString + "]");
      return false;
    }
    k localk = be.uz().su();
    if (localk.tP(paramString))
      localk.tU(paramString);
    while (true)
    {
      return cf(paramString);
      aa.e("MicroMsg.ChatroomMembersLogic", "deleteWholeChatroom RoomName not exist:[" + paramString + "]");
    }
  }

  private static boolean cf(String paramString)
  {
    return be.uz().sA().tx(paramString);
  }

  public static List cg(String paramString)
  {
    if (!paramString.toLowerCase().endsWith("@chatroom"))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "getMembersByChatRoomName: this is not room:[" + paramString + "]");
      return null;
    }
    return be.uz().sA().tv(paramString);
  }

  public static List ch(String paramString)
  {
    if (!paramString.toLowerCase().endsWith("@chatroom"))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "getMembersByChatRoomName: room:[" + paramString + "]");
      return null;
    }
    return be.uz().sA().tv(paramString);
  }

  public static int ci(String paramString)
  {
    List localList = cg(paramString);
    if (localList == null)
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "getMembersByChatRoomName: get room:[" + paramString + "] members count fail");
      return 0;
    }
    return localList.size();
  }

  public static List cj(String paramString)
  {
    int i = 0;
    if (!paramString.toLowerCase().endsWith("@chatroom"))
    {
      aa.e("MicroMsg.ChatroomMembersLogic", "getOtherMembersByChatRoomName: room:[" + paramString + "]");
      return null;
    }
    List localList = cg(paramString);
    if ((localList == null) || (localList.size() <= 0))
      return null;
    String str = (String)be.uz().sr().get(2);
    boolean bool;
    if ((str != null) && (str.length() > 0))
    {
      bool = true;
      Assert.assertTrue(bool);
    }
    while (true)
    {
      if (i < localList.size())
      {
        if (((String)localList.get(i)).equals(str))
          localList.remove(i);
      }
      else
      {
        if (localList.size() > 0)
          break label155;
        return null;
        bool = false;
        break;
      }
      i++;
    }
    label155: return localList;
  }

  public static String f(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
    {
      localObject1 = "";
      return localObject1;
    }
    Object localObject1 = "";
    int i = 0;
    label25: if (i < paramList.size())
    {
      String str = (String)paramList.get(i);
      if (str.length() <= 0)
        break label139;
      i locali = be.uz().su().tO(str);
      localObject2 = (String)localObject1 + locali.rq();
      if (i >= -1 + paramList.size());
    }
    label139: for (Object localObject2 = (String)localObject2 + al.getContext().getString(n.bgD); ; localObject2 = localObject1)
    {
      i++;
      localObject1 = localObject2;
      break label25;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.r
 * JD-Core Version:    0.6.2
 */