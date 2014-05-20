package com.tencent.mm.storage;

import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.protocal.a.ey;
import com.tencent.mm.protocal.a.ml;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class aa extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private af crf;
  private SharedPreferences ghz;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(z.cfX, "EmojiInfoDesc");
  }

  public aa(af paramaf)
  {
    this(paramaf, z.cfX, "EmojiInfoDesc");
  }

  private aa(af paramaf, ae paramae, String paramString)
  {
    super(paramaf, paramae, paramString, null);
    this.crf = paramaf;
    this.ghz = PreferenceManager.getDefaultSharedPreferences(al.getContext());
  }

  public static boolean aBM()
  {
    return true;
  }

  private boolean uC(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    String str;
    String[] arrayOfString;
    Cursor localCursor;
    if (!bool1)
    {
      str = String.format("select %s from %s where %s=?", new Object[] { "desc", "EmojiInfoDesc", "groupId", "lang" });
      arrayOfString = new String[] { paramString };
      localCursor = null;
    }
    try
    {
      localCursor = this.crf.rawQuery(str, arrayOfString);
      bool2 = false;
      if (localCursor != null)
      {
        boolean bool3 = localCursor.moveToFirst();
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
      return bool2;
    }
    catch (Exception localException)
    {
      localException.toString();
      bool2 = false;
      return false;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final boolean a(List paramList, String paramString, int paramInt)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    i locali2;
    long l;
    if ((this.crf instanceof i))
    {
      locali2 = (i)this.crf;
      l = locali2.ca(Thread.currentThread().getId());
    }
    for (i locali1 = locali2; ; locali1 = null)
    {
      z localz = new z();
      localz.field_groupId = paramString;
      localz.field_click_flag = paramInt;
      Iterator localIterator1 = paramList.iterator();
      ContentValues localContentValues;
      do
      {
        Iterator localIterator2;
        while (!localIterator2.hasNext())
        {
          if (!localIterator1.hasNext())
            break;
          ey localey = (ey)localIterator1.next();
          localz.field_md5 = localey.fFA;
          localIterator2 = localey.fAD.iterator();
        }
        ml localml = (ml)localIterator2.next();
        localz.field_desc = localml.fEA;
        localz.field_lang = localml.fzH;
        localz.field_md5_lang = (localz.field_md5 + localz.field_lang);
        localContentValues = localz.oa();
      }
      while (this.crf.replace("EmojiInfoDesc", "md5_lang", localContentValues) >= 0L);
      if (locali1 != null)
        locali1.cb(l);
      return false;
      this.crf.replace("EmojiInfoDesc", "md5_lang", localz.oa());
      if (locali1 != null)
        locali1.cb(l);
      this.ghz.edit().putLong("274544" + paramString, System.currentTimeMillis()).commit();
      return true;
      l = -1L;
    }
  }

  public final String jh(String paramString)
  {
    String str1 = String.format("select %s from %s where %s=?", new Object[] { "desc", "EmojiInfoDesc", "md5_lang" });
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = (paramString + com.tencent.mm.sdk.platformtools.z.azj().toLowerCase());
    Cursor localCursor1 = this.crf.rawQuery(str1, arrayOfString1);
    boolean bool = localCursor1.moveToFirst();
    String str2 = null;
    if (bool)
      str2 = localCursor1.getString(localCursor1.getColumnIndex("desc"));
    localCursor1.close();
    if (!cj.hX(str2))
      return str2;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = (paramString + "default");
    Cursor localCursor2 = this.crf.rawQuery(str1, arrayOfString2);
    if (localCursor2.moveToFirst())
      str2 = localCursor2.getString(localCursor2.getColumnIndex("desc"));
    localCursor2.close();
    return str2;
  }

  public final boolean uD(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.equals(w.ggW)))
    {
      long l = this.ghz.getLong("274544" + paramString, 0L);
      if (System.currentTimeMillis() - l >= 86400000L);
      while (!uC(paramString))
        return true;
      return false;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.aa
 * JD-Core Version:    0.6.2
 */