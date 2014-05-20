package com.tencent.mm.pluginsdk;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import java.util.LinkedList;
import java.util.List;

final class b
{
  public static List aO(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      Cursor localCursor2 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
      localCursor1 = localCursor2;
      if (localCursor1 == null)
      {
        aa.e("AddressBook20Impl", "getMobileInfo: mobile is null");
        return localLinkedList;
      }
    }
    catch (Exception localException)
    {
      Cursor localCursor1;
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("AddressBook20Impl", "getMobileInfo: exception occured [%s]", arrayOfObject);
        localCursor1 = null;
      }
      if (localCursor1.getCount() > 0)
        while (localCursor1.moveToNext())
        {
          String str = localCursor1.getString(localCursor1.getColumnIndex("display_name"));
          localLinkedList.add(new String[] { localCursor1.getString(localCursor1.getColumnIndex("contact_id")), str, localCursor1.getString(localCursor1.getColumnIndex("data1")), localCursor1.getString(localCursor1.getColumnIndex("raw_contact_id")) });
        }
      localCursor1.close();
    }
    return localLinkedList;
  }

  public static List aP(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Cursor localCursor;
    try
    {
      localCursor = localContentResolver.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, null, null, null);
      if (localCursor == null)
        return localLinkedList;
    }
    catch (Exception localException)
    {
      return localLinkedList;
    }
    if (localCursor.moveToFirst())
      do
      {
        String str = localCursor.getString(localCursor.getColumnIndex("data1"));
        localLinkedList.add(new String[] { localCursor.getString(localCursor.getColumnIndex("contact_id")), localCursor.getString(localCursor.getColumnIndex("data4")), str, localCursor.getString(localCursor.getColumnIndex("raw_contact_id")) });
      }
      while (localCursor.moveToNext());
    localCursor.close();
    return localLinkedList;
  }

  public static List aQ(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      Cursor localCursor2 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, "sort_key_alt");
      localCursor1 = localCursor2;
      if (localCursor1 == null)
      {
        aa.e("AddressBook20Impl", "getMobileInfo: mobile is null");
        return localLinkedList;
      }
    }
    catch (Exception localException)
    {
      Cursor localCursor1;
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("AddressBook20Impl", "exception in getMoblieOrderInfo(), [%s]", arrayOfObject);
        localCursor1 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
      }
      if (localCursor1.getCount() > 0)
        while (localCursor1.moveToNext())
        {
          String str = localCursor1.getString(localCursor1.getColumnIndex("display_name"));
          localLinkedList.add(new String[] { localCursor1.getString(localCursor1.getColumnIndex("contact_id")), str, localCursor1.getString(localCursor1.getColumnIndex("data1")), localCursor1.getString(localCursor1.getColumnIndex("raw_contact_id")) });
        }
      localCursor1.close();
    }
    return localLinkedList;
  }

  public static List aR(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      Cursor localCursor2 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
      localCursor1 = localCursor2;
      if (localCursor1 == null)
      {
        aa.e("AddressBook20Impl", "getPhonesCursor: cursor is null.");
        return localLinkedList;
      }
    }
    catch (Exception localException)
    {
      Cursor localCursor1;
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("AddressBook20Impl", "exception in getMobileList, [%s]", arrayOfObject);
        localCursor1 = null;
      }
      if (localCursor1.moveToFirst())
        do
          localLinkedList.add(localCursor1.getString(localCursor1.getColumnIndex("data1")));
        while (localCursor1.moveToNext());
      localCursor1.close();
    }
    return localLinkedList;
  }

  // ERROR //
  public static boolean b(String paramString, Context paramContext, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +12 -> 13
    //   4: aload_0
    //   5: ldc 112
    //   7: invokevirtual 115	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: ifeq +5 -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_1
    //   16: invokevirtual 21	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   19: astore 5
    //   21: aload_0
    //   22: invokestatic 121	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   25: lstore 6
    //   27: new 123	android/content/ContentValues
    //   30: dup
    //   31: invokespecial 124	android/content/ContentValues:<init>	()V
    //   34: astore 8
    //   36: iconst_4
    //   37: anewarray 4	java/lang/Object
    //   40: astore 9
    //   42: aload 9
    //   44: iconst_0
    //   45: ldc 81
    //   47: aastore
    //   48: aload 9
    //   50: iconst_1
    //   51: lload 6
    //   53: invokestatic 128	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   56: aastore
    //   57: aload 9
    //   59: iconst_2
    //   60: ldc 130
    //   62: aastore
    //   63: aload 9
    //   65: iconst_3
    //   66: ldc 132
    //   68: aastore
    //   69: ldc 134
    //   71: aload 9
    //   73: invokestatic 138	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   76: astore 10
    //   78: ldc 35
    //   80: ldc 140
    //   82: iconst_1
    //   83: anewarray 4	java/lang/Object
    //   86: dup
    //   87: iconst_0
    //   88: aload 10
    //   90: aastore
    //   91: invokestatic 142	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   94: aload 5
    //   96: getstatic 145	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   99: aconst_null
    //   100: aload 10
    //   102: aconst_null
    //   103: aconst_null
    //   104: invokevirtual 33	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   107: astore 11
    //   109: aload 11
    //   111: ldc 147
    //   113: invokeinterface 150 2 0
    //   118: istore 13
    //   120: aload 11
    //   122: invokeinterface 97 1 0
    //   127: ifeq +149 -> 276
    //   130: aload 11
    //   132: iload 13
    //   134: invokeinterface 154 2 0
    //   139: istore 14
    //   141: aload 11
    //   143: invokeinterface 90 1 0
    //   148: aload 8
    //   150: ldc 81
    //   152: lload 6
    //   154: invokestatic 128	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   157: invokevirtual 158	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   160: aload 8
    //   162: ldc 160
    //   164: iconst_1
    //   165: invokestatic 165	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   168: invokevirtual 168	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   171: aload 8
    //   173: ldc 170
    //   175: aload_2
    //   176: invokevirtual 173	android/content/ContentValues:put	(Ljava/lang/String;[B)V
    //   179: aload 8
    //   181: ldc 130
    //   183: ldc 132
    //   185: invokevirtual 175	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   188: iload 14
    //   190: iflt +36 -> 226
    //   193: aload 5
    //   195: getstatic 145	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   198: aload 8
    //   200: new 177	java/lang/StringBuilder
    //   203: dup
    //   204: ldc 179
    //   206: invokespecial 182	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   209: iload 14
    //   211: invokevirtual 186	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   214: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: aconst_null
    //   218: invokevirtual 193	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   221: ifle +61 -> 282
    //   224: iconst_1
    //   225: ireturn
    //   226: aload 5
    //   228: getstatic 145	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   231: aload 8
    //   233: invokevirtual 197	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   236: pop
    //   237: iconst_1
    //   238: ireturn
    //   239: astore_3
    //   240: aconst_null
    //   241: astore 4
    //   243: aload 4
    //   245: ifnull +20 -> 265
    //   248: aload 4
    //   250: invokeinterface 200 1 0
    //   255: ifne +10 -> 265
    //   258: aload 4
    //   260: invokeinterface 90 1 0
    //   265: iconst_0
    //   266: ireturn
    //   267: astore 12
    //   269: aload 11
    //   271: astore 4
    //   273: goto -30 -> 243
    //   276: iconst_m1
    //   277: istore 14
    //   279: goto -138 -> 141
    //   282: iconst_0
    //   283: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   15	109	239	java/lang/Exception
    //   109	141	267	java/lang/Exception
    //   141	188	267	java/lang/Exception
    //   193	224	267	java/lang/Exception
    //   226	237	267	java/lang/Exception
  }

  public static Bitmap e(String paramString, Context paramContext)
  {
    Bitmap localBitmap;
    if ((paramString == null) || (paramString.equals("")))
      localBitmap = null;
    while (true)
    {
      return localBitmap;
      ContentResolver localContentResolver = paramContext.getContentResolver();
      long l1 = 0L;
      try
      {
        long l2 = Long.parseLong(paramString);
        l1 = l2;
        label35: localBitmap = h.decodeStream(ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, l1)));
        if (localBitmap == null)
          continue;
        return h.a(localBitmap, true, 4.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        break label35;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.b
 * JD-Core Version:    0.6.2
 */