package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class o extends ao
  implements ar
{
  public static final String[] cjC = arrayOfString;
  private final af crf;
  private am fgF = new p(this);
  private s ggI;
  private am ggJ = new q(this);

  static
  {
    String[] arrayOfString = new String[6];
    arrayOfString[0] = ah.a(com.tencent.mm.g.a.cfX, "rconversation");
    arrayOfString[1] = ah.a(com.tencent.mm.g.a.cfX, "rbottleconversation");
    arrayOfString[2] = "CREATE TABLE IF NOT EXISTS conversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT );";
    arrayOfString[3] = "CREATE TABLE IF NOT EXISTS bottleconversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT );";
    arrayOfString[4] = "CREATE INDEX IF NOT EXISTS rconversation_unreadcount_index ON rconversation ( unReadCount )";
    arrayOfString[5] = "CREATE INDEX IF NOT EXISTS rbottleconversation_unreadcount_index ON  rbottleconversation ( unReadCount )";
  }

  public o(af paramaf)
  {
    Assert.assertTrue(paramaf instanceof com.tencent.mm.ap.i);
    Cursor localCursor = paramaf.rawQuery("PRAGMA table_info( rconversation)", null);
    int j;
    do
    {
      if (!localCursor.moveToNext())
        break;
      j = localCursor.getColumnIndex("name");
    }
    while ((j < 0) || (!"flag".equalsIgnoreCase(localCursor.getString(j))));
    for (int i = 1; ; i = 0)
    {
      localCursor.close();
      List localList = ah.a(com.tencent.mm.g.a.cfX, "rconversation", paramaf);
      localList.addAll(ah.a(com.tencent.mm.g.a.cfX, "rbottleconversation", paramaf));
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        paramaf.aQ("rconversation", (String)localIterator.next());
      if (i == 0)
        paramaf.aQ("rconversation", "update rconversation set flag = conversationTime");
      this.crf = paramaf;
      return;
    }
  }

  public static long a(n paramn, int paramInt, long paramLong)
  {
    if (paramn == null)
      return 0L;
    if (paramLong != 0L);
    while (true)
      switch (paramInt)
      {
      default:
        return a(paramn, paramLong);
        paramLong = cj.FD();
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
    return 0x0 | a(paramn, paramLong);
    return 0xFFFFFFFF & a(paramn, paramLong);
    return 0x0 & a(paramn, paramLong);
    return 0x0 | a(paramn, paramLong);
    return 0xFFFFFFFF & a(paramn, paramLong);
    return 0x0 & a(paramn, paramLong);
  }

  private static long a(n paramn, long paramLong)
  {
    return 0x0 & paramn.rT() | 0xFFFFFFFF & paramLong;
  }

  public static n aAQ()
  {
    Cursor localCursor = be.uz().sx().b(w.chM, null, "officialaccounts");
    n localn = null;
    if (localCursor != null)
    {
      int i = localCursor.getCount();
      localn = null;
      if (i > 0)
      {
        boolean bool = localCursor.moveToFirst();
        localn = null;
        if (bool)
        {
          localn = new n();
          localn.convertFrom(localCursor);
        }
      }
      localCursor.close();
    }
    return localn;
  }

  private static long b(n paramn)
  {
    if (paramn != null)
      return a(paramn, paramn.rQ());
    return 0xFFFFFFFF & cj.FD();
  }

  public static boolean e(n paramn)
  {
    if (paramn == null)
      aa.e("MicroMsg.ConversationStorage", "isPlacedTop failed, conversation null");
    while (a(paramn, 4, 0L) == 0L)
      return false;
    return true;
  }

  private static String tW(String paramString)
  {
    aa.v("MicroMsg.ConversationStorage", "talker :" + paramString);
    if (i.tC(paramString))
      return "rbottleconversation";
    return "rconversation";
  }

  private String ue(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = "select username from rcontact where (username like '%" + paramString + "%' or nickname like '%" + paramString + "%' or alias like '%" + paramString + "%' or pyInitial like '%" + paramString + "%' or quanPin like '%" + paramString + "%' or conRemark like '%" + paramString + "%' )and username not like '%@%' and type & " + com.tencent.mm.f.a.ra() + "=0 ";
    Cursor localCursor = this.crf.rawQuery(str1, null);
    aa.f("MicroMsg.ConversationStorage", "contactsql %s", new Object[] { str1 });
    while (localCursor.moveToNext())
    {
      String str4 = localCursor.getString(localCursor.getColumnIndex("username"));
      if (!str4.endsWith("@chatroom"))
        localArrayList.add(str4);
    }
    localCursor.close();
    StringBuffer localStringBuffer;
    if (localArrayList.size() != 0)
    {
      localStringBuffer = new StringBuffer();
      localStringBuffer.append(" ( rconversation.username in ( select chatroomname from chatroom where ");
      localStringBuffer.append("memberlist like '%" + paramString + "%'");
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        String str3 = (String)localIterator.next();
        localStringBuffer.append(" or memberlist like '%" + str3 + "%'");
      }
      localStringBuffer.append("))");
    }
    for (String str2 = "" + localStringBuffer.toString() + " or "; ; str2 = "")
      return " and ( rconversation.username like '%" + paramString + "%' or " + str2 + "rconversation.content like '%" + paramString + "%' or rcontact.nickname like '%" + paramString + "%' or rcontact.alias like '%" + paramString + "%' or rcontact.pyInitial like '%" + paramString + "%' or rcontact.quanPin like '%" + paramString + "%' or rcontact.conRemark like '%" + paramString + "%'  ) ";
  }

  public final void T(LinkedList paramLinkedList)
  {
    if ((paramLinkedList == null) || (paramLinkedList.isEmpty()))
    {
      aa.w("MicroMsg.ConversationStorage", "deleteConversation:namelist is null");
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    String str1 = (String)paramLinkedList.poll();
    localStringBuilder.append("delete from rconversation where ");
    localStringBuilder.append("username='").append(str1).append('\'');
    while (!paramLinkedList.isEmpty())
    {
      String str2 = (String)paramLinkedList.poll();
      localStringBuilder.append(" or username='").append(str2).append('\'');
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localStringBuilder.toString();
    aa.d("MicroMsg.ConversationStorage", "deleteConversations:sql is %s", arrayOfObject);
    this.crf.aQ("rconversation", localStringBuilder.toString());
  }

  public final int a(n paramn, String paramString)
  {
    return a(paramn, paramString, true);
  }

  public final int a(n paramn, String paramString, boolean paramBoolean)
  {
    int i = 0;
    if ((paramString == null) || (paramString.length() <= 0))
      aa.e("MicroMsg.ConversationStorage", "update conversation failed");
    do
    {
      return i;
      if (paramBoolean)
        paramn.p(b(paramn));
      i = this.crf.update(tW(paramString), paramn.oa(), "username=?", new String[] { paramString });
    }
    while (i == 0);
    b(3, this, paramString);
    return i;
  }

  public final Cursor a(String paramString1, List paramList, String paramString2)
  {
    String str1 = " ";
    if ((paramString2 != null) && (paramString2.length() > 0))
      str1 = " and rconversation.username = rcontact.username ";
    String str2 = "select 1,unReadCount, status, isSend, conversationTime, rconversation.username, content, rconversation.msgType, rconversation.flag, rcontact.nickname from rconversation,rcontact" + " " + " where rconversation.username = rcontact.username" + str1 + cj.hW(paramString1);
    Object localObject1 = "";
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator = paramList.iterator();
      String str7;
      for (Object localObject2 = localObject1; localIterator.hasNext(); localObject2 = (String)localObject2 + " and rconversation.username != '" + str7 + "'")
        str7 = (String)localIterator.next();
      localObject1 = localObject2;
    }
    String str3 = str2 + (String)localObject1;
    if ((paramString2 != null) && (paramString2.length() > 0))
      str3 = str3 + ue(paramString2);
    String str4 = str3 + " order by ";
    String str5 = str4 + "rconversation.username like '%@chatroom' asc, ";
    String str6 = str5 + "flag desc, conversationTime desc";
    aa.f("MicroMsg.ConversationStorage", "convsql %s", new Object[] { str6 });
    return this.crf.rawQuery(str6, null);
  }

  public final Cursor a(String paramString1, List paramList, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select unReadCount, status, isSend, conversationTime, username, content, msgType, flag, digest, digestUser, attrflag, editingMsg, atCount");
    localStringBuilder.append(" from rconversation where ");
    if (com.tencent.mm.g.a.cgb == paramString2)
      localStringBuilder.append(" ( parentRef is null  or parentRef = '' ) ");
    while (true)
    {
      localStringBuilder.append(cj.hW(paramString1));
      if ((paramList == null) || (paramList.size() <= 0))
        break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append(" and rconversation.username != '").append(str).append("'");
      }
      if ("*".equals(paramString2))
        localStringBuilder.append(" 1 = 1 ");
      else
        localStringBuilder.append("parentRef = '").append(cj.hR(paramString2)).append("' ");
    }
    localStringBuilder.append(" order by flag desc");
    return this.crf.K(localStringBuilder.toString(), paramBoolean);
  }

  public final Cursor a(String paramString1, List paramList, boolean paramBoolean, String paramString2)
  {
    String str1 = " ";
    if ((paramString2 != null) && (paramString2.length() > 0))
      str1 = " and rconversation.username = rcontact.username ";
    String str2 = "select unReadCount, status, isSend, conversationTime, rconversation.username, content, rconversation.msgType, rconversation.flag, rconversation.digest, rconversation.digestUser, rconversation.hasTrunc, rcontact.nickname from rconversation,rcontact" + " " + " where rconversation.username = rcontact.username" + str1 + cj.hW(paramString1);
    Object localObject1 = "";
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator = paramList.iterator();
      String str5;
      for (Object localObject2 = localObject1; localIterator.hasNext(); localObject2 = (String)localObject2 + " and rconversation.username != '" + str5 + "'")
        str5 = (String)localIterator.next();
      localObject1 = localObject2;
    }
    String str3 = str2 + (String)localObject1;
    if (paramBoolean)
      str3 = str3 + " and ( verifyFlag & 8 ) = 0";
    if ((paramString2 != null) && (paramString2.length() > 0))
      str3 = str3 + new StringBuilder(" and ( rconversation.username like '%").append(paramString2).append("%' or content like '%").append(paramString2).append("%' or rcontact.nickname like '%").append(paramString2).append("%' or rcontact.alias like '%").append(paramString2).append("%' or rcontact.pyInitial like '%").append(paramString2).append("%' or rcontact.quanPin like '%").append(paramString2).append("%' or rcontact.conRemark like '%").append(paramString2).append("%'  ) ").toString();
    if ((paramString2 == null) || (paramString2.equals("")));
    for (String str4 = str3 + " order by flag desc, conversationTime desc"; ; str4 = str3 + " order by rconversation.username like \"%@chatroom\" asc")
    {
      aa.d("MicroMsg.ConversationStorage", "getSearchCursor sql " + str4);
      return this.crf.rawQuery(str4, null);
    }
  }

  public final Cursor a(ArrayList paramArrayList, String paramString1, List paramList, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select unReadCount, status, isSend, conversationTime, username, content, msgType, flag, digest, digestUser, attrflag, editingMsg, atCount");
    localStringBuilder.append(" from rconversation where (");
    int i = 0;
    if (i < paramArrayList.size())
    {
      if (i != -1 + paramArrayList.size())
        localStringBuilder.append("username = '" + (String)paramArrayList.get(i) + "' OR ");
      while (true)
      {
        i++;
        break;
        localStringBuilder.append("username = '" + (String)paramArrayList.get(i) + "'");
      }
    }
    localStringBuilder.append(") and ");
    if (com.tencent.mm.g.a.cgb == paramString2)
      localStringBuilder.append(" ( parentRef is null  or parentRef = '' ) ");
    while (true)
    {
      localStringBuilder.append(cj.hW(paramString1));
      if ((paramList == null) || (paramList.size() <= 0))
        break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append(" and rconversation.username != '").append(str).append("'");
      }
      if ("*".equals(paramString2))
        localStringBuilder.append(" 1 = 1 ");
      else
        localStringBuilder.append("parentRef = '").append(cj.hR(paramString2)).append("' ");
    }
    return this.crf.rawQuery(localStringBuilder.toString(), null);
  }

  public final void a(ap paramap, at paramat)
  {
    if (paramat == null)
    {
      aa.aM("MicroMsg.ConversationStorage", "null notifyInfo");
      return;
    }
    String str1 = paramat.bNl;
    n localn1 = tZ(str1);
    int i;
    n localn3;
    if (localn1 == null)
    {
      n localn2 = new n(str1);
      if (i.tC(str1))
        localn2.ca(1);
      i = 1;
      localn3 = localn2;
    }
    while (true)
    {
      if ((paramat != null) && (!paramat.dOI.isEmpty()) && (paramat.dOI.get(0) != null))
        localn3.bZ(((ak)paramat.dOI.get(0)).rO());
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = paramat.bNl;
      arrayOfObject1[1] = paramat.giq;
      arrayOfObject1[2] = Integer.valueOf(paramat.gir);
      arrayOfObject1[3] = Long.valueOf(Thread.currentThread().getId());
      aa.e("MicroMsg.ConversationStorage", "dkevent user:%s func:%s cnt:%d thr:%d", arrayOfObject1);
      ak localak1 = paramap.aU(str1, " and not ( type = 10000 and isSend != 2 ) ");
      if ((localak1 != null) && (localak1.Bo() != 0L) && (((paramat.giq.equals("insert")) && (paramat.gir > 0)) || ((paramat.giq.equals("update")) && (localn3.rN() + paramat.gir >= 0))))
        localn3.bY(localn3.rN() + paramat.gir);
      if ((paramat.giq.equals("insert")) && (paramat.dOI.size() > 0) && (w.cp(paramat.bNl)))
      {
        String str2 = v.th();
        Iterator localIterator = paramat.dOI.iterator();
        while (localIterator.hasNext())
        {
          ak localak2 = (ak)localIterator.next();
          if ((localak2.field_isSend != 1) && (localak2.aCc()) && (localak2.uP(str2)))
            localn3.field_atCount = (1 + localn3.field_atCount);
        }
      }
      this.fgF.ah(localn3);
      this.fgF.Ei();
      if (str1 == null)
      {
        aa.e("MicroMsg.ConversationStorage", "talker == null");
        return;
      }
      if (!str1.equals(localn3.getUsername()))
      {
        aa.e("MicroMsg.ConversationStorage", "process message for conversation failed: inconsist username");
        return;
      }
      if ((localak1 != null) && (localak1.Bo() != 0L))
      {
        aa.v("MicroMsg.ConversationStorage", "onNotifyChange   msgId:" + localak1.Bo());
        localn3.t(localak1);
        if (this.ggI != null)
        {
          PString localPString1 = new PString();
          PString localPString2 = new PString();
          PInt localPInt = new PInt();
          this.ggI.a(localak1, localPString1, localPString2, localPInt);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localPString2.value;
          aa.e("MicroMsg.ConversationStorage", "oreh onNotifyChange genDigest: pDigestUser.value=%s", arrayOfObject2);
          localn3.field_digest = localPString1.value;
          localn3.field_digestUser = localPString2.value;
          localn3.field_hasTrunc = localPInt.value;
        }
        localn3.bP(Integer.toString(localak1.getType()));
        localn3.p(a(localn3, 1, localak1.DL()));
        if (i != 0)
        {
          i locali = be.uz().su().tO(str1);
          if ((locali != null) && (!cj.hX(locali.getUsername())) && (locali.ri()))
            localn3.field_flag = a(localn3, 2, 0L);
          c(localn3);
        }
      }
      while (true)
      {
        this.ggJ.ah(localn3);
        this.ggJ.Ei();
        return;
        a(localn3, str1, true);
        continue;
        aa.i("MicroMsg.ConversationStorage", "update null conversation with talker " + str1);
        if (i == 0)
        {
          localn3.aAH();
          a(localn3, str1, true);
        }
        else if (be.uz().sw().vl(str1) > 0)
        {
          localn3.o(cj.FD());
          c(localn3);
        }
      }
      localn3 = localn1;
      i = 0;
    }
  }

  public final void a(r paramr)
  {
    this.ggJ.a(paramr, null);
  }

  public final void a(s params)
  {
    this.ggI = params;
  }

  public final void a(String[] paramArrayOfString, String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Update rconversation");
    localStringBuilder.append(" set parentRef = '").append(cj.hW(paramString)).append("' where 1 != 1 ");
    int j = paramArrayOfString.length;
    for (int k = 0; k < j; k++)
    {
      String str2 = paramArrayOfString[k];
      localStringBuilder.append(" or username = '").append(str2).append("'");
    }
    String str1 = localStringBuilder.toString();
    aa.e("MicroMsg.ConversationStorage", "update sql: %s", new Object[] { str1 });
    if (this.crf.aQ("rconversation", str1))
    {
      int m = paramArrayOfString.length;
      while (i < m)
      {
        b(3, this, paramArrayOfString[i]);
        i++;
      }
    }
  }

  public final boolean aAI()
  {
    boolean bool1 = this.crf.aQ("rconversation", "delete from rconversation");
    boolean bool2 = this.crf.aQ("rconversation", "delete from rbottleconversation");
    if ((bool1) || (bool2));
    for (boolean bool3 = true; ; bool3 = false)
    {
      if (bool3)
        b(5, this, "");
      return bool3;
    }
  }

  public final boolean aAJ()
  {
    boolean bool = this.crf.aQ("rconversation", "delete from rbottleconversation");
    if (bool)
      b(5, this, "");
    return bool;
  }

  public final HashMap aAK()
  {
    long l = System.currentTimeMillis();
    HashMap localHashMap = new HashMap();
    Cursor localCursor = this.crf.a("rconversation", new String[] { "username", "conversationTime" }, null, null, null, null);
    if (localCursor.getCount() <= 0)
    {
      localCursor.close();
      return localHashMap;
    }
    localCursor.moveToFirst();
    int i;
    if (localCursor == null)
      i = 0;
    while (true)
    {
      if (i == 0)
        break label162;
      localHashMap.put(localCursor.getString(0), Long.valueOf(localCursor.getLong(1)));
      localCursor.moveToNext();
      break;
      if ((localCursor.isClosed()) || (localCursor.isBeforeFirst()) || (localCursor.isAfterLast()))
        i = 0;
      else
        i = 1;
    }
    label162: localCursor.close();
    aa.d("MicroMsg.ConversationStorage", "kevin getALLTimeIndex:" + (System.currentTimeMillis() - l));
    return localHashMap;
  }

  public final List aAL()
  {
    LinkedList localLinkedList1 = new LinkedList();
    LinkedList localLinkedList2 = new LinkedList();
    Object localObject = "select username from rconversation";
    int i = 0;
    if (i < localLinkedList1.size())
    {
      StringBuilder localStringBuilder = new StringBuilder().append((String)localObject);
      if (i > 0);
      for (String str2 = " and "; ; str2 = " where ")
      {
        String str3 = str2 + "username != \"" + cj.hR((String)localLinkedList1.get(i)) + "\"";
        i++;
        localObject = str3;
        break;
      }
    }
    String str1 = (String)localObject + " order by flag desc, conversationTime desc";
    Cursor localCursor = this.crf.rawQuery(str1, null);
    while (localCursor.moveToNext())
      localLinkedList2.add(localCursor.getString(localCursor.getColumnIndex("username")));
    localCursor.close();
    return localLinkedList2;
  }

  public final Cursor aAM()
  {
    return this.crf.rawQuery("select * from rbottleconversation order by flag desc, conversationTime desc", null);
  }

  public final int aAN()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT SUM(rconversation.unReadCount)");
    localStringBuilder.append(" FROM rconversation");
    localStringBuilder.append(" WHERE parentRef = 'officialaccounts'");
    String str = localStringBuilder.toString();
    aa.e("MicroMsg.ConversationStorage", "getTotalUnreadBizCount sql %s", new Object[] { str });
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = 0;
    if (localCursor != null)
    {
      int j = localCursor.getCount();
      i = 0;
      if (j > 0)
      {
        localCursor.moveToFirst();
        i = localCursor.getInt(0);
      }
      localCursor.close();
    }
    return i;
  }

  public final String aAO()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT rconversation.username");
    localStringBuilder.append(" FROM rconversation");
    localStringBuilder.append(" WHERE parentRef = 'officialaccounts'");
    localStringBuilder.append(" ORDER BY flag DESC, conversationTime DESC ");
    localStringBuilder.append(" LIMIT 1 ");
    String str1 = localStringBuilder.toString();
    aa.d("MicroMsg.ConversationStorage", "get last conversation user, sql is %s", new Object[] { str1 });
    Cursor localCursor = this.crf.rawQuery(str1, null);
    String str2 = null;
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        str2 = localCursor.getString(0);
        localCursor.close();
      }
    }
    else
      return str2;
    localCursor.close();
    return null;
  }

  public final Cursor aAP()
  {
    aa.d("MicroMsg.ConversationStorage", "get bottle total conversation unread sql is %s", new Object[] { "select count(*) from rbottleconversation where unReadCount > 0" });
    return this.crf.rawQuery("select count(*) from rbottleconversation where unReadCount > 0", null);
  }

  public final int aAR()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select sum(atCount) from rconversation");
    localStringBuilder.append(" where unReadCount > 0");
    if (!cj.hX(null))
      localStringBuilder.append(" and username = '").append(null).append("'");
    String str = localStringBuilder.toString();
    aa.e("MicroMsg.ConversationStorage", "query sql: %s", new Object[] { str });
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = 0;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToFirst();
      i = 0;
      if (bool)
        i = localCursor.getInt(0);
      localCursor.close();
    }
    return i;
  }

  public final Cursor b(String paramString1, List paramList, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select * from rconversation where ");
    if (com.tencent.mm.g.a.cgb == paramString2)
      localStringBuilder.append(" ( parentRef is null  or parentRef = '' ) ");
    while (true)
    {
      localStringBuilder.append(cj.hW(paramString1));
      if ((paramList == null) || (paramList.size() <= 0))
        break;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append(" and rconversation.username != '").append(str).append("'");
      }
      if ("*".equals(paramString2))
        localStringBuilder.append(" 1 = 1 ");
      else
        localStringBuilder.append("parentRef = '").append(cj.hR(paramString2)).append("' ");
    }
    localStringBuilder.append(" order by flag desc, conversationTime desc");
    return this.crf.rawQuery(localStringBuilder.toString(), null);
  }

  public final void b(r paramr)
  {
    this.fgF.a(paramr, null);
  }

  public final long c(n paramn)
  {
    String str = cj.hW(paramn.getUsername());
    if (str.length() <= 0)
    {
      aa.e("MicroMsg.ConversationStorage", "insert conversation failed, username empty");
      return -1L;
    }
    paramn.p(b(paramn));
    long l = this.crf.insert(tW(str), null, paramn.oa());
    if (l != -1L)
      b(2, this, paramn.getUsername());
    return l;
  }

  public final void c(r paramr)
  {
    this.fgF.remove(paramr);
  }

  public final boolean d(n paramn)
  {
    boolean bool;
    if (paramn == null)
    {
      aa.e("MicroMsg.ConversationStorage", "unSetPlacedTop conversation null");
      bool = false;
    }
    do
    {
      return bool;
      bool = this.crf.aQ("rconversation", "update " + tW(paramn.getUsername()) + " set flag = " + a(paramn, 3, paramn.rQ()) + " where username = \"" + cj.hR(paramn.getUsername()) + "\"");
    }
    while (!bool);
    b(3, this, paramn.getUsername());
    return bool;
  }

  public final int dk(String paramString)
  {
    String str = "select sum(unReadCount) from rconversation,rcontact where rconversation.username = rcontact.username" + cj.hW(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    int j = 0;
    if (i > 0)
    {
      localCursor.moveToFirst();
      j = localCursor.getInt(0);
    }
    localCursor.close();
    return j;
  }

  public final Cursor f(String paramString, List paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select sum(unReadCount) from rconversation, rcontact");
    localStringBuilder.append(" where rconversation.username = rcontact.username").append(cj.hW(paramString)).append(" AND ( type & 512 ) == 0 AND ( parentRef is ").append(com.tencent.mm.g.a.cgb).append(" or parentRef = '' )  AND rcontact.username != 'officialaccounts'");
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        localStringBuilder.append(" AND rconversation.username != '").append(str2).append("'");
      }
    }
    String str1 = localStringBuilder.toString();
    aa.f("MicroMsg.ConversationStorage", "get total unread with black list, sql is %s", new Object[] { str1 });
    return this.crf.rawQuery(str1, null);
  }

  public final s nR()
  {
    return this.ggI;
  }

  public final void tX(String paramString)
  {
    if (this.crf.delete(tW(paramString), "username=?", new String[] { paramString }) != 0)
      b(5, this, paramString);
  }

  public final boolean tY(String paramString)
  {
    boolean bool = this.crf.aQ("rconversation", "delete from " + tW(paramString) + " where username like '%" + paramString + "'");
    if (bool)
      b(5, this, paramString);
    return bool;
  }

  public final n tZ(String paramString)
  {
    Cursor localCursor = this.crf.a(tW(paramString), null, "username=?", new String[] { paramString }, null, null);
    if (localCursor.getCount() <= 0)
    {
      aa.w("MicroMsg.ConversationStorage", "get null with username:" + paramString);
      localCursor.close();
      return null;
    }
    localCursor.moveToFirst();
    n localn = new n();
    localn.convertFrom(localCursor);
    localCursor.close();
    return localn;
  }

  public final boolean ua(String paramString)
  {
    boolean bool;
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.ConversationStorage", "update conversation failed");
      bool = false;
    }
    do
    {
      return bool;
      n localn = tZ(paramString);
      if ((localn == null) || ((localn.rN() == 0) && (paramString.equals(localn.field_username))))
        return true;
      bool = this.crf.aQ("rconversation", "update " + tW(paramString) + " set unReadCount = 0, atCount = 0 where username = \"" + cj.hR(paramString) + "\"");
    }
    while (!bool);
    b(3, this, paramString);
    return bool;
  }

  public final boolean ub(String paramString)
  {
    boolean bool = false;
    if ((paramString == null) || (paramString.length() <= 0))
      aa.e("MicroMsg.ConversationStorage", "setPlacedTop conversation failed");
    n localn;
    do
    {
      do
      {
        return bool;
        localn = tZ(paramString);
        bool = false;
      }
      while (localn == null);
      bool = this.crf.aQ("rconversation", "update " + tW(localn.getUsername()) + " set flag = " + a(localn, 2, 0L) + " where username = \"" + cj.hR(localn.getUsername()) + "\"");
    }
    while (!bool);
    b(3, this, localn.getUsername());
    return bool;
  }

  public final boolean uc(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.ConversationStorage", "unSetPlacedTop conversation failed");
      return false;
    }
    return d(tZ(paramString));
  }

  public final boolean ud(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      aa.e("MicroMsg.ConversationStorage", "isPlacedTop failed");
      return false;
    }
    return e(tZ(paramString));
  }

  public final Cursor uf(String paramString)
  {
    String str = "select unReadCount, status, isSend, conversationTime, rconversation.username, content, rconversation.msgType, nickname from rconversation,rcontact where rconversation.username = rcontact.username" + cj.hW(paramString) + " order by flag desc, conversationTime desc";
    return this.crf.rawQuery(str, null);
  }

  public final boolean ug(String paramString)
  {
    Cursor localCursor = this.crf.a(tW(paramString), null, "username=?", new String[] { paramString }, null, null);
    if (localCursor.getCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localCursor.close();
      return bool;
    }
  }

  public final Cursor uh(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT username, unReadCount");
    localStringBuilder.append(" FROM rconversation");
    localStringBuilder.append(" WHERE username LIKE '%@chatroom' ");
    localStringBuilder.append(cj.hW(paramString));
    localStringBuilder.append(" AND unReadCount > 0");
    String str = localStringBuilder.toString();
    aa.d("MicroMsg.ConversationStorage", "get chatroom unread talker, sql is %s", new Object[] { str });
    return this.crf.rawQuery(str, null);
  }

  public final Cursor ui(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SELECT COUNT(rconversation.username)");
    localStringBuilder.append(" FROM rconversation, rcontact");
    localStringBuilder.append(" WHERE rconversation.username = rcontact.username");
    localStringBuilder.append(cj.hW(paramString));
    localStringBuilder.append(" AND unReadCount > 0");
    localStringBuilder.append(" AND ( type & 512 ) == 0");
    localStringBuilder.append(" AND ( ( parentRef is ").append(com.tencent.mm.g.a.cgb).append(" or parentRef = '' ) ");
    localStringBuilder.append(" AND rcontact.username != 'officialaccounts')");
    String str = localStringBuilder.toString();
    aa.d("MicroMsg.ConversationStorage", "get total unread talker, sql is %s", new Object[] { str });
    return this.crf.rawQuery(str, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.o
 * JD-Core Version:    0.6.2
 */