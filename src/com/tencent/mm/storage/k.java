package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MergeCursor;
import com.tencent.mm.a.d;
import com.tencent.mm.ap.g;
import com.tencent.mm.f.a;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import info.guardianproject.database.MergeHeapCursor;
import info.guardianproject.database.sqlcipher.SQLiteCursorInJava;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class k extends ao
  implements com.tencent.mm.ap.h
{
  public static final String[] bRN = { "CREATE UNIQUE INDEX IF NOT EXISTS  contact_username_unique_index ON rcontact ( username )", "CREATE INDEX IF NOT EXISTS  contact_alias_index ON rcontact ( alias )", "CREATE INDEX IF NOT EXISTS  en_username_unique_index ON rcontact ( encryptUsername )", "CREATE UNIQUE INDEX IF NOT EXISTS  bottle_username_unique_index ON bottlecontact ( username )" };
  public static final String[] cjC;
  private static String ggF = "showHead = 32";
  private static String ggG = "type & 64 !=0 ";
  private g chy = null;
  private final am cnP = new l(this);
  private af crf;
  private af ggC;
  private final d ggD = new d(200);
  private final d ggE = new d(400);

  static
  {
    String[] arrayOfString = new String[5];
    arrayOfString[0] = ah.a(i.cfX, "rcontact");
    arrayOfString[1] = ah.a(i.cfX, "bottlecontact");
    arrayOfString[2] = ah.a(j.cfX, "ContactCmdBuf");
    arrayOfString[3] = "CREATE TABLE IF NOT EXISTS contact ( contactID INTEGER PRIMARY KEY, sex INT, type INT, showHead INT, username VARCHAR(40), nickname VARCHAR(40), pyInitial VARCHAR(40), quanPin VARCHAR(60), reserved TEXT );";
    arrayOfString[4] = "CREATE TABLE IF NOT EXISTS contact_ext ( username VARCHAR(40), Uin INTEGER DEFAULT 0, Email VARCHAR(128), Mobile VARCHAR(40), ShowFlag INTEGER DEFAULT 0 , ConType INTEGER DEFAULT 0 , ConRemark TEXT, ConRemark_PYShort TEXT, ConRemark_PYFull TEXT, ConQQMBlog TEXT, ConSMBlog TEXT, DomainList TEXT, reserved1 INT DEFAULT 0 , reserved2 INT DEFAULT 0 , reserved3 INT DEFAULT 0 , reserved4 INT DEFAULT 0 , reserved5 INT DEFAULT 0 , reserved6 TEXT, reserved7 TEXT, reserved8 TEXT, reserved9 TEXT, reserved10 TEXT, weiboflag  INT DEFAULT 0 ,weibonickname TEXT  );";
    cjC = arrayOfString;
  }

  public k(com.tencent.mm.ap.i parami, g paramg)
  {
    Cursor localCursor1 = parami.rawQuery("PRAGMA table_info( contact_ext )", null);
    int k = 0;
    int m = 0;
    while ((localCursor1.moveToNext()) && ((m == 0) || (k == 0)))
    {
      int i2 = localCursor1.getColumnIndex("name");
      if (i2 >= 0)
      {
        String str = localCursor1.getString(i2);
        if ("weiboNickname".equalsIgnoreCase(str))
          k = i;
        else if ("weiboFlag".equalsIgnoreCase(str))
          m = i;
      }
    }
    localCursor1.close();
    if (m == 0)
      parami.aQ("contact_ext", "Alter table contact_ext add weiboFlag INT DEFAULT 0 ");
    if (k == 0)
      parami.aQ("contact_ext", "Alter table contact_ext add weiboNickname INT DEFAULT 0 ");
    Cursor localCursor2 = parami.rawQuery("PRAGMA table_info( rcontact )", null);
    int i1;
    do
    {
      if (!localCursor2.moveToNext())
        break;
      i1 = localCursor2.getColumnIndex("name");
    }
    while ((i1 < 0) || (!"verifyFlag".equalsIgnoreCase(localCursor2.getString(i1))));
    while (true)
    {
      localCursor2.close();
      if (i == 0)
        parami.aQ("rcontact", "Alter table rcontact add verifyFlag INT DEFAULT 0 ");
      Iterator localIterator1 = ah.a(a.cfX, "bottlecontact", parami).iterator();
      while (localIterator1.hasNext())
        parami.aQ("bottlecontact", (String)localIterator1.next());
      Iterator localIterator2 = ah.a(a.cfX, "rcontact", parami).iterator();
      while (localIterator2.hasNext())
        parami.aQ("rcontact", (String)localIterator2.next());
      String[] arrayOfString = bRN;
      int n = arrayOfString.length;
      while (j < n)
      {
        parami.aQ("rcontact", arrayOfString[j]);
        j++;
      }
      this.crf = parami;
      this.chy = paramg;
      this.ggC = parami;
      return;
      i = 0;
    }
  }

  private Cursor a(String paramString1, String paramString2, String paramString3, List paramList1, boolean paramBoolean, int paramInt, List paramList2)
  {
    String str1 = "select * ,rowid from rcontact ";
    if (paramInt == 2)
      str1 = "select 2, *,rowid from rcontact ";
    String str2 = str1 + c(paramString2, paramString3, paramList1) + tV(paramString1) + aAB();
    aa.v("MicroMsg.ContactStorage", str2);
    Cursor localCursor = this.crf.rawQuery(str2, null);
    if (paramBoolean)
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      while (localCursor.moveToNext())
      {
        String str3 = localCursor.getString(localCursor.getColumnIndex("username"));
        if (!str3.endsWith("@chatroom"))
          localArrayList1.add(str3);
        else
          localArrayList2.add(str3);
      }
      if ((paramList2 != null) && (paramList2.size() != 0))
        localArrayList1.addAll(paramList2);
      if (localArrayList1.size() != 0)
        return new MergeCursor(new Cursor[] { localCursor, a(paramString1, localArrayList1, localArrayList2, null, paramList1) });
    }
    return localCursor;
  }

  private static String a(String paramString, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3)
  {
    if (paramArrayList1.size() == 0)
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(" and (username in (");
    localStringBuffer.append("select chatroomname from chatroom where ");
    if ((paramArrayList2 != null) && (paramArrayList2.size() != 0))
    {
      Iterator localIterator3 = paramArrayList2.iterator();
      while (localIterator3.hasNext())
      {
        String str3 = (String)localIterator3.next();
        localStringBuffer.append("chatroomname != '" + str3 + "' and ");
      }
    }
    localStringBuffer.append("(memberlist like '%" + paramString + "%'");
    Iterator localIterator1 = paramArrayList1.iterator();
    while (localIterator1.hasNext())
    {
      String str2 = (String)localIterator1.next();
      localStringBuffer.append(" or memberlist like '%" + str2 + "%'");
    }
    if ((paramArrayList3 != null) && (paramArrayList3.size() != 0))
    {
      Iterator localIterator2 = paramArrayList3.iterator();
      while (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        localStringBuffer.append(" or chatroomname = '" + str1 + "'");
      }
    }
    localStringBuffer.append(")))");
    return localStringBuffer.toString();
  }

  private static String aAB()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(" order by showHead asc, ");
    localStringBuffer.append(" case when length(conRemarkPYFull) > 0 then upper(conRemarkPYFull) ");
    localStringBuffer.append(" else upper(quanPin) end asc, ");
    localStringBuffer.append(" case when length(conRemark) > 0 then upper(conRemark) ");
    localStringBuffer.append(" else upper(quanPin) end asc, ");
    localStringBuffer.append(" upper(quanPin) asc, ");
    localStringBuffer.append(" upper(nickname) asc, ");
    localStringBuffer.append(" upper(username) asc ");
    return localStringBuffer.toString();
  }

  private static String aAC()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(" order by case when verifyFlag & " + i.aAr() + " != 0 then 0 else 1 end , showHead asc, ");
    localStringBuffer.append(" case when length(conRemarkPYFull) > 0 then upper(conRemarkPYFull) ");
    localStringBuffer.append(" else upper(quanPin) end asc, ");
    localStringBuffer.append(" case when length(conRemark) > 0 then upper(conRemark) ");
    localStringBuffer.append(" else upper(quanPin) end asc, ");
    localStringBuffer.append(" upper(quanPin) asc, ");
    localStringBuffer.append(" upper(nickname) asc, ");
    localStringBuffer.append(" upper(username) asc ");
    return localStringBuffer.toString();
  }

  private static String aAD()
  {
    String str1 = "type & " + a.qX() + "!=0";
    String str2 = " where (" + str1 + ") and ";
    return str2 + "type & " + a.ra() + "=0  ";
  }

  private static String aAE()
  {
    String str = "type & " + a.qX() + "!=0";
    return "( (" + str + ") and type & " + a.qY() + "=0 and username like '%@chatroom')";
  }

  private static String aAF()
  {
    String str = "type & " + a.qX() + "!=0";
    return "( (" + str + ") and type & " + a.qY() + "=0 and username like '%@talkroom')";
  }

  private static String au(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder.append(" or username = '").append(str).append("'");
    }
    return localStringBuilder.toString();
  }

  public static String b(String paramString, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    String str1 = " and ( 1 != 1 ";
    int j = 0;
    if (j < i)
    {
      String str2 = paramArrayOfString[j];
      if ("@all.android".equals(str2))
        str1 = str1 + " or 1 = 1";
      while (true)
      {
        j++;
        break;
        if ("@micromsg.qq.com".equals(str2))
          str1 = str1 + " or " + paramString + " not like '%@%'";
        else if ("@chatroom".equals(str2))
          str1 = str1 + " or " + paramString + " like '%@chatroom'";
        else if ("@talkroom".equals(str2))
          str1 = str1 + " or " + paramString + " like '%@talkroom'";
        else if ("@t.qq.com".equals(str2))
          str1 = str1 + " or " + paramString + " like '%@t.qq.com'";
        else if ("@qqim".equals(str2))
          str1 = str1 + " or " + paramString + " like '%@qqim'";
        else if ("@chatroom_exclusive".equals(str2))
          str1 = str1 + " or " + paramString + "not like %@chatroom";
      }
    }
    return str1 + " ) ";
  }

  private static String c(String paramString1, String paramString2, List paramList)
  {
    boolean bool = true;
    String str1;
    if ((paramString1 == null) || (paramString1.equals("@all.android")))
      str1 = "" + p(bool, false);
    Object localObject2;
    while (true)
    {
      localObject1 = "";
      if ((paramList == null) || (paramList.size() <= 0))
        break label1931;
      Iterator localIterator = paramList.iterator();
      String str2;
      for (localObject2 = localObject1; localIterator.hasNext(); localObject2 = (String)localObject2 + " and username != '" + str2 + "'")
        str2 = (String)localIterator.next();
      if (paramString1.equals("@all.contact.android"))
      {
        str1 = "" + aAD();
      }
      else if (paramString1.equals("@all.chatroom.contact"))
      {
        StringBuilder localStringBuilder11 = new StringBuilder().append("");
        String str30 = "(type & " + a.qX() + "!=0 and username like '%@chatroom')";
        String str31 = " where (" + str30 + ") and ";
        str1 = new StringBuilder().append(str31).append("type & ").append(a.ra()).append("=0 ").toString();
      }
      else
      {
        if (paramString1.equals("@all.contact.without.chatroom"))
        {
          StringBuilder localStringBuilder10 = new StringBuilder().append("");
          String str28 = p(false, false);
          if ((str28 != null) && (str28.length() > 0));
          while (true)
          {
            Assert.assertTrue(bool);
            String str29 = " or (" + aAF() + ')';
            str1 = new StringBuilder().append(str28).append(" and ( username not like '%@%'").append(str29).append(")").toString();
            break;
            bool = false;
          }
        }
        if (paramString1.equals("@black.android"))
        {
          str1 = "" + new StringBuilder(" where type & ").append(a.qY()).append("!=0").toString();
        }
        else if (paramString1.equals("@t.qq.com"))
        {
          str1 = "" + new StringBuilder(" where username like '%").append("@t.qq.com").append("'").toString();
        }
        else
        {
          if (paramString1.equals("@domain.android"))
          {
            StringBuilder localStringBuilder9 = new StringBuilder().append("");
            String str27 = p(bool, false);
            if ((str27 != null) && (str27.length() > 0));
            while (true)
            {
              Assert.assertTrue(bool);
              str1 = new StringBuilder().append(str27).append(" and domainList like '%").append(paramString2).append("%'").toString();
              break;
              bool = false;
            }
          }
          if (paramString1.equals("@micromsg.qq.com"))
          {
            StringBuilder localStringBuilder8 = new StringBuilder().append("");
            String str24 = p(false, false);
            if ((str24 != null) && (str24.length() > 0));
            while (true)
            {
              Assert.assertTrue(bool);
              String str25 = " or (" + aAE() + ')';
              String str26 = " or (" + aAF() + ')';
              str1 = new StringBuilder().append(str24).append(" and ( username not like '%@%'").append(str25).append(str26).append(")").toString();
              break;
              bool = false;
            }
          }
          if (paramString1.equals("@micromsg.no.verify.biz.qq.com"))
          {
            StringBuilder localStringBuilder7 = new StringBuilder().append("");
            String str18 = "type & " + a.qX() + " !=0 ";
            String str19 = " where (" + str18 + ") and ";
            String str20 = str19 + "type & " + a.ra() + " =0 and ";
            String str21 = str20 + "type & " + a.qY() + " =0 and ";
            String str22 = str21 + "verifyFlag & " + i.aAr() + " =0";
            if ((str22 != null) && (str22.length() > 0));
            while (true)
            {
              Assert.assertTrue(bool);
              String str23 = " or (" + aAE() + ')';
              str1 = new StringBuilder().append(str22).append(" and ( username not like '%@%'").append(str23).append(")").toString();
              break;
              bool = false;
            }
          }
          if (paramString1.equals("@micromsg.with.all.biz.qq.com"))
          {
            StringBuilder localStringBuilder6 = new StringBuilder().append("");
            String str13 = "type & " + a.qX() + " !=0 ";
            String str14 = " where (" + str13 + ") and ";
            String str15 = str14 + "type & " + a.ra() + " =0 and ";
            String str16 = str15 + "type & " + a.qY() + " =0";
            if ((str16 != null) && (str16.length() > 0));
            while (true)
            {
              Assert.assertTrue(bool);
              String str17 = " or (" + aAE() + ')';
              str1 = new StringBuilder().append(str16).append(" and ( username not like '%@%'").append(str17).append(")").toString();
              break;
              bool = false;
            }
          }
          if (paramString1.equals("@qqim"))
          {
            StringBuilder localStringBuilder5 = new StringBuilder().append("");
            String str12 = p(false, false);
            if ((str12 != null) && (str12.length() > 0));
            while (true)
            {
              Assert.assertTrue(bool);
              str1 = new StringBuilder().append(str12).append(" and username like '%").append("@qqim").append("'").toString();
              break;
              bool = false;
            }
          }
          if (paramString1.equals("@all.chatroom"))
          {
            StringBuilder localStringBuilder4 = new StringBuilder().append("");
            String str8 = "type & " + a.qX() + " !=0";
            String str9 = str8 + " or type & 2 !=0";
            String str10 = str9 + " or type & 4 !=0";
            String str11 = str10 + " or 1";
            str1 = new StringBuilder(" where (").append(str11).append(") ").toString();
          }
          else if (paramString1.equals("@verify.contact"))
          {
            StringBuilder localStringBuilder3 = new StringBuilder().append("");
            String str6 = "type & " + a.qX() + " != 0 and ";
            String str7 = str6 + "verifyFlag & " + i.aAq() + " != 0";
            str1 = new StringBuilder(" where (").append(str7).append(") ").toString();
          }
          else if (paramString1.equals("@biz.contact"))
          {
            StringBuilder localStringBuilder2 = new StringBuilder().append("");
            String str4 = "type & " + a.qX() + " != 0 and ";
            String str5 = str4 + "verifyFlag & " + i.aAr() + " != 0";
            str1 = new StringBuilder(" where (").append(str5).append(") ").toString();
          }
          else if (paramString1.equals("@all.weixin.android"))
          {
            StringBuilder localStringBuilder1 = new StringBuilder().append("");
            String str3 = "type & " + a.qX() + " != 0 or  (username not like '%@qqim' and username not like '%@qr' and username not like '%@bottle' and username not like '%@fb' and username not like '%@google' and username not like '%@t.qq.com' and username not like '%@t.sina.com' and username not like '%" + "@t.sina.com')";
            str1 = new StringBuilder(" where (").append(str3).append(") ").toString();
          }
          else
          {
            aa.d("MicroMsg.ContactStorage", "unknow role type");
            str1 = "" + p(false, false);
          }
        }
      }
    }
    Object localObject1 = localObject2;
    label1931: return str1 + (String)localObject1;
  }

  private static String d(List paramList, boolean paramBoolean)
  {
    String str1 = p(false, paramBoolean) + " AND " + ggG;
    Object localObject1 = "";
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator = paramList.iterator();
      String str2;
      for (Object localObject2 = localObject1; localIterator.hasNext(); localObject2 = (String)localObject2 + " AND username != '" + str2 + "'")
        str2 = (String)localIterator.next();
      localObject1 = localObject2;
    }
    return str1 + (String)localObject1;
  }

  private static String p(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "type & " + a.qX() + "!=0";
    if (paramBoolean1)
      str1 = str1 + " or type & " + a.qZ() + "!=0";
    String str2 = " where (" + str1 + ")";
    String str3 = str2 + " and type & " + a.ra() + "=0 ";
    String str4 = str3 + " and type & " + a.qY() + " =0 ";
    if (!paramBoolean2)
      str4 = str4 + " and verifyFlag & " + i.aAr() + " =0 ";
    return str4;
  }

  private static String tG(String paramString)
  {
    return "select *,rowid from " + tH(paramString) + " ";
  }

  public static String tH(String paramString)
  {
    if (i.tC(paramString))
      return "bottlecontact";
    return "rcontact";
  }

  private void tJ(String paramString)
  {
    this.ggD.remove(paramString);
    this.ggE.remove(paramString);
  }

  private static String tV(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
      return "";
    String str1 = " and (" + "conRemark like '%" + paramString + "%' or ";
    String str2 = str1 + "conRemarkPYFull like '%" + paramString + "%' or ";
    String str3 = str2 + "conRemarkPYShort like '%" + paramString + "%' or ";
    String str4 = str3 + "alias like '%" + paramString + "%' or ";
    String str5 = str4 + "username like '%" + paramString + "%' or ";
    String str6 = str5 + "nickname like '%" + paramString + "%' or ";
    String str7 = str6 + "pyInitial like '%" + paramString + "%' or ";
    return str7 + "quanPin like '%" + paramString + "%' )";
  }

  private static String z(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return "";
    Object localObject = " and (";
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (i > 0)
        localObject = (String)localObject + " or ";
      String str = (String)localObject + "username = '" + paramArrayOfString[i] + "' ";
      i++;
      localObject = str;
    }
    return (String)localObject + " )";
  }

  public final boolean A(i parami)
  {
    boolean bool;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue("contact NULL !", bool);
      tJ(parami.getUsername());
      if (!cj.hX(parami.aAs()))
        tJ(parami.aAs());
      parami.bM(parami.qF());
      this.cnP.ah(parami);
      this.cnP.Ei();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = parami.getUsername();
      arrayOfObject[1] = Integer.valueOf(parami.rl());
      arrayOfObject[2] = Integer.valueOf(parami.rJ());
      aa.e("MicroMsg.ContactStorage", "replace : username=%s, showHead=%d, verifyFlag=%d", arrayOfObject);
      ContentValues localContentValues = parami.oa();
      if (parami.rj() > 0)
        localContentValues.put("rowid", Integer.valueOf(parami.rj()));
      if (this.crf.replace(tH(parami.getUsername()), a.cfX.gfz, localContentValues) <= 0L)
        break label181;
    }
    label181: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        break label187;
      return false;
      bool = false;
      break;
    }
    label187: b(4, this, parami.getUsername());
    return true;
  }

  public final boolean B(i parami)
  {
    return C(parami) > 0;
  }

  public final int C(i parami)
  {
    if (cj.hW(parami.getUsername()).length() <= 0)
    {
      aa.e("MicroMsg.ContactStorage", "FATAL ERROR, invalid contact, empty username");
      return -1;
    }
    parami.bM(parami.qF());
    this.cnP.ah(parami);
    this.cnP.Ei();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = parami.getUsername();
    arrayOfObject[1] = Integer.valueOf(parami.rl());
    arrayOfObject[2] = Integer.valueOf(parami.rJ());
    aa.e("MicroMsg.ContactStorage", "insert : username=%s, showHead=%d, verifyFlag=%d", arrayOfObject);
    ContentValues localContentValues = parami.oa();
    int i = (int)this.crf.insert(tH(parami.getUsername()), a.cfX.gfz, localContentValues);
    if (i != -1)
    {
      parami.cfY = i;
      y(parami);
      b(2, this, parami.getUsername());
      return i;
    }
    aa.e("MicroMsg.ContactStorage", "insert failed: username=" + parami.getUsername());
    return -1;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final int a(String paramString, i parami)
  {
    if (i.tC(paramString))
      paramString = i.tE(paramString);
    tJ(paramString);
    if (!cj.hX(parami.aAs()))
      tJ(parami.aAs());
    parami.bM(parami.qF());
    this.cnP.ah(parami);
    this.cnP.Ei();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = parami.getUsername();
    arrayOfObject[1] = Integer.valueOf(parami.rl());
    arrayOfObject[2] = Integer.valueOf(parami.rJ());
    aa.e("MicroMsg.ContactStorage", "update : username=%s, showHead=%d, verifyFlag=%d", arrayOfObject);
    ContentValues localContentValues = parami.oa();
    if (parami.rj() > 0)
      localContentValues.put("rowid", Integer.valueOf(parami.rj()));
    int i = localContentValues.size();
    int j = 0;
    if (i > 0)
      j = this.crf.update(tH(paramString), localContentValues, "username=?", new String[] { paramString });
    if (j != 0)
      b(4, this, paramString);
    return j;
  }

  public final Cursor a(String paramString1, String paramString2, List paramList1, List paramList2)
  {
    String str = "select * ,rowid from rcontact " + c(paramString1, paramString2, paramList1) + aAB();
    aa.v("MicroMsg.ContactStorage", str);
    if ((paramList2 != null) && (paramList2.size() > 0))
    {
      Cursor[] arrayOfCursor = new Cursor[2];
      arrayOfCursor[0] = as(paramList2);
      arrayOfCursor[1] = this.crf.rawQuery(str, null);
      return new MergeCursor(arrayOfCursor);
    }
    return this.crf.rawQuery(str, null);
  }

  public final Cursor a(String paramString1, String paramString2, List paramList1, List paramList2, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "select username ,nickname ,alias,conRemark,verifyFlag,showHead,weiboFlag,rowid ,deleteFlag from rcontact " + c(paramString1, paramString2, paramList1) + au(paramList2) + aAB();
    aa.v("MicroMsg.ContactStorage", str1);
    if (paramBoolean1)
    {
      SQLiteCursorInJava[] arrayOfSQLiteCursorInJava = new SQLiteCursorInJava[2];
      String str2 = "select username ,nickname ,alias,conRemark,verifyFlag,showHead,weiboFlag,rowid ,deleteFlag from rcontact " + d(paramList1, paramBoolean2) + aAC();
      aa.v("MicroMsg.ContactStorage", "favourSql " + str1);
      arrayOfSQLiteCursorInJava[0] = ((SQLiteCursorInJava)this.crf.K(str2, true));
      arrayOfSQLiteCursorInJava[1] = ((SQLiteCursorInJava)this.crf.K(str1, true));
      return new MergeHeapCursor(arrayOfSQLiteCursorInJava);
    }
    return this.crf.K(str1, true);
  }

  public final Cursor a(String paramString1, String paramString2, List paramList, boolean paramBoolean)
  {
    return c(paramString1, paramString2, paramList, null, paramBoolean, false);
  }

  public final Cursor a(String paramString1, String paramString2, List paramList1, boolean paramBoolean, List paramList2)
  {
    String str1 = "select * ,rowid from rcontact " + c(paramString1, paramString2, paramList1) + au(null) + aAB();
    aa.v("MicroMsg.ContactStorage", str1);
    if ((paramList2 != null) && (paramList2.size() > 0));
    for (Cursor localCursor1 = as(paramList2); ; localCursor1 = null)
    {
      Cursor localCursor2 = null;
      if (paramBoolean)
      {
        String str2 = "select * ,rowid from rcontact " + d(paramList1, true) + aAC();
        aa.v("MicroMsg.ContactStorage", "favourSql " + str1);
        localCursor2 = this.crf.rawQuery(str2, null);
      }
      if ((localCursor1 != null) && (localCursor2 != null))
      {
        Cursor[] arrayOfCursor3 = new Cursor[3];
        arrayOfCursor3[0] = localCursor1;
        arrayOfCursor3[1] = localCursor2;
        arrayOfCursor3[2] = this.crf.rawQuery(str1, null);
        return new MergeCursor(arrayOfCursor3);
      }
      if (localCursor1 != null)
      {
        Cursor[] arrayOfCursor2 = new Cursor[2];
        arrayOfCursor2[0] = localCursor1;
        arrayOfCursor2[1] = this.crf.rawQuery(str1, null);
        return new MergeCursor(arrayOfCursor2);
      }
      if (localCursor2 != null)
      {
        Cursor[] arrayOfCursor1 = new Cursor[3];
        arrayOfCursor1[0] = localCursor2;
        arrayOfCursor1[1] = this.crf.rawQuery(str1, null);
        return new MergeCursor(arrayOfCursor1);
      }
      return this.crf.rawQuery(str1, null);
    }
  }

  public final Cursor a(String paramString, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3, List paramList)
  {
    String str = "select * ,rowid from rcontact " + c("@all.contact.android", "", paramList) + a(paramString, paramArrayList1, paramArrayList2, paramArrayList3) + aAB();
    aa.v("MicroMsg.ContactStorage", "roomsSql " + str);
    return this.crf.rawQuery(str, null);
  }

  public final Cursor a(String[] paramArrayOfString, String paramString1, String paramString2, List paramList)
  {
    String str = "select * ,rowid from rcontact " + c(paramString1, paramString2, paramList) + z(paramArrayOfString) + aAB();
    aa.v("MicroMsg.ContactStorage", "dkaddr : " + str);
    return this.crf.rawQuery(str, null);
  }

  public final void a(m paramm)
  {
    this.cnP.a(paramm, null);
  }

  public final int aAA()
  {
    String str = "select count(rowid) from rcontact " + c("@biz.contact", null, null);
    aa.v("MicroMsg.ContactStorage", str);
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    int j = 0;
    if (i > 0)
    {
      localCursor.moveToLast();
      j = localCursor.getInt(0);
    }
    localCursor.close();
    return j;
  }

  public final Cursor aAG()
  {
    return this.crf.rawQuery("select * ,rowid from rcontact  where rowid = -1", null);
  }

  public final List aAv()
  {
    String str = "select username from rcontact where " + aAE();
    Cursor localCursor = this.crf.rawQuery(str, null);
    LinkedList localLinkedList = new LinkedList();
    if (localCursor == null)
      return localLinkedList;
    if (localCursor.moveToFirst())
      do
        localLinkedList.add(localCursor.getString(0));
      while (localCursor.moveToNext());
    localCursor.close();
    return localLinkedList;
  }

  public final Cursor aAw()
  {
    String str = "select * ,rowid from rcontact  where " + new StringBuilder("type & ").append(a.qY()).append("=0 and username like '%@chatroom'").toString();
    return this.crf.rawQuery(str, null);
  }

  public final Cursor aAx()
  {
    String str = "select * ,rowid from rcontact " + aAD() + " AND type & 256 !=0 " + aAB();
    aa.v("MicroMsg.ContactStorage", str);
    return this.crf.rawQuery(str, null);
  }

  public final Cursor aAy()
  {
    String str = "select * ,rowid from rcontact  where " + ggG + " and verifyFlag & " + i.aAr() + " !=0 ";
    aa.v("MicroMsg.ContactStorage", "dkbf:" + str);
    return this.crf.rawQuery(str, null);
  }

  public final Cursor aAz()
  {
    String str = "select * ,rowid from rcontact " + aAD() + " AND " + ggG + " AND " + ggF + aAC();
    aa.v("MicroMsg.ContactStorage", str);
    return this.crf.rawQuery(str, null);
  }

  public final Cursor ar(List paramList)
  {
    int i = 0;
    boolean bool;
    if (paramList.size() > 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      str1 = "select username ,nickname ,alias,conRemark,verifyFlag,showHead,weiboFlag,rowid ,deleteFlag from rcontact  where ";
      label22: if (i >= paramList.size())
        break label142;
      if (i == -1 + paramList.size())
        break label97;
    }
    label97: for (String str1 = str1 + "username = '" + (String)paramList.get(i) + "' OR "; ; str1 = str1 + "username = '" + (String)paramList.get(i) + "'")
    {
      i++;
      break label22;
      bool = false;
      break;
    }
    label142: String str2 = str1 + aAB();
    return this.crf.rawQuery(str2, null);
  }

  public final Cursor as(List paramList)
  {
    int i = 0;
    boolean bool;
    if (paramList.size() > 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      str1 = "select * ,rowid from rcontact  where ";
      label22: if (i >= paramList.size())
        break label142;
      if (i == -1 + paramList.size())
        break label97;
    }
    label97: for (String str1 = str1 + "username = '" + (String)paramList.get(i) + "' OR "; ; str1 = str1 + "username = '" + (String)paramList.get(i) + "'")
    {
      i++;
      break label22;
      bool = false;
      break;
    }
    label142: String str2 = str1 + aAB();
    return this.crf.rawQuery(str2, null);
  }

  public final Cursor at(List paramList)
  {
    int i = 0;
    if (paramList.size() > 0);
    StringBuilder localStringBuilder;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("select username, alias, nickname, conRemark");
      localStringBuilder.append(" from rcontact where ");
      while (i < paramList.size())
      {
        if (i != 0)
          localStringBuilder.append(" or ");
        localStringBuilder.append("username = '").append((String)paramList.get(i)).append("'");
        i++;
      }
    }
    return this.crf.rawQuery(localStringBuilder.toString(), null);
  }

  public final List av(List paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ContactStorage", "getFilterList: but white list is empty");
      return new LinkedList();
    }
    long l = cj.FE();
    LinkedList localLinkedList = new LinkedList();
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("username='").append((String)paramList.get(0)).append("'");
    for (int i = 1; i < paramList.size(); i++)
      localStringBuilder1.append(" or username='").append((String)paramList.get(i)).append("'");
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("showHead asc, ");
    localStringBuilder2.append("pyInitial asc, ");
    localStringBuilder2.append("quanPin asc, ");
    localStringBuilder2.append("nickname asc, ");
    localStringBuilder2.append("username asc ");
    Object[] arrayOfObject1 = new Object[6];
    arrayOfObject1[0] = "username";
    arrayOfObject1[1] = "rcontact";
    arrayOfObject1[2] = localStringBuilder1.toString();
    arrayOfObject1[3] = "type";
    arrayOfObject1[4] = Integer.valueOf(a.qX());
    arrayOfObject1[5] = localStringBuilder2.toString();
    String str = String.format("select %s from %s where (%s) and (%s & %d != 0)  order by %s", arrayOfObject1);
    aa.d("MicroMsg.ContactStorage", "getFilterList: sql is %s", new Object[] { str });
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localLinkedList.add(localCursor.getString(0));
        localCursor.moveToNext();
      }
      localCursor.close();
    }
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Long.valueOf(cj.O(l));
    arrayOfObject2[1] = paramList;
    arrayOfObject2[2] = localLinkedList.toString();
    aa.d("MicroMsg.ContactStorage", "getFilerList: use time[%d ms] whiteList[%s], usernameList[%s]", arrayOfObject2);
    return localLinkedList;
  }

  public final int b(String paramString, i parami)
  {
    if ((cj.hX(paramString)) || (parami == null) || (cj.hX(parami.getUsername())))
    {
      aa.e("MicroMsg.ContactStorage", "update : wrong input!");
      return 0;
    }
    if (i.tC(parami.getUsername()))
      parami.setUsername(i.tE(parami.getUsername()));
    tJ(parami.getUsername());
    if (!cj.hX(parami.aAs()))
      tJ(parami.aAs());
    parami.bM(parami.qF());
    this.cnP.ah(parami);
    this.cnP.Ei();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = parami.getUsername();
    arrayOfObject[2] = Integer.valueOf(parami.rl());
    arrayOfObject[3] = Integer.valueOf(parami.rJ());
    aa.e("MicroMsg.ContactStorage", "update : oldUsername=%s, username=%s, showHead=%d, verifyFlag=%d", arrayOfObject);
    int i = this.crf.delete(tH(paramString), "username=?", new String[] { paramString });
    aa.d("MicroMsg.ContactStorage", "delete " + tH(paramString) + " user :" + paramString + ", res:" + i);
    ContentValues localContentValues = parami.oa();
    int j = localContentValues.size();
    int k = 0;
    if (j > 0)
      k = (int)this.crf.replace(tH(parami.getUsername()), a.cfX.gfz, localContentValues);
    b(3, this, paramString);
    b(3, this, parami.getUsername());
    return k;
  }

  public final int b(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select count(username) from rcontact where ");
    localStringBuilder.append("type & ").append(a.qX()).append(" !=0 and ");
    localStringBuilder.append("type & ").append(a.ra()).append(" =0 and ");
    localStringBuilder.append("type & ").append(a.qY()).append(" =0 and ");
    localStringBuilder.append("verifyFlag & 8 = 0 and ");
    localStringBuilder.append("( username not like '%@%')");
    if ((paramArrayOfString1 != null) && (paramArrayOfString1.length > 0))
    {
      int m = paramArrayOfString1.length;
      for (int n = 0; n < m; n++)
      {
        String str3 = paramArrayOfString1[n];
        localStringBuilder.append(" and rcontact.username != '").append(str3).append("'");
      }
    }
    if ((paramArrayOfString2 != null) && (paramArrayOfString2.length > 0))
    {
      int j = paramArrayOfString2.length;
      for (int k = 0; k < j; k++)
      {
        String str2 = paramArrayOfString2[k];
        localStringBuilder.append(" and rcontact.username != '").append(str2).append("'");
      }
    }
    localStringBuilder.append(" or username = 'weixin'");
    String str1 = localStringBuilder.toString();
    Cursor localCursor = this.crf.rawQuery(str1, null);
    int i;
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str1;
      arrayOfObject[1] = Integer.valueOf(i);
      aa.e("MicroMsg.ContactStorage", "getNormalContactCount, sql:%s, result:%d", arrayOfObject);
      return i;
      i = 0;
    }
  }

  public final Cursor b(String paramString1, String paramString2, List paramList)
  {
    String str = "select * ,rowid from rcontact " + c(paramString1, paramString2, paramList) + aAB();
    aa.v("MicroMsg.ContactStorage", str);
    return this.crf.rawQuery(str, null);
  }

  public final Cursor b(String paramString1, String paramString2, List paramList1, List paramList2)
  {
    return a(paramString1, paramString2, null, paramList1, true, 2, paramList2);
  }

  public final Cursor b(String paramString1, String paramString2, List paramList1, List paramList2, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "select username from rcontact " + c(paramString1, paramString2, paramList1) + au(paramList2) + aAB();
    aa.v("MicroMsg.ContactStorage", str1);
    if (paramBoolean1)
    {
      SQLiteCursorInJava[] arrayOfSQLiteCursorInJava = new SQLiteCursorInJava[2];
      String str2 = "select username from rcontact " + d(paramList1, paramBoolean2) + aAC();
      aa.v("MicroMsg.ContactStorage", "favourSql " + str1);
      arrayOfSQLiteCursorInJava[0] = ((SQLiteCursorInJava)this.crf.K(str2, true));
      arrayOfSQLiteCursorInJava[1] = ((SQLiteCursorInJava)this.crf.K(str1, true));
      return new MergeHeapCursor(arrayOfSQLiteCursorInJava);
    }
    return this.crf.rawQuery(str1, null);
  }

  public final Cursor b(String paramString1, String paramString2, List paramList, boolean paramBoolean)
  {
    return a(paramString1, paramString2, null, paramList, paramBoolean, 1, null);
  }

  public final void b(m paramm)
  {
    if (this.cnP != null)
      this.cnP.remove(paramm);
  }

  public final int[] b(String paramString1, String paramString2, String paramString3, List paramList)
  {
    String str = "select distinct showHead from rcontact " + c(paramString1, paramString2, paramList) + tV(paramString3) + aAB();
    long l1 = System.currentTimeMillis();
    Cursor localCursor = this.crf.rawQuery(str, null);
    aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getShowSectionByShowHead db.rawQuery : " + (System.currentTimeMillis() - l1));
    long l2 = System.currentTimeMillis();
    if (localCursor.getCount() >= 0);
    int[] arrayOfInt;
    for (int i = localCursor.getCount(); ; i = 0)
    {
      aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getShowSectionByShowHead cu.getCount() : " + (System.currentTimeMillis() - l2));
      arrayOfInt = new int[i];
      if (localCursor.getCount() <= 0)
        break;
      for (int j = 0; j < i; j++)
      {
        localCursor.moveToPosition(j);
        arrayOfInt[j] = localCursor.getInt(0);
      }
    }
    localCursor.close();
    return arrayOfInt;
  }

  public final int[] b(String paramString1, String paramString2, String[] paramArrayOfString, List paramList)
  {
    String str = "select distinct showHead from rcontact " + c(paramString1, paramString2, paramList) + z(paramArrayOfString) + aAB();
    long l1 = System.currentTimeMillis();
    Cursor localCursor = this.crf.rawQuery(str, null);
    aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getShowHeadDistinct db.rawQuery last" + (System.currentTimeMillis() - l1));
    long l2 = System.currentTimeMillis();
    if (localCursor.getCount() >= 0);
    int[] arrayOfInt;
    for (int i = localCursor.getCount(); ; i = 0)
    {
      aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getShowHeadDistinct  cu.getCount() last" + (System.currentTimeMillis() - l2));
      arrayOfInt = new int[i];
      if (localCursor.getCount() <= 0)
        break;
      for (int j = 0; j < i; j++)
      {
        localCursor.moveToPosition(j);
        arrayOfInt[j] = localCursor.getInt(0);
      }
    }
    localCursor.close();
    return arrayOfInt;
  }

  public final i bQ(long paramLong)
  {
    boolean bool = paramLong < 0L;
    i locali = null;
    if (!bool);
    do
    {
      return locali;
      String str = "select * ,rowid from rcontact  where rowid=" + paramLong;
      Cursor localCursor = this.crf.rawQuery(str, null);
      int i = localCursor.getCount();
      locali = null;
      if (i != 0)
      {
        locali = new i();
        localCursor.moveToFirst();
        locali.convertFrom(localCursor);
        y(locali);
      }
      localCursor.close();
    }
    while (locali == null);
    locali.aAt();
    return locali;
  }

  public final int c(List paramList, boolean paramBoolean)
  {
    String str = "select count(*) from rcontact " + d(paramList, paramBoolean) + aAC();
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return 0;
    }
    localCursor.moveToFirst();
    int i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final int c(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select count(username) from rcontact where ");
    localStringBuilder.append("type & ").append(a.qX()).append(" !=0 and ");
    localStringBuilder.append("type & ").append(a.ra()).append(" =0 and ");
    localStringBuilder.append("type & ").append(a.qY()).append(" =0 and ");
    localStringBuilder.append("verifyFlag & 8 = 0 and ");
    localStringBuilder.append("( username like '%@chatroom')");
    if ((paramArrayOfString1 != null) && (paramArrayOfString1.length > 0))
    {
      int m = paramArrayOfString1.length;
      for (int n = 0; n < m; n++)
      {
        String str3 = paramArrayOfString1[n];
        localStringBuilder.append(" and rcontact.username != '").append(str3).append("'");
      }
    }
    if ((paramArrayOfString2 != null) && (paramArrayOfString2.length > 0))
    {
      int j = paramArrayOfString2.length;
      for (int k = 0; k < j; k++)
      {
        String str2 = paramArrayOfString2[k];
        localStringBuilder.append(" and rcontact.username != '").append(str2).append("'");
      }
    }
    String str1 = localStringBuilder.toString();
    Cursor localCursor = this.crf.rawQuery(str1, null);
    int i;
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str1;
      arrayOfObject[1] = Integer.valueOf(i);
      aa.f("MicroMsg.ContactStorage", "getChatroomContactCount, sql:%s, result:%d", arrayOfObject);
      return i;
      i = 0;
    }
  }

  public final Cursor c(String paramString1, String paramString2, List paramList1, List paramList2)
  {
    return a(paramString1, paramString2, null, paramList1, true, 2, paramList2);
  }

  public final Cursor c(String paramString1, String paramString2, List paramList1, List paramList2, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "select * ,rowid from rcontact " + c(paramString1, paramString2, paramList1) + au(paramList2) + aAB();
    aa.v("MicroMsg.ContactStorage", str1);
    if (paramBoolean1)
    {
      Cursor[] arrayOfCursor = new Cursor[2];
      String str2 = "select * ,rowid from rcontact " + d(paramList1, paramBoolean2) + aAC();
      aa.v("MicroMsg.ContactStorage", "favourSql " + str1);
      arrayOfCursor[0] = this.crf.rawQuery(str2, null);
      arrayOfCursor[1] = this.crf.rawQuery(str1, null);
      return new MergeCursor(arrayOfCursor);
    }
    return this.crf.rawQuery(str1, null);
  }

  public final void c(String paramString, i parami)
  {
    if ((paramString == null) || (parami == null));
    ContentValues localContentValues;
    do
    {
      return;
      if (i.tC(paramString))
        paramString = i.tE(paramString);
      parami.bM(parami.qF());
      if (w.a(parami))
      {
        parami.bM(43);
        parami.bv(com.tencent.mm.platformtools.h.hJ(parami.rq()));
        parami.bw(com.tencent.mm.platformtools.h.hI(parami.rq()));
        parami.bJ(com.tencent.mm.platformtools.h.hI(parami.rr()));
        parami.bI(parami.rr());
        return;
      }
      if (w.cT(parami.getUsername()))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(31);
        aa.d("MicroMsg.ContactStorage", "update official account helper showhead %d", arrayOfObject2);
        parami.bM(31);
      }
      this.cnP.ah(parami);
      this.cnP.Ei();
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = parami.getUsername();
      arrayOfObject1[1] = Integer.valueOf(parami.rl());
      arrayOfObject1[2] = Integer.valueOf(parami.rJ());
      aa.e("MicroMsg.ContactStorage", "username=%s, showHead=%d, verifyFlag=%d", arrayOfObject1);
      localContentValues = parami.oa();
      if (parami.rj() > 0)
        localContentValues.put("rowid", Integer.valueOf(parami.rj()));
    }
    while (localContentValues.size() <= 0);
    this.crf.update(tH(paramString), localContentValues, "username=?", new String[] { paramString });
  }

  public final int[] c(String paramString1, String paramString2, String paramString3, List paramList)
  {
    long l1 = System.currentTimeMillis();
    String str1 = "select count(*) from rcontact " + c(paramString1, paramString2, paramList) + tV(paramString3);
    String str2 = str1 + " group by showHead";
    Cursor localCursor = this.crf.rawQuery(str2, null);
    aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getSectionNumByShowHead db.rawQuery : " + (System.currentTimeMillis() - l1));
    long l2 = System.currentTimeMillis();
    int i = localCursor.getCount();
    aa.d("MicroMsg.ContactStorage", "kevin MMCore.getAccStg().getContactStg().getSectionNumByShowHead cu.getCount() : " + (System.currentTimeMillis() - l2));
    int[] arrayOfInt = null;
    if (i > 0)
    {
      arrayOfInt = new int[i];
      for (int j = 0; j < i; j++)
      {
        localCursor.moveToPosition(j);
        arrayOfInt[j] = localCursor.getInt(0);
      }
    }
    localCursor.close();
    return arrayOfInt;
  }

  public final int[] c(String paramString1, String paramString2, String[] paramArrayOfString, List paramList)
  {
    String str1 = "select count(*) from rcontact " + c(paramString1, paramString2, paramList) + z(paramArrayOfString);
    String str2 = str1 + " group by showHead";
    Cursor localCursor = this.crf.rawQuery(str2, null);
    int i = localCursor.getCount();
    int[] arrayOfInt = null;
    if (i > 0)
    {
      int j = localCursor.getCount();
      arrayOfInt = new int[j];
      for (int k = 0; k < j; k++)
      {
        localCursor.moveToPosition(k);
        arrayOfInt[k] = localCursor.getInt(0);
      }
    }
    localCursor.close();
    return arrayOfInt;
  }

  public final Cursor d(String paramString1, String paramString2, String paramString3, List paramList)
  {
    return a(paramString1, paramString2, paramString3, paramList, false, 1, null);
  }

  public final int g(String paramString, byte[] paramArrayOfByte)
  {
    int i = -1;
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.ContactStorage", "getCmdbuf failed user is null");
      return i;
    }
    j localj = new j();
    localj.cq(paramArrayOfByte);
    localj.setUsername(paramString);
    int j = (int)this.crf.replace("ContactCmdBuf", "username", localj.oa());
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    if (paramArrayOfByte == null);
    while (true)
    {
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(j);
      aa.e("MicroMsg.ContactStorage", "setCmdbuf user:%s buf:%d result:%d", arrayOfObject);
      return j;
      i = paramArrayOfByte.length;
    }
  }

  public final i tI(String paramString)
  {
    i locali = (i)this.ggD.get(paramString);
    if (locali != null)
      return locali;
    return null;
  }

  public final boolean tK(String paramString)
  {
    if ((cj.hX(paramString)) || ((paramString.contains("@")) && (!paramString.endsWith("@stranger"))))
      return false;
    Integer localInteger = (Integer)this.ggE.get(paramString);
    if (localInteger != null)
      return a.bK(localInteger.intValue());
    i locali = tO(paramString);
    if ((locali == null) || (!locali.getUsername().equals(paramString)))
    {
      this.ggE.f(paramString, Integer.valueOf(0));
      return false;
    }
    this.ggE.f(paramString, Integer.valueOf(locali.getType()));
    return a.bK(locali.getType());
  }

  public final i tL(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    i locali = new i();
    String str = "select *,rowid from rcontact where alias=" + com.tencent.mm.ap.i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locali.convertFrom(localCursor);
      y(locali);
    }
    localCursor.close();
    locali.aAt();
    return locali;
  }

  public final i tM(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    if (i.tC(paramString))
      paramString = i.tE(paramString);
    i locali1 = tI(paramString);
    if (locali1 != null)
    {
      locali1.aAt();
      return locali1;
    }
    i locali2 = new i();
    String str = tG(paramString) + " where username=" + com.tencent.mm.ap.i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locali2.convertFrom(localCursor);
      y(locali2);
    }
    localCursor.close();
    locali2.aAt();
    return locali2;
  }

  public final i tN(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    if (i.tC(paramString))
      paramString = i.tE(paramString);
    i locali1 = tI(paramString);
    if (locali1 != null)
      return locali1;
    i locali2 = new i();
    String str = tG(paramString) + " where username=" + com.tencent.mm.ap.i.bQ(paramString) + " or encryptUsername=" + com.tencent.mm.ap.i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locali2.convertFrom(localCursor);
      y(locali2);
    }
    localCursor.close();
    return locali2;
  }

  public final i tO(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    if (i.tC(paramString))
      paramString = i.tE(paramString);
    i locali1 = tI(paramString);
    if (locali1 != null)
      return locali1;
    i locali2 = new i();
    String str = tG(paramString) + " where username=" + com.tencent.mm.ap.i.bQ(paramString) + " or encryptUsername=" + com.tencent.mm.ap.i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locali2.convertFrom(localCursor);
      locali2.aAt();
      y(locali2);
    }
    localCursor.close();
    return locali2;
  }

  public final boolean tP(String paramString)
  {
    i locali = tO(paramString);
    return (locali != null) && (!cj.hX(locali.getUsername())) && (locali.getUsername().equals(paramString));
  }

  public final boolean tQ(String paramString)
  {
    if (cj.hX(paramString))
      return false;
    String str = "select count(*) from " + tH(paramString) + " where type & " + a.qY() + " !=0 and username=" + com.tencent.mm.ap.i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    boolean bool = false;
    if (i > 0)
    {
      localCursor.moveToFirst();
      int j = localCursor.getInt(0);
      bool = false;
      if (j > 0)
        bool = true;
    }
    localCursor.close();
    return bool;
  }

  public final boolean tR(String paramString)
  {
    Cursor localCursor = b(paramString, null, null);
    aa.d("MicroMsg.ContactStorage", "isBlackList : resCnt:" + localCursor.getCount());
    if (localCursor.getCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localCursor.close();
      return bool;
    }
  }

  public final byte[] tS(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.ContactStorage", "getCmdbuf failed user is null");
      return null;
    }
    j localj = new j();
    Cursor localCursor = this.crf.a("ContactCmdBuf", null, "username=?", new String[] { paramString }, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localj.convertFrom(localCursor);
    }
    localCursor.close();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    if (localj.aAu() == null);
    for (int i = -1; ; i = localj.field_cmdbuf.length)
    {
      arrayOfObject[1] = Integer.valueOf(i);
      aa.e("MicroMsg.ContactStorage", "getCmdbuf user:%s buf:%d", arrayOfObject);
      return localj.aAu();
    }
  }

  public final int tT(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.ContactStorage", "delCmdBuf failed user is null");
      return -1;
    }
    int i = this.crf.delete("ContactCmdBuf", "username=?", new String[] { paramString });
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(i);
    aa.e("MicroMsg.ContactStorage", "delCmdBuf user:%s ret:%d", arrayOfObject);
    return i;
  }

  public final int tU(String paramString)
  {
    if (paramString.length() > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (i.tC(paramString))
        paramString = i.tE(paramString);
      tO(paramString);
      tJ(paramString);
      i = this.crf.delete(tH(paramString), "username=?", new String[] { paramString });
      tT(paramString);
      aa.d("MicroMsg.ContactStorage", "delete " + tH(paramString) + " user :" + paramString + ", res:" + i);
      if (i != 0)
        break;
      return i;
    }
    b(5, this, paramString);
    return i;
  }

  public final void wa()
  {
    this.ggD.clear();
    this.ggE.clear();
  }

  public final void y(i parami)
  {
    this.ggD.f(parami.getUsername(), parami);
    this.ggE.f(parami.getUsername(), Integer.valueOf(parami.getType()));
  }

  public final boolean z(i parami)
  {
    if (tP(parami.getUsername()))
      if (a(parami.getUsername(), parami) != 0);
    while (C(parami) >= 0)
    {
      return true;
      return false;
    }
    return false;
  }

  public final String zz()
  {
    return "rcontact";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.k
 * JD-Core Version:    0.6.2
 */