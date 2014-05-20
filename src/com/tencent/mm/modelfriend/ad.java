package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;

public final class ad extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(ac.cfX, "GoogleFriend");
  }

  public ad(af paramaf)
  {
    super(paramaf, ac.cfX, "GoogleFriend", null);
    this.crf = paramaf;
  }

  private boolean a(ac paramac)
  {
    if (paramac == null);
    ContentValues localContentValues;
    do
    {
      return false;
      localContentValues = paramac.oa();
    }
    while ((int)this.crf.insert("GoogleFriend", "googleitemid", localContentValues) <= 0);
    return true;
  }

  public final Cursor K(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1))
    {
      localStringBuilder.append(" WHERE ( ");
      localStringBuilder.append("GoogleFriend.googlegmail!='" + paramString2 + "' AND ");
      localStringBuilder.append("GoogleFriend.googlename LIKE '%" + paramString1 + "%' OR ");
      localStringBuilder.append("GoogleFriend.googlenamepy LIKE '%" + paramString1 + "%' OR ");
      localStringBuilder.append("GoogleFriend.googlegmail LIKE '%" + paramString1 + "%' OR ");
      localStringBuilder.append("GoogleFriend.nickname LIKE '%" + paramString1 + "%' ) ");
    }
    while (true)
    {
      localStringBuilder.append(" GROUP BY googleid,contecttype");
      localStringBuilder.append(" ORDER BY status , googlenamepy ASC , usernamepy ASC");
      return this.crf.rawQuery("SELECT GoogleFriend.googleid,GoogleFriend.googlename,GoogleFriend.googlephotourl,GoogleFriend.googlegmail,GoogleFriend.username,GoogleFriend.nickname,GoogleFriend.nicknameqp,GoogleFriend.usernamepy,GoogleFriend.small_url,GoogleFriend.big_url,GoogleFriend.ret,GoogleFriend.status,GoogleFriend.googleitemid,GoogleFriend.googlecgistatus,GoogleFriend.contecttype,GoogleFriend.googlenamepy FROM GoogleFriend  " + localStringBuilder.toString(), null);
      localStringBuilder.append(" WHERE ( GoogleFriend.googlegmail!='" + paramString2 + "' )");
    }
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final boolean b(ac paramac)
  {
    boolean bool1 = true;
    String str1 = paramac.field_googleitemid;
    String str2 = "SELECT GoogleFriend.googleid,GoogleFriend.googlename,GoogleFriend.googlephotourl,GoogleFriend.googlegmail,GoogleFriend.username,GoogleFriend.nickname,GoogleFriend.nicknameqp,GoogleFriend.usernamepy,GoogleFriend.small_url,GoogleFriend.big_url,GoogleFriend.ret,GoogleFriend.status,GoogleFriend.googleitemid,GoogleFriend.googlecgistatus,GoogleFriend.contecttype,GoogleFriend.googlenamepy FROM GoogleFriend   WHERE GoogleFriend.googleitemid = \"" + cj.hR(str1) + "\"";
    Cursor localCursor = this.crf.rawQuery(str2, null);
    boolean bool2;
    if (localCursor.getCount() > 0)
    {
      bool2 = bool1;
      localCursor.close();
      if (bool2)
        break label86;
      bool1 = a(paramac);
    }
    label86: int i;
    do
    {
      return bool1;
      bool2 = false;
      break;
      ContentValues localContentValues = paramac.oa();
      af localaf = this.crf;
      String[] arrayOfString = new String[bool1];
      arrayOfString[0] = paramac.field_googleitemid;
      i = localaf.update("GoogleFriend", localContentValues, "googleitemid=?", arrayOfString);
      if (i > 0)
        Ei();
    }
    while (i > 0);
    return false;
  }

  public final void clear()
  {
    this.crf.aQ("GoogleFriend", " delete from GoogleFriend");
  }

  public final boolean e(ArrayList paramArrayList)
  {
    int i = 0;
    if ((paramArrayList == null) || (paramArrayList.size() <= 0))
    {
      aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "insertList . list is null.");
      return false;
    }
    long l;
    i locali1;
    if ((this.crf instanceof i))
    {
      i locali2 = (i)this.crf;
      l = locali2.ca(Thread.currentThread().getId());
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l);
      aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "surround insertList in a transaction, ticket = %d", arrayOfObject);
      locali1 = locali2;
    }
    while (true)
      if (i < paramArrayList.size())
      {
        a((ac)paramArrayList.get(i));
        i++;
      }
      else
      {
        if (locali1 != null)
        {
          locali1.cb(l);
          aa.i("MicroMsg.GoogleContact.GoogleFriendUI", "end updateList transaction");
        }
        return true;
        l = -1L;
        locali1 = null;
        i = 0;
      }
  }

  public final Cursor fC(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(" WHERE ( ");
      localStringBuilder.append("GoogleFriend.googleid='" + paramString + "'");
      localStringBuilder.append(" ) ");
    }
    return this.crf.rawQuery("SELECT GoogleFriend.googleid,GoogleFriend.googlename,GoogleFriend.googlephotourl,GoogleFriend.googlegmail,GoogleFriend.username,GoogleFriend.nickname,GoogleFriend.nicknameqp,GoogleFriend.usernamepy,GoogleFriend.small_url,GoogleFriend.big_url,GoogleFriend.ret,GoogleFriend.status,GoogleFriend.googleitemid,GoogleFriend.googlecgistatus,GoogleFriend.contecttype,GoogleFriend.googlenamepy FROM GoogleFriend  " + localStringBuilder, null);
  }

  public final boolean s(String paramString, int paramInt)
  {
    String str = "UPDATE GoogleFriend SET googlecgistatus='" + paramInt + "' WHERE googleitemid='" + paramString + "'";
    return this.crf.aQ("GoogleFriend", str);
  }

  public final boolean t(String paramString, int paramInt)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      String str = "UPDATE GoogleFriend SET googlecgistatus='" + paramInt + "' , status='0' WHERE username='" + paramString + "'";
      return this.crf.aQ("GoogleFriend", str);
    }
    return false;
  }

  public final String zz()
  {
    return "GoogleFriend";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ad
 * JD-Core Version:    0.6.2
 */