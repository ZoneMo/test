package com.tencent.mm.ap;

import android.database.Cursor;
import com.tencent.mm.a.c;
import com.tencent.mm.platformtools.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import junit.framework.Assert;

final class a
{
  private static final Pattern gjl = Pattern.compile("^[\\s]*CREATE[\\s]+TABLE[\\s]*", 2);
  private String bOM = "";
  private String cnG;
  private f gjm;
  private String gjn = "";
  private boolean gjo = false;
  String gjp = "";

  private boolean a(String paramString, HashMap paramHashMap, boolean paramBoolean)
  {
    if (this.gjm != null)
    {
      this.gjm.close();
      this.gjm = null;
    }
    boolean bool1 = c.as(paramString);
    this.gjm = f.vL(paramString);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    arrayOfObject[1] = Boolean.valueOf(bool1);
    arrayOfObject[2] = paramString;
    aa.d("MicroMsg.DBInit", "initSysDbByEnSo checkini:%b exist:%b db:%s ", arrayOfObject);
    if (this.gjm == null)
      return false;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    a(paramHashMap, paramBoolean, bool2);
    return true;
  }

  private boolean a(HashMap paramHashMap, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Boolean.valueOf(paramBoolean1);
    if (paramHashMap == null);
    StringBuilder localStringBuilder;
    for (int i = -1; ; i = paramHashMap.size())
    {
      arrayOfObject1[1] = Integer.valueOf(i);
      aa.e("MicroMsg.DBInit", "createtables checkCreateIni:%b  tables:%d", arrayOfObject1);
      str1 = "";
      if (!paramBoolean1)
        break label313;
      this.gjn = (this.gjm.getPath() + ".ini");
      localStringBuilder = new StringBuilder();
      if (paramHashMap == null)
        break;
      Iterator localIterator2 = paramHashMap.values().iterator();
      while (localIterator2.hasNext())
      {
        k localk1 = (k)localIterator2.next();
        if (localk1.oe() == null)
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = localk1.getClass().toString();
          aa.b("MicroMsg.DBInit", "factory.getSQLs() is null: %s", arrayOfObject4);
          Assert.assertTrue("factory.getSQLs() is null:" + localk1.getClass().toString(), false);
        }
        String[] arrayOfString2 = localk1.oe();
        int i1 = arrayOfString2.length;
        for (int i2 = 0; i2 < i1; i2++)
          localStringBuilder.append(arrayOfString2[i2].hashCode());
      }
    }
    String str1 = com.tencent.mm.a.f.h(localStringBuilder.toString().getBytes());
    if (!paramBoolean2)
    {
      String str4 = i.getValue(this.gjn, "createmd5");
      if ((!cj.hX(str4)) && (str1.equals(str4)))
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = this.gjm.getPath();
        aa.d("MicroMsg.DBInit", "Create table factories not changed , no need create !  %s", arrayOfObject3);
        return true;
      }
    }
    label313: String str2 = str1;
    this.gjm.execSQL("pragma auto_vacuum = 0 ");
    this.gjm.rawQuery("pragma journal_mode=\"WAL\"", null).close();
    com.tencent.mm.compatible.g.k localk = new com.tencent.mm.compatible.g.k();
    this.gjm.beginTransaction();
    if (paramHashMap != null)
    {
      Iterator localIterator1 = paramHashMap.values().iterator();
      int n;
      for (j = 0; localIterator1.hasNext(); j = n)
      {
        String[] arrayOfString1 = ((k)localIterator1.next()).oe();
        int k = arrayOfString1.length;
        int m = 0;
        n = j;
        while (true)
          if (m < k)
          {
            String str3 = arrayOfString1[m];
            try
            {
              this.gjm.execSQL(str3);
              n++;
              m++;
            }
            catch (Exception localException)
            {
              while (true)
              {
                Matcher localMatcher = gjl.matcher(str3);
                if ((localMatcher != null) && (localMatcher.matches()))
                  Assert.assertTrue("CreateTable failed:[" + str3 + "][" + localException.getMessage() + "]", false);
                else
                  aa.aM("MicroMsg.DBInit", "CreateTable failed:[" + str3 + "][" + localException.getMessage() + "]");
              }
            }
          }
      }
    }
    int j = 0;
    long l = localk.qh();
    this.gjm.endTransaction();
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Long.valueOf(l);
    arrayOfObject2[1] = Long.valueOf(localk.qh());
    arrayOfObject2[2] = Integer.valueOf(j);
    aa.d("MicroMsg.DBInit", "createtables end sql:%d trans:%d sqlCount:%d", arrayOfObject2);
    if (paramBoolean1)
      i.k(this.gjn, "createmd5", str2);
    return true;
  }

  private void aY(String paramString1, String paramString2)
  {
    HashSet localHashSet = new HashSet();
    Cursor localCursor1 = this.gjm.rawQuery("select * from " + paramString1 + " limit 1 ", null);
    if (localCursor1.getCount() == 0)
    {
      localCursor1.close();
      return;
    }
    localCursor1.moveToFirst();
    for (int i = 0; i < localCursor1.getColumnCount(); i++)
      localHashSet.add(localCursor1.getColumnName(i));
    localCursor1.close();
    Cursor localCursor2 = this.gjm.rawQuery("PRAGMA table_info( " + paramString2 + " )", null);
    String str1 = "";
    while (localCursor2.moveToNext())
    {
      String str4 = localCursor2.getString(localCursor2.getColumnIndex("name"));
      if (localHashSet.contains(str4))
      {
        String str5 = str1 + str4;
        str1 = str5 + ",";
      }
    }
    localCursor2.close();
    String str2 = str1.substring(0, -1 + str1.length());
    String str3 = "insert into " + paramString2 + "(" + str2 + ") select " + str2 + " from " + paramString1 + ";";
    this.gjm.execSQL(str3);
  }

  private boolean b(String paramString1, long paramLong, String paramString2)
  {
    this.gjm = f.vL(paramString1);
    if (this.gjm == null)
    {
      this.bOM = ("Endbinit open failed: [" + paramLong + "] dev: [" + paramString2 + "]");
      return false;
    }
    this.cnG = com.tencent.mm.a.f.h((paramString2 + paramLong).getBytes()).substring(0, 7);
    String str = "PRAGMA key=\"" + this.cnG + "\";";
    this.gjm.execSQL(str);
    try
    {
      Cursor localCursor = this.gjm.rawQuery("select count(*) from sqlite_master limit 1;", null);
      localCursor.moveToNext();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localCursor.getInt(0));
      aa.d("MicroMsg.DBInit", "openEncryptDatabase check master tables:%d", arrayOfObject);
      if (localCursor != null)
        localCursor.close();
      return true;
    }
    catch (Exception localException1)
    {
      aa.e("MicroMsg.DBInit", "Check EnDB Key failed :" + localException1.getMessage());
      this.bOM = ("Endbinit check failed: [" + paramLong + "] dev: [" + paramString2 + "] msg:[" + localException1.getMessage() + "] stack:[" + localException1.getStackTrace() + "]");
    }
    try
    {
      this.gjm.close();
      label292: this.gjm = null;
      this.cnG = null;
      return false;
    }
    catch (Exception localException2)
    {
      break label292;
    }
  }

  private boolean vJ(String paramString)
  {
    Cursor localCursor1 = this.gjm.rawQuery("select DISTINCT  tbl_name from sqlite_master;", null);
    if (localCursor1 == null)
      return false;
    this.gjm.execSQL("ATTACH DATABASE '" + paramString + "' AS old KEY ''");
    this.gjm.beginTransaction();
    int i = 0;
    int j;
    if (i < localCursor1.getCount())
    {
      localCursor1.moveToPosition(i);
      Cursor localCursor2 = this.gjm.rawQuery("select * from old.sqlite_master where tbl_name = '" + localCursor1.getString(0) + "'", null);
      if (localCursor2 == null)
        break label281;
      j = localCursor2.getCount();
      localCursor2.close();
    }
    while (true)
    {
      if (j == 0)
        aa.w("MicroMsg.DBInit", "In old db not found :" + localCursor1.getString(0));
      while (true)
      {
        i++;
        break;
        try
        {
          aY("old." + localCursor1.getString(0), localCursor1.getString(0));
        }
        catch (Exception localException)
        {
          aa.w("MicroMsg.DBInit", "Insertselect FAILED :" + localCursor1.getString(0));
          localCursor1.close();
          this.gjm.endTransaction();
          return false;
        }
      }
      this.gjm.endTransaction();
      localCursor1.close();
      this.gjm.execSQL("DETACH DATABASE old;");
      return true;
      label281: j = 0;
    }
  }

  public final boolean a(String paramString1, String paramString2, long paramLong, String paramString3, HashMap paramHashMap, boolean paramBoolean)
  {
    boolean bool1;
    boolean bool2;
    boolean bool4;
    label86: Object[] arrayOfObject;
    if (!cj.hX(paramString2))
    {
      bool1 = true;
      Assert.assertTrue("create SqliteDB enDbCachePath == null ", bool1);
      this.gjp = (paramString2 + ".errreport");
      if (this.gjm != null)
      {
        this.gjm.close();
        this.gjm = null;
      }
      bool2 = c.as(paramString2);
      boolean bool3 = c.as(paramString1);
      if ((bool2) || (!bool3))
        break label235;
      bool4 = true;
      this.gjo = b(paramString2, paramLong, paramString3);
      arrayOfObject = new Object[7];
      arrayOfObject[0] = paramString2;
      arrayOfObject[1] = Boolean.valueOf(bool2);
      arrayOfObject[2] = Boolean.valueOf(bool3);
      arrayOfObject[3] = Boolean.valueOf(bool4);
      arrayOfObject[4] = Boolean.valueOf(this.gjo);
      if (this.gjm == null)
        break label241;
    }
    label235: label241: for (boolean bool5 = true; ; bool5 = false)
    {
      arrayOfObject[5] = Boolean.valueOf(bool5);
      arrayOfObject[6] = Thread.currentThread().getName();
      aa.d("MicroMsg.DBInit", "initDb(en) path:%s enExist:%b oldExist:%b copyold:%b dbopenSUCC:%b db:%b thr:%s", arrayOfObject);
      if ((this.gjm != null) || (cj.hX(paramString1)))
        break label247;
      this.cnG = null;
      aa.e("MicroMsg.DBInit", "Failed to Use ENCRYPT database!");
      this.gjo = false;
      return a(paramString1, paramHashMap, false);
      bool1 = false;
      break;
      bool4 = false;
      break label86;
    }
    label247: if (!bool2);
    for (boolean bool6 = true; ; bool6 = false)
    {
      a(paramHashMap, paramBoolean, bool6);
      if (bool4)
        break;
      return true;
    }
    if (vJ(paramString1))
      return true;
    aa.e("MicroMsg.DBInit", "Failed to COPY OLD DATA to ENCRYPT database!");
    this.cnG = null;
    this.gjm.close();
    this.gjm = null;
    this.gjo = false;
    return a(paramString1, paramHashMap, paramBoolean);
  }

  public final boolean a(String paramString, HashMap paramHashMap)
  {
    if (this.gjm != null)
    {
      this.gjm.close();
      this.gjm = null;
    }
    boolean bool1 = c.as(paramString);
    this.gjm = f.vK(paramString);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Boolean.valueOf(true);
    arrayOfObject[1] = Boolean.valueOf(bool1);
    arrayOfObject[2] = paramString;
    aa.d("MicroMsg.DBInit", "initSysDB checkini:%b exist:%b db:%s ", arrayOfObject);
    if (this.gjm == null)
      return false;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    a(paramHashMap, true, bool2);
    return true;
  }

  public final f aDr()
  {
    return this.gjm;
  }

  public final String aDs()
  {
    if ((cj.hX(this.bOM)) || (cj.hX(this.gjp)))
      return "";
    if (!cj.hX(i.getValue(this.gjp, "Reported")))
      return "";
    i.k(this.gjp, "Reported", "true");
    return this.bOM;
  }

  public final void aDt()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.gjn;
    aa.e("MicroMsg.DBInit", "resetIniCache iniFilename:%s", arrayOfObject);
    c.deleteFile(this.gjn);
  }

  public final String getKey()
  {
    return this.cnG;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.a
 * JD-Core Version:    0.6.2
 */