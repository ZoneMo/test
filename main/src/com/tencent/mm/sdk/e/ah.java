package com.tencent.mm.sdk.e;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import junit.framework.Assert;

public abstract class ah extends ai
{
  private final af crf;
  private final ae gfB;
  private final String gfC;

  public ah(af paramaf, ae paramae, String paramString, String[] paramArrayOfString)
  {
    this.crf = paramaf;
    this.gfB = paramae;
    ae localae = this.gfB;
    if (cj.hX(this.gfB.gfz));
    for (String str = "rowid"; ; str = this.gfB.gfz)
    {
      localae.gfz = str;
      this.gfC = paramString;
      List localList = a(this.gfB, zz(), this.crf);
      for (int i = 0; i < localList.size(); i++)
        this.crf.aQ(this.gfC, (String)localList.get(i));
    }
    if (paramArrayOfString != null)
    {
      int j = paramArrayOfString.length;
      int k = 0;
      if (j > 0)
        while (k < paramArrayOfString.length)
        {
          this.crf.aQ(this.gfC, paramArrayOfString[k]);
          k++;
        }
    }
  }

  public static String a(ae paramae, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE IF NOT EXISTS " + paramString + " ( ");
    localStringBuilder.append(paramae.cjp);
    localStringBuilder.append(");");
    return localStringBuilder.toString();
  }

  private static StringBuilder a(ContentValues paramContentValues, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      localStringBuilder.append(str + " = ? AND ");
      if (paramContentValues.get(str) == null)
        return null;
    }
    localStringBuilder.append(" 1=1");
    return localStringBuilder;
  }

  public static List a(ae paramae, String paramString, af paramaf)
  {
    LinkedList localLinkedList = new LinkedList();
    if ((paramaf == null) || (paramString == null))
    {
      Object[] arrayOfObject = new Object[2];
      if (paramaf == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject[0] = Boolean.valueOf(bool);
        arrayOfObject[1] = paramString;
        aa.b("MicroMsg.SDK.MAutoStorage", "dk getUpdateSQLs db==null :%b  table:%s", arrayOfObject);
        return localLinkedList;
      }
    }
    Cursor localCursor = paramaf.rawQuery("PRAGMA table_info( " + paramString + " )", new String[0]);
    if (localCursor == null)
      return localLinkedList;
    HashMap localHashMap = new HashMap();
    while (localCursor.moveToNext())
      localHashMap.put(localCursor.getString(localCursor.getColumnIndex("name")), localCursor.getString(localCursor.getColumnIndex("type")));
    localCursor.close();
    Iterator localIterator = paramae.gfA.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = (String)localEntry.getValue();
      String str2 = (String)localEntry.getKey();
      if ((str1 != null) && (str1.length() > 0))
      {
        String str3 = (String)localHashMap.get(str2);
        if (str3 == null)
        {
          localLinkedList.add("ALTER TABLE " + paramString + " ADD COLUMN " + str2 + " " + str1 + ";");
          localHashMap.remove(str2);
        }
        else if (!str3.equalsIgnoreCase(str1))
        {
          aa.e("MicroMsg.SDK.MAutoStorage", "conflicting alter table on column: " + str2 + ", " + str3 + "<o-n>" + str1);
          localHashMap.remove(str2);
        }
      }
    }
    return localLinkedList;
  }

  private boolean a(ContentValues paramContentValues)
  {
    af localaf = this.crf;
    String str1 = zz();
    String[] arrayOfString1 = this.gfB.bZx;
    String str2 = this.gfB.gfz + " = ?";
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = cj.hW(paramContentValues.getAsString(this.gfB.gfz));
    Cursor localCursor = localaf.a(str1, arrayOfString1, str2, arrayOfString2, null, null);
    boolean bool = ad.a(paramContentValues, localCursor);
    localCursor.close();
    return bool;
  }

  private static String[] a(String[] paramArrayOfString, ContentValues paramContentValues)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
      arrayOfString[i] = cj.hW(paramContentValues.getAsString(paramArrayOfString[i]));
    return arrayOfString;
  }

  private void tf(String paramString)
  {
    aa.d("MicroMsg.SDK.MAutoStorage", zz() + ":" + paramString);
  }

  private void tg(String paramString)
  {
    aa.e("MicroMsg.SDK.MAutoStorage", zz() + ":" + paramString);
  }

  public Cursor BD()
  {
    return this.crf.a(zz(), this.gfB.bZx, null, null, null, null);
  }

  public boolean a(long paramLong, ad paramad)
  {
    ContentValues localContentValues = paramad.oa();
    boolean bool;
    if ((localContentValues == null) || (localContentValues.size() <= 0))
    {
      tg("update failed, value.size <= 0");
      bool = false;
    }
    while (true)
    {
      return bool;
      af localaf1 = this.crf;
      String str1 = zz();
      String[] arrayOfString1 = this.gfB.bZx;
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = String.valueOf(paramLong);
      Cursor localCursor = localaf1.a(str1, arrayOfString1, "rowid = ?", arrayOfString2, null, null);
      if (ad.a(localContentValues, localCursor))
      {
        localCursor.close();
        tf("no need replace , fields no change");
        return true;
      }
      localCursor.close();
      af localaf2 = this.crf;
      String str2 = zz();
      String[] arrayOfString3 = new String[1];
      arrayOfString3[0] = String.valueOf(paramLong);
      if (localaf2.update(str2, localContentValues, "rowid = ?", arrayOfString3) > 0);
      for (bool = true; bool; bool = false)
      {
        Ei();
        return bool;
      }
    }
  }

  public boolean a(ad paramad)
  {
    boolean bool;
    ContentValues localContentValues;
    int i;
    int j;
    if (!cj.hX(this.gfB.gfz))
    {
      bool = true;
      Assert.assertTrue("replace primaryKey == null", bool);
      localContentValues = paramad.oa();
      if (localContentValues != null)
      {
        i = localContentValues.size();
        j = paramad.qE().cAj.length;
        if (!localContentValues.containsKey("rowid"))
          break label83;
      }
    }
    label83: for (int k = 1; ; k = 0)
    {
      if (i == k + j)
        break label89;
      tg("replace failed, cv.size() != item.fields().length");
      return false;
      bool = false;
      break;
    }
    label89: if (a(localContentValues))
    {
      tf("no need replace , fields no change");
      return true;
    }
    if (this.crf.replace(zz(), this.gfB.gfz, localContentValues) > 0L)
    {
      th(this.gfB.gfz);
      return true;
    }
    tg("replace failed");
    return false;
  }

  public boolean a(ad paramad, String[] paramArrayOfString)
  {
    boolean bool = false;
    ContentValues localContentValues = paramad.oa();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
      tg("update failed, value.size <= 0");
    do
    {
      return bool;
      if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
        break;
      tf("update with primary key");
      if (a(localContentValues))
      {
        tf("no need replace , fields no change");
        return true;
      }
      af localaf = this.crf;
      String str1 = zz();
      String str2 = this.gfB.gfz + " = ?";
      String[] arrayOfString = new String[1];
      arrayOfString[0] = cj.hW(localContentValues.getAsString(this.gfB.gfz));
      int i = localaf.update(str1, localContentValues, str2, arrayOfString);
      bool = false;
      if (i > 0)
        bool = true;
    }
    while (!bool);
    Ei();
    return bool;
    StringBuilder localStringBuilder = a(localContentValues, paramArrayOfString);
    if (localStringBuilder == null)
    {
      tg("update failed, check keys failed");
      return false;
    }
    if (this.crf.update(zz(), localContentValues, localStringBuilder.toString(), a(paramArrayOfString, localContentValues)) > 0)
    {
      th(localContentValues.getAsString(this.gfB.gfz));
      return true;
    }
    tg("update failed");
    return false;
  }

  public final boolean aQ(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      tg("null or nill table");
      return false;
    }
    if ((paramString2 == null) || (paramString2.length() == 0))
    {
      tg("null or nill sql");
      return false;
    }
    return this.crf.aQ(paramString1, paramString2);
  }

  public final String azZ()
  {
    return this.gfB.gfz;
  }

  public final boolean b(long paramLong, ad paramad)
  {
    af localaf = this.crf;
    String str = zz();
    String[] arrayOfString1 = this.gfB.bZx;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramLong);
    Cursor localCursor = localaf.a(str, arrayOfString1, "rowid = ?", arrayOfString2, null, null);
    if (localCursor.moveToFirst())
    {
      paramad.convertFrom(localCursor);
      localCursor.close();
      return true;
    }
    localCursor.close();
    return false;
  }

  public boolean b(ad paramad)
  {
    ContentValues localContentValues = paramad.oa();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
    {
      tg("insert failed, value.size <= 0");
      return false;
    }
    paramad.gfy = this.crf.insert(zz(), this.gfB.gfz, localContentValues);
    if (paramad.gfy <= 0L)
    {
      tg("insert failed");
      return false;
    }
    localContentValues.put("rowid", Long.valueOf(paramad.gfy));
    th(localContentValues.getAsString(this.gfB.gfz));
    return true;
  }

  public boolean b(ad paramad, String[] paramArrayOfString)
  {
    boolean bool = false;
    ContentValues localContentValues = paramad.oa();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
      tg("delete failed, value.size <= 0");
    do
    {
      return bool;
      if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
        break;
      tf("delete with primary key");
      af localaf = this.crf;
      String str1 = zz();
      String str2 = this.gfB.gfz + " = ?";
      String[] arrayOfString = new String[1];
      arrayOfString[0] = cj.hW(localContentValues.getAsString(this.gfB.gfz));
      int i = localaf.delete(str1, str2, arrayOfString);
      bool = false;
      if (i > 0)
        bool = true;
    }
    while (!bool);
    Ei();
    return bool;
    StringBuilder localStringBuilder = a(localContentValues, paramArrayOfString);
    if (localStringBuilder == null)
    {
      tg("delete failed, check keys failed");
      return false;
    }
    if (this.crf.delete(zz(), localStringBuilder.toString(), a(paramArrayOfString, localContentValues)) > 0)
    {
      th(this.gfB.gfz);
      return true;
    }
    tg("delete failed");
    return false;
  }

  public final boolean c(ad paramad, String[] paramArrayOfString)
  {
    ContentValues localContentValues = paramad.oa();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
    {
      tg("get failed, value.size <= 0");
      return false;
    }
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      tf("get with primary key");
      af localaf = this.crf;
      String str1 = zz();
      String[] arrayOfString1 = this.gfB.bZx;
      String str2 = this.gfB.gfz + " = ?";
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = cj.hW(localContentValues.getAsString(this.gfB.gfz));
      Cursor localCursor1 = localaf.a(str1, arrayOfString1, str2, arrayOfString2, null, null);
      if (localCursor1.moveToFirst())
      {
        paramad.convertFrom(localCursor1);
        localCursor1.close();
        return true;
      }
      localCursor1.close();
      return false;
    }
    StringBuilder localStringBuilder = a(localContentValues, paramArrayOfString);
    if (localStringBuilder == null)
    {
      tg("get failed, check keys failed");
      return false;
    }
    Cursor localCursor2 = this.crf.a(zz(), this.gfB.bZx, localStringBuilder.toString(), a(paramArrayOfString, localContentValues), null, null);
    if (localCursor2.moveToFirst())
    {
      paramad.convertFrom(localCursor2);
      localCursor2.close();
      return true;
    }
    localCursor2.close();
    tf("get failed, not found");
    return false;
  }

  public boolean delete(long paramLong)
  {
    boolean bool = true;
    af localaf = this.crf;
    String str = zz();
    String[] arrayOfString = new String[bool];
    arrayOfString[0] = String.valueOf(paramLong);
    if (localaf.delete(str, "rowid = ?", arrayOfString) > 0);
    while (true)
    {
      if (bool)
        Ei();
      return bool;
      bool = false;
    }
  }

  public int getCount()
  {
    Cursor localCursor = rawQuery("select count(*) from " + zz(), new String[0]);
    int i = 0;
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    return i;
  }

  public final Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    return this.crf.rawQuery(paramString, paramArrayOfString);
  }

  public String zz()
  {
    return this.gfC;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.ah
 * JD-Core Version:    0.6.2
 */