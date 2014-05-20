package com.tencent.mm.modelsimple;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.Profile;
import android.telephony.TelephonyManager;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;

public final class e
{
  public static String R(Context paramContext)
  {
    aa.i("MicroMsg.ContactsUtil", "Get name of a contacts record or profile.");
    if (paramContext == null)
    {
      aa.e("MicroMsg.ContactsUtil", "context is null.");
      return null;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    String str1;
    if (i.bG(14))
    {
      aa.i("MicroMsg.ContactsUtil", "The Android API version is higher than 14.");
      Cursor localCursor2 = localContentResolver.query(ContactsContract.Profile.CONTENT_URI, new String[] { "display_name" }, null, null, null);
      if (localCursor2 != null)
        if (localCursor2.moveToFirst())
        {
          str1 = localCursor2.getString(localCursor2.getColumnIndex("display_name"));
          aa.d("MicroMsg.ContactsUtil", "Have got name from profile, name is %s", new Object[] { str1 });
          localCursor2.close();
        }
    }
    while (true)
    {
      if (cj.hX(str1))
      {
        String str2 = q(paramContext, f.ab(paramContext));
        if (cj.hX(str2))
        {
          aa.i("MicroMsg.ContactsUtil", "contactId is null.");
          return null;
        }
        Cursor localCursor1 = localContentResolver.query(ContactsContract.Data.CONTENT_URI, new String[] { "display_name" }, "contact_id=?", new String[] { str2 }, null);
        if (localCursor1 != null)
        {
          if (localCursor1.moveToFirst())
          {
            str1 = localCursor1.getString(localCursor1.getColumnIndex("display_name"));
            aa.d("MicroMsg.ContactsUtil", "Have got name from contacts, name is %s", new Object[] { str1 });
          }
          localCursor1.close();
        }
      }
      return str1;
      str1 = null;
      break;
      str1 = null;
    }
  }

  public static Bitmap S(Context paramContext)
  {
    aa.i("MicroMsg.ContactsUtil", "Get bitmap of a contacts record or profile.");
    if (paramContext == null)
    {
      aa.e("MicroMsg.ContactsUtil", "context is null.");
      return null;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    boolean bool = i.bG(14);
    Object localObject1 = null;
    Cursor localCursor3;
    Cursor localCursor4;
    label312: byte[] arrayOfByte;
    if (bool)
    {
      aa.i("MicroMsg.ContactsUtil", "The Android API version is higher than 14.");
      localCursor3 = localContentResolver.query(ContactsContract.Profile.CONTENT_URI, new String[] { "_id" }, null, null, null);
      localObject1 = null;
      if (localCursor3 != null)
      {
        if (localCursor3.getCount() <= 0)
          break label441;
        localCursor3.close();
        localCursor4 = localContentResolver.query(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), new String[] { "data15", "data_sync1" }, "mimetype=?", new String[] { "vnd.android.cursor.item/photo" }, null);
        localObject1 = null;
        if (localCursor4 != null)
        {
          if (!localCursor4.moveToFirst())
            break label860;
          if ((ba.bt(paramContext)) || (ba.bs(paramContext)) || (ba.bq(paramContext)))
          {
            aa.i("MicroMsg.ContactsUtil", "The network status is wifi or 3G or 4G.");
            String str5 = localCursor4.getString(localCursor4.getColumnIndex("data_sync1"));
            aa.d("MicroMsg.ContactsUtil", "get sync avatar url : [%s]", new Object[] { str5 });
            if (!cj.hX(str5))
            {
              int n = str5.lastIndexOf("https:");
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Integer.valueOf(n);
              aa.d("MicroMsg.ContactsUtil", "check is exist https download url :[%d]", arrayOfObject2);
              if (n >= 0)
              {
                String str6 = str5.substring(n);
                localBitmap = gq(str6);
                aa.d("MicroMsg.ContactsUtil", "Get image from google sync account in profile,url:[%s]", new Object[] { str6 });
                if ((localBitmap == null) || (localBitmap.isRecycled()))
                  break label312;
                localCursor4.close();
                return localBitmap;
              }
            }
          }
          localBitmap = null;
          int m = localCursor4.getColumnIndex("data15");
          if (m != -1)
          {
            arrayOfByte = localCursor4.getBlob(m);
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Boolean.valueOf(cj.A(arrayOfByte));
            aa.d("MicroMsg.ContactsUtil", "get bitmap data is null : [%b]", arrayOfObject1);
            if (!cj.A(arrayOfByte))
              aa.i("MicroMsg.ContactsUtil", "Get image from profile personal icon.");
          }
        }
      }
    }
    label441: label703: label712: label719: label860: for (Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length); ; localBitmap = null)
    {
      localCursor4.close();
      localObject1 = localBitmap;
      String str1;
      Cursor localCursor1;
      Cursor localCursor2;
      while ((localObject1 == null) || (((Bitmap)localObject1).isRecycled()))
      {
        str1 = q(paramContext, f.ab(paramContext));
        if (cj.hX(str1))
        {
          aa.i("MicroMsg.ContactsUtil", "contactId is null.");
          return null;
          localCursor3.close();
          localObject1 = null;
        }
        else
        {
          localCursor1 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[] { "photo_id", "raw_contact_id" }, "contact_id=?", new String[] { str1 }, null);
          if (localCursor1 != null)
          {
            if (localCursor1.moveToFirst())
            {
              if ((!ba.bt(paramContext)) && (!ba.bs(paramContext)) && (!ba.bq(paramContext)))
                break label719;
              aa.i("MicroMsg.ContactsUtil", "The network status is wifi or 3G or 4G.");
              String str2 = localCursor1.getString(localCursor1.getColumnIndex("raw_contact_id"));
              localCursor2 = localContentResolver.query(ContactsContract.Data.CONTENT_URI, new String[] { "data15", "data_sync1" }, "mimetype=? AND raw_contact_id=?", new String[] { "vnd.android.cursor.item/photo", str2 }, null);
              if (localCursor2 == null)
                break label719;
              if (!localCursor2.moveToFirst())
                break label712;
              int j = localCursor2.getColumnIndex("data_sync1");
              if (j == -1)
                break label712;
              String str3 = localCursor2.getString(j);
              if (cj.hX(str3))
                break label712;
              int k = str3.lastIndexOf("https:");
              if (k < 0)
                break label712;
              String str4 = str3.substring(k);
              localObject1 = gq(str4);
              if ((localObject1 == null) || (((Bitmap)localObject1).isRecycled()))
                break label712;
              aa.d("MicroMsg.ContactsUtil", "Get image from google sync account in contacts,url:[%s]", new Object[] { str4 });
              localCursor2.close();
            }
            localCursor1.close();
          }
        }
      }
      return localObject1;
      localCursor2.close();
      aa.i("MicroMsg.ContactsUtil", "Get bitmap from contacts icon.");
      int i = localCursor1.getColumnIndex("photo_id");
      long l;
      if (i != -1)
      {
        l = localCursor1.getLong(i);
        aa.i("MicroMsg.ContactsUtil", "Have got photoId,photoId is " + l);
      }
      while (true)
      {
        if (l > 0L)
        {
          localObject2 = BitmapFactory.decodeStream(ContactsContract.Contacts.openContactPhotoInputStream(localContentResolver, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(str1))));
          if ((localObject2 == null) || (((Bitmap)localObject2).isRecycled()))
            break label832;
          aa.i("MicroMsg.ContactsUtil", "Get image from contacts through google account.");
          localObject1 = localObject2;
          break label703;
        }
        Object localObject2 = localObject1;
        if (!localCursor1.moveToNext())
        {
          localObject1 = localObject2;
          break label703;
        }
        localObject1 = localObject2;
        break;
        l = 0L;
      }
    }
  }

  // ERROR //
  private static Bitmap gq(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 8
    //   4: ldc_w 258
    //   7: invokestatic 16	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: aload_0
    //   11: invokestatic 81	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   14: ifeq +13 -> 27
    //   17: ldc 8
    //   19: ldc_w 260
    //   22: invokestatic 21	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aload_1
    //   26: areturn
    //   27: aload_0
    //   28: invokevirtual 263	java/lang/String:trim	()Ljava/lang/String;
    //   31: astore_2
    //   32: aload_2
    //   33: ldc 143
    //   35: invokevirtual 266	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   38: ifne +13 -> 51
    //   41: ldc 8
    //   43: ldc_w 268
    //   46: invokestatic 21	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aconst_null
    //   50: areturn
    //   51: new 270	java/io/ByteArrayOutputStream
    //   54: dup
    //   55: invokespecial 272	java/io/ByteArrayOutputStream:<init>	()V
    //   58: astore_3
    //   59: new 274	com/tencent/mm/network/be
    //   62: dup
    //   63: aload_2
    //   64: invokespecial 275	com/tencent/mm/network/be:<init>	(Ljava/lang/String;)V
    //   67: astore 4
    //   69: aload 4
    //   71: invokevirtual 279	com/tencent/mm/network/be:getInputStream	()Ljava/io/InputStream;
    //   74: astore 18
    //   76: aload 18
    //   78: astore 6
    //   80: aload 6
    //   82: ifnonnull +69 -> 151
    //   85: ldc 8
    //   87: ldc_w 281
    //   90: iconst_1
    //   91: anewarray 4	java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload_2
    //   97: aastore
    //   98: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   101: aload 4
    //   103: invokevirtual 287	com/tencent/mm/network/be:disconnect	()V
    //   106: aload 6
    //   108: ifnull +8 -> 116
    //   111: aload 6
    //   113: invokevirtual 290	java/io/InputStream:close	()V
    //   116: aload_3
    //   117: invokevirtual 291	java/io/ByteArrayOutputStream:close	()V
    //   120: aconst_null
    //   121: areturn
    //   122: astore 23
    //   124: iconst_1
    //   125: anewarray 4	java/lang/Object
    //   128: astore 24
    //   130: aload 24
    //   132: iconst_0
    //   133: aload 23
    //   135: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   138: aastore
    //   139: ldc 8
    //   141: ldc_w 296
    //   144: aload 24
    //   146: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   149: aconst_null
    //   150: areturn
    //   151: sipush 1024
    //   154: newarray byte
    //   156: astore 19
    //   158: aload 6
    //   160: aload 19
    //   162: invokevirtual 300	java/io/InputStream:read	([B)I
    //   165: istore 20
    //   167: iload 20
    //   169: iconst_m1
    //   170: if_icmpeq +97 -> 267
    //   173: aload_3
    //   174: aload 19
    //   176: iconst_0
    //   177: iload 20
    //   179: invokevirtual 304	java/io/ByteArrayOutputStream:write	([BII)V
    //   182: goto -24 -> 158
    //   185: astore 5
    //   187: iconst_1
    //   188: anewarray 4	java/lang/Object
    //   191: astore 10
    //   193: aload 10
    //   195: iconst_0
    //   196: aload 5
    //   198: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   201: aastore
    //   202: ldc 8
    //   204: ldc_w 306
    //   207: aload 10
    //   209: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   212: aload 4
    //   214: ifnull +8 -> 222
    //   217: aload 4
    //   219: invokevirtual 287	com/tencent/mm/network/be:disconnect	()V
    //   222: aload 6
    //   224: ifnull +8 -> 232
    //   227: aload 6
    //   229: invokevirtual 290	java/io/InputStream:close	()V
    //   232: aload_3
    //   233: invokevirtual 291	java/io/ByteArrayOutputStream:close	()V
    //   236: aload_1
    //   237: areturn
    //   238: astore 11
    //   240: iconst_1
    //   241: anewarray 4	java/lang/Object
    //   244: astore 12
    //   246: aload 12
    //   248: iconst_0
    //   249: aload 11
    //   251: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   254: aastore
    //   255: ldc 8
    //   257: ldc_w 296
    //   260: aload 12
    //   262: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   265: aload_1
    //   266: areturn
    //   267: aload_3
    //   268: invokevirtual 310	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   271: invokestatic 316	com/tencent/mm/sdk/platformtools/h:cj	([B)Landroid/graphics/Bitmap;
    //   274: astore_1
    //   275: aload_3
    //   276: invokevirtual 291	java/io/ByteArrayOutputStream:close	()V
    //   279: aload 4
    //   281: invokevirtual 287	com/tencent/mm/network/be:disconnect	()V
    //   284: aload 6
    //   286: ifnull -261 -> 25
    //   289: aload 6
    //   291: invokevirtual 290	java/io/InputStream:close	()V
    //   294: aload_1
    //   295: areturn
    //   296: astore 21
    //   298: iconst_1
    //   299: anewarray 4	java/lang/Object
    //   302: astore 22
    //   304: aload 22
    //   306: iconst_0
    //   307: aload 21
    //   309: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   312: aastore
    //   313: ldc 8
    //   315: ldc_w 296
    //   318: aload 22
    //   320: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   323: aload_1
    //   324: areturn
    //   325: astore 13
    //   327: aconst_null
    //   328: astore 4
    //   330: aconst_null
    //   331: astore 6
    //   333: iconst_1
    //   334: anewarray 4	java/lang/Object
    //   337: astore 14
    //   339: aload 14
    //   341: iconst_0
    //   342: aload 13
    //   344: invokevirtual 317	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   347: aastore
    //   348: ldc 8
    //   350: ldc_w 319
    //   353: aload 14
    //   355: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   358: aload 4
    //   360: ifnull +8 -> 368
    //   363: aload 4
    //   365: invokevirtual 287	com/tencent/mm/network/be:disconnect	()V
    //   368: aload 6
    //   370: ifnull +8 -> 378
    //   373: aload 6
    //   375: invokevirtual 290	java/io/InputStream:close	()V
    //   378: aload_3
    //   379: invokevirtual 291	java/io/ByteArrayOutputStream:close	()V
    //   382: aload_1
    //   383: areturn
    //   384: astore 15
    //   386: iconst_1
    //   387: anewarray 4	java/lang/Object
    //   390: astore 16
    //   392: aload 16
    //   394: iconst_0
    //   395: aload 15
    //   397: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   400: aastore
    //   401: ldc 8
    //   403: ldc_w 296
    //   406: aload 16
    //   408: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   411: aload_1
    //   412: areturn
    //   413: astore 25
    //   415: aconst_null
    //   416: astore 4
    //   418: aconst_null
    //   419: astore 6
    //   421: aload 25
    //   423: astore 7
    //   425: aload 4
    //   427: ifnull +8 -> 435
    //   430: aload 4
    //   432: invokevirtual 287	com/tencent/mm/network/be:disconnect	()V
    //   435: aload 6
    //   437: ifnull +8 -> 445
    //   440: aload 6
    //   442: invokevirtual 290	java/io/InputStream:close	()V
    //   445: aload_3
    //   446: invokevirtual 291	java/io/ByteArrayOutputStream:close	()V
    //   449: aload 7
    //   451: athrow
    //   452: astore 8
    //   454: iconst_1
    //   455: anewarray 4	java/lang/Object
    //   458: astore 9
    //   460: aload 9
    //   462: iconst_0
    //   463: aload 8
    //   465: invokevirtual 294	java/io/IOException:getMessage	()Ljava/lang/String;
    //   468: aastore
    //   469: ldc 8
    //   471: ldc_w 296
    //   474: aload 9
    //   476: invokestatic 284	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   479: goto -30 -> 449
    //   482: astore 17
    //   484: aload 17
    //   486: astore 7
    //   488: aconst_null
    //   489: astore 6
    //   491: goto -66 -> 425
    //   494: astore 7
    //   496: goto -71 -> 425
    //   499: astore 13
    //   501: aconst_null
    //   502: astore_1
    //   503: aconst_null
    //   504: astore 6
    //   506: goto -173 -> 333
    //   509: astore 13
    //   511: goto -178 -> 333
    //   514: astore 5
    //   516: aconst_null
    //   517: astore_1
    //   518: aconst_null
    //   519: astore 4
    //   521: aconst_null
    //   522: astore 6
    //   524: goto -337 -> 187
    //   527: astore 5
    //   529: aconst_null
    //   530: astore_1
    //   531: aconst_null
    //   532: astore 6
    //   534: goto -347 -> 187
    //
    // Exception table:
    //   from	to	target	type
    //   101	106	122	java/io/IOException
    //   111	116	122	java/io/IOException
    //   116	120	122	java/io/IOException
    //   85	101	185	java/io/IOException
    //   151	158	185	java/io/IOException
    //   158	167	185	java/io/IOException
    //   173	182	185	java/io/IOException
    //   267	279	185	java/io/IOException
    //   217	222	238	java/io/IOException
    //   227	232	238	java/io/IOException
    //   232	236	238	java/io/IOException
    //   279	284	296	java/io/IOException
    //   289	294	296	java/io/IOException
    //   59	69	325	java/lang/Exception
    //   363	368	384	java/io/IOException
    //   373	378	384	java/io/IOException
    //   378	382	384	java/io/IOException
    //   59	69	413	finally
    //   430	435	452	java/io/IOException
    //   440	445	452	java/io/IOException
    //   445	449	452	java/io/IOException
    //   69	76	482	finally
    //   85	101	494	finally
    //   151	158	494	finally
    //   158	167	494	finally
    //   173	182	494	finally
    //   187	212	494	finally
    //   267	279	494	finally
    //   333	358	494	finally
    //   69	76	499	java/lang/Exception
    //   85	101	509	java/lang/Exception
    //   151	158	509	java/lang/Exception
    //   158	167	509	java/lang/Exception
    //   173	182	509	java/lang/Exception
    //   267	279	509	java/lang/Exception
    //   59	69	514	java/io/IOException
    //   69	76	527	java/io/IOException
  }

  public static String p(Context paramContext, String paramString)
  {
    aa.i("MicroMsg.ContactsUtil", "Get phone number.");
    if (paramContext == null)
    {
      aa.e("MicroMsg.ContactsUtil", "The context is null.");
      return null;
    }
    if (cj.hX(paramString))
      aa.i("MicroMsg.ContactsUtil", "countryCode is null or nil.");
    String str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
    if (!cj.hX(str1))
    {
      String str7 = str1.trim();
      if ((!cj.hX(paramString)) && (str7.startsWith("+" + paramString)))
        str7 = str7.substring(("+" + paramString).length());
      aa.i("MicroMsg.ContactsUtil", "Got phone number by TelephonyManager.");
      return str7;
    }
    ContentResolver localContentResolver = paramContext.getContentResolver();
    if (!i.bH(14))
      aa.i("MicroMsg.ContactsUtil", "The device os API version is higher than 14.");
    while (true)
    {
      try
      {
        Cursor localCursor6 = localContentResolver.query(ContactsContract.Profile.CONTENT_URI, new String[] { "has_phone_number" }, null, null, null);
        localCursor3 = localCursor6;
        if (localCursor3 == null)
          break label748;
        if (!localCursor3.moveToFirst())
          break label742;
        int m = localCursor3.getColumnIndex("has_phone_number");
        if (m == -1)
          break label742;
        j = localCursor3.getInt(m);
        localCursor3.close();
        aa.i("MicroMsg.ContactsUtil", "The phone count of the profile is " + j);
        if (j <= 0);
      }
      catch (Exception localException1)
      {
        try
        {
          Cursor localCursor5 = localContentResolver.query(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), new String[] { "data1" }, "mimetype=?", new String[] { "vnd.android.cursor.item/phone_v2" }, null);
          localCursor4 = localCursor5;
          if (localCursor4 != null)
            if (localCursor4.moveToFirst())
            {
              int k = localCursor4.getColumnIndex("data1");
              if (k != -1)
              {
                str6 = localCursor4.getString(k);
                aa.d("MicroMsg.ContactsUtil", "Have got phone number from profile ,number is [%s]", new Object[] { str6 });
                localCursor4.close();
                str2 = str6;
                if (cj.hX(str2))
                {
                  String str5 = q(paramContext, f.ab(paramContext));
                  if (!cj.hX(str5))
                  {
                    Cursor localCursor1 = localContentResolver.query(ContactsContract.Contacts.CONTENT_URI, new String[] { "has_phone_number" }, "_id=?", new String[] { str5 }, null);
                    if (localCursor1 == null)
                      continue;
                    if (!localCursor1.moveToFirst())
                      continue;
                    i = localCursor1.getInt(localCursor1.getColumnIndex("has_phone_number"));
                    localCursor1.close();
                    aa.i("MicroMsg.ContactsUtil", "The phone count of the profile is " + i);
                    if (i > 0)
                    {
                      localCursor2 = localContentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[] { "data1", "data2" }, "contact_id =?", new String[] { str5 }, null);
                      if (localCursor2 != null)
                      {
                        if (localCursor2.moveToFirst())
                        {
                          str2 = localCursor2.getString(localCursor2.getColumnIndex("data1"));
                          if (cj.hX(str2))
                            continue;
                          aa.d("MicroMsg.ContactsUtil", "have got phone number from contacts ,number is [%s]", new Object[] { str2 });
                        }
                        localCursor2.close();
                      }
                    }
                  }
                }
                if (!cj.hX(str2))
                {
                  String str3 = bc.sK(str2);
                  if (str2.startsWith("+"))
                  {
                    String str4 = str2.replace("+", "");
                    if (cj.hX(str3))
                      continue;
                    str2 = str4.substring(str3.length());
                  }
                }
                return str2;
                localException1 = localException1;
                aa.d("MicroMsg.ContactsUtil", "query crashed");
                localCursor3 = null;
              }
            }
        }
        catch (Exception localException2)
        {
          Cursor localCursor3;
          Cursor localCursor2;
          aa.d("MicroMsg.ContactsUtil", "query crashed");
          Cursor localCursor4 = localCursor3;
          continue;
          if (localCursor2.moveToNext())
            continue;
          continue;
          str2 = null;
          continue;
          int i = 0;
          continue;
          i = 0;
          continue;
          String str6 = null;
          continue;
        }
      }
      String str2 = null;
      continue;
      label742: int j = 0;
      continue;
      label748: j = 0;
    }
  }

  private static String q(Context paramContext, String paramString)
  {
    aa.i("MicroMsg.ContactsUtil", "Get contactId by email.");
    if (paramContext == null)
      aa.e("MicroMsg.ContactsUtil", "context is null.");
    Cursor localCursor;
    do
    {
      return null;
      if (cj.hX(paramString))
      {
        aa.i("MicroMsg.ContactsUtil", "email is null.");
        return null;
      }
      localCursor = paramContext.getContentResolver().query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, new String[] { "contact_id", "data1" }, "data1=?", new String[] { paramString }, null);
    }
    while (localCursor == null);
    boolean bool = localCursor.moveToFirst();
    String str = null;
    if (bool)
    {
      str = localCursor.getString(localCursor.getColumnIndex("contact_id"));
      if (cj.hX(str))
        break label146;
      aa.d("MicroMsg.ContactsUtil", "Have got contactId ,contactId is [%s]", new Object[] { str });
    }
    while (true)
    {
      localCursor.close();
      return str;
      label146: if (localCursor.moveToNext())
        break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.e
 * JD-Core Version:    0.6.2
 */