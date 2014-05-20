package com.tencent.mm.pluginsdk;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Contacts;
import android.provider.Contacts.Phones;
import android.provider.Contacts.Photos;
import android.provider.ContactsContract.Contacts;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class c
{
  public static List aO(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
    {
      new a();
      return a.aO(paramContext);
    }
    new b();
    return b.aO(paramContext);
  }

  public static List aP(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
    {
      new a();
      return a.aP(paramContext);
    }
    new b();
    return b.aP(paramContext);
  }

  public static List aQ(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
    {
      new a();
      return a.aO(paramContext);
    }
    new b();
    return b.aQ(paramContext);
  }

  public static List aR(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
    {
      new a();
      LinkedList localLinkedList = new LinkedList();
      Cursor localCursor = paramContext.getContentResolver().query(Contacts.Phones.CONTENT_URI, null, null, null, null);
      if (localCursor == null)
      {
        aa.e("AddressBook16Impl", "getPhonesCursor : cursor is null.");
        return localLinkedList;
      }
      if (localCursor.moveToFirst())
        do
          localLinkedList.add(localCursor.getString(localCursor.getColumnIndex("number")));
        while (localCursor.moveToNext());
      localCursor.close();
      return localLinkedList;
    }
    new b();
    return b.aR(paramContext);
  }

  public static Uri aph()
  {
    try
    {
      if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
      {
        new a();
        return Contacts.CONTENT_URI;
      }
      new b();
      Uri localUri = ContactsContract.Contacts.CONTENT_URI;
      return localUri;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static boolean b(String paramString, Context paramContext, byte[] paramArrayOfByte)
  {
    new b();
    return b.b(paramString, paramContext, paramArrayOfByte);
  }

  public static Bitmap e(String paramString, Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() <= 4)
    {
      new a();
      if ((paramString == null) || (paramString.equals("")));
      Cursor localCursor;
      do
      {
        return null;
        localCursor = paramContext.getContentResolver().query(Contacts.Photos.CONTENT_URI, null, "person = " + paramString, null, null);
        if (localCursor == null)
        {
          aa.e("AddressBook16Impl", "getAvatar: photoCursor is null.");
          return null;
        }
      }
      while (!localCursor.moveToNext());
      byte[] arrayOfByte = localCursor.getBlob(localCursor.getColumnIndex("data"));
      Bitmap localBitmap = null;
      if (arrayOfByte != null)
      {
        localBitmap = h.cj(arrayOfByte);
        if (localBitmap != null)
          localBitmap = h.a(localBitmap, true, 4.0F);
      }
      localCursor.close();
      return localBitmap;
    }
    new b();
    return b.e(paramString, paramContext);
  }

  public static String kH(String paramString)
  {
    String str1 = paramString.trim();
    boolean bool = str1.startsWith("+");
    String str2;
    Matcher localMatcher;
    if ((bool) && (str1.length() > 1))
    {
      str2 = str1.substring(1, str1.length());
      localMatcher = Pattern.compile("[^0-9]").matcher(str2);
      if (!bool)
        break label104;
    }
    label104: for (String str3 = "+" + localMatcher.replaceAll("").trim(); ; str3 = localMatcher.replaceAll("").trim())
    {
      aa.f("MicroMsg.AddressBookUtil", "formatMobile before:%s  after:%s", new Object[] { str1, str3 });
      return str3;
      str2 = str1;
      break;
    }
  }

  public static boolean qe(String paramString)
  {
    return paramString.length() > 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c
 * JD-Core Version:    0.6.2
 */