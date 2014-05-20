package com.tencent.mm.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class ab extends ah
  implements com.tencent.mm.ap.h
{
  public static final String[] cjC = arrayOfString;
  private static int[] ghA = { 2, 4, 8 };
  private af crf;
  private String emojiPath;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(y.cfX, "EmojiInfo");
  }

  public ab(af paramaf, String paramString)
  {
    super(paramaf, y.cfX, "EmojiInfo", null);
    this.emojiPath = paramString;
    this.crf = paramaf;
  }

  public static String a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    int i;
    int k;
    switch (paramInt1)
    {
    default:
      i = -1;
      int[] arrayOfInt = ghA;
      int j = arrayOfInt.length;
      k = 0;
      label44: if (k < j)
        if (i != arrayOfInt[k])
          break;
      break;
    case 82:
    case 83:
    case 84:
    }
    for (int m = 1; ; m = 0)
    {
      if (m == 0)
        break label112;
      return a(paramString1, paramString2, paramString3, i, paramInt2, true);
      i = 2;
      break;
      i = 4;
      break;
      i = 8;
      break;
      k++;
      break label44;
    }
    label112: return a(paramString1, paramString2, paramString3, i, paramInt2, false);
  }

  private static String a(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    String str1;
    if (TextUtils.isEmpty(paramString3))
    {
      aa.d("MicroMsg.EmojiInfoStorage", "getIconPath : productId is null.");
      str1 = paramString1 + File.separator + paramString2;
    }
    do
    {
      return str1;
      str1 = null;
      switch (paramInt1)
      {
      default:
        aa.e("MicroMsg.EmojiInfoStorage", "getIconPath: unknown icon type:" + paramInt1);
      case 1:
      case 7:
      case 5:
      case 6:
      case 2:
      case 3:
      case 4:
      case 8:
      case 9:
      }
    }
    while ((paramInt2 <= 0) || (!paramBoolean));
    StringBuilder localStringBuilder = new StringBuilder().append(str1);
    if (paramInt2 > 0);
    for (String str2 = "&" + String.valueOf(paramInt2); ; str2 = "")
    {
      return str2;
      str1 = paramString1 + paramString3 + File.separator + f.h(paramString3.getBytes());
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2;
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_panel";
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_panel_enable";
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_banner";
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2;
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_cover";
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_preview";
      break;
      str1 = paramString1 + paramString3 + File.separator + paramString2 + "_tagtip";
      break;
    }
  }

  private List a(InputStream[] paramArrayOfInputStream)
  {
    ArrayList localArrayList = new ArrayList();
    DocumentBuilderFactory localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
    while (true)
    {
      int n;
      String str1;
      try
      {
        DocumentBuilder localDocumentBuilder = localDocumentBuilderFactory.newDocumentBuilder();
        int i = paramArrayOfInputStream.length;
        int j = 0;
        if (j < i)
        {
          InputStream localInputStream = paramArrayOfInputStream[j];
          if (localInputStream != null)
          {
            NodeList localNodeList1 = localDocumentBuilder.parse(localInputStream).getDocumentElement().getElementsByTagName("catalog");
            int k = 0;
            if (k < localNodeList1.getLength())
            {
              Element localElement1 = (Element)localNodeList1.item(k);
              int m = Integer.decode(localElement1.getAttribute("id")).intValue();
              NodeList localNodeList2 = localElement1.getElementsByTagName("emoji");
              n = 0;
              if (n < localNodeList2.getLength())
              {
                y localy = new y(this.emojiPath);
                Element localElement2 = (Element)localNodeList2.item(n);
                localy.eX(localElement2.getAttribute("md5"));
                if (!localy.aBE())
                  break label364;
                localy.mb(m);
                localy.uA(String.valueOf(m));
                localy.setName(localElement2.getAttribute("name"));
                localy.setType(Integer.decode(localElement2.getAttribute("type")).intValue());
                Node localNode = localElement2.getFirstChild();
                if ((localNode instanceof CharacterData))
                {
                  str1 = ((CharacterData)localNode).getData();
                  if (localy.getType() != y.ghq)
                    break label357;
                  str2 = new String(com.tencent.mm.a.a.decode(str1));
                  localy.setContent(str2);
                  localArrayList.add(localy);
                  break label364;
                }
                str1 = "";
                continue;
              }
              k++;
              continue;
            }
          }
          j++;
          continue;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.EmojiInfoStorage", "parse xml error; " + localException.getMessage());
      }
      return localArrayList;
      label357: String str2 = str1;
      continue;
      label364: n++;
    }
  }

  public static String aT(String paramString1, String paramString2)
  {
    return f.h((paramString1 + paramString2).getBytes());
  }

  public static Bitmap i(Context paramContext, String paramString, int paramInt)
  {
    int i;
    int j;
    switch (paramInt)
    {
    default:
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 70);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 70);
    case 3:
    case 4:
    case 2:
    case 5:
    case 6:
    case 7:
    case 1:
    }
    while (true)
    {
      return com.tencent.mm.sdk.platformtools.h.a(paramString, i, j, false);
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 50);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 50);
      continue;
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 160);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 320);
      continue;
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 160);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 320);
      continue;
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 26);
      j = i;
      continue;
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 70);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 70);
      continue;
      i = com.tencent.mm.an.a.fromDPToPix(paramContext, 48);
      j = com.tencent.mm.an.a.fromDPToPix(paramContext, 48);
    }
  }

  private boolean l(y paramy)
  {
    if ((paramy == null) || (!paramy.aBE()))
      aa.aM("MicroMsg.EmojiInfoStorage", "insert assertion!, invalid emojiInfo");
    long l;
    do
    {
      return false;
      paramy.aBG();
      ContentValues localContentValues = paramy.oa();
      l = this.crf.replace("EmojiInfo", "md5", localContentValues);
      if (l != -1L)
        th(paramy.yK());
    }
    while (l < 0L);
    return true;
  }

  private boolean me(int paramInt)
  {
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    return localaf.delete("EmojiInfo", "catalog=?", arrayOfString) >= 0;
  }

  public static int mg(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return y.ghc;
    case 2:
      return 82;
    case 4:
      return 83;
    case 8:
    }
    return 84;
  }

  public final int KY()
  {
    String str = "select  count(*) from EmojiInfo where catalog=" + w.ggX + " or catalog=" + w.ggY;
    Cursor localCursor = this.crf.rawQuery(str, null);
    localCursor.moveToFirst();
    int i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final List KZ()
  {
    ArrayList localArrayList = new ArrayList();
    String str = "select * from EmojiInfo where catalog=" + w.ggX + " or catalog=" + w.ggY;
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      do
      {
        y localy = new y(this.emojiPath);
        localy.convertFrom(localCursor);
        localArrayList.add(localy);
      }
      while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  // ERROR //
  public final Bitmap a(Context paramContext, int paramInt, y paramy)
  {
    // Byte code:
    //   0: ldc_w 354
    //   3: fstore 4
    //   5: aload_3
    //   6: invokevirtual 357	com/tencent/mm/storage/y:aBD	()Z
    //   9: ifeq +90 -> 99
    //   12: new 359	java/io/FileInputStream
    //   15: dup
    //   16: new 65	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   23: aload_3
    //   24: invokevirtual 362	com/tencent/mm/storage/y:aBx	()Ljava/lang/String;
    //   27: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_3
    //   31: invokevirtual 365	com/tencent/mm/storage/y:aBK	()Ljava/lang/String;
    //   34: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: getstatic 76	java/io/File:separator	Ljava/lang/String;
    //   40: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_3
    //   44: invokevirtual 289	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   47: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc_w 367
    //   53: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_2
    //   57: invokevirtual 88	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   60: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokespecial 368	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   66: astore 6
    //   68: aload_1
    //   69: invokestatic 372	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   72: fload 4
    //   74: fcmpl
    //   75: ifle +116 -> 191
    //   78: aload 6
    //   80: fload 4
    //   82: invokestatic 375	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   85: astore 13
    //   87: aload 13
    //   89: astore 11
    //   91: aload 6
    //   93: invokevirtual 376	java/io/FileInputStream:close	()V
    //   96: aload 11
    //   98: areturn
    //   99: new 359	java/io/FileInputStream
    //   102: dup
    //   103: new 65	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   110: aload_3
    //   111: invokevirtual 362	com/tencent/mm/storage/y:aBx	()Ljava/lang/String;
    //   114: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload_3
    //   118: invokevirtual 289	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   121: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: ldc_w 367
    //   127: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: iload_2
    //   131: invokevirtual 88	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   134: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokespecial 368	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   140: astore 6
    //   142: goto -74 -> 68
    //   145: astore 9
    //   147: aconst_null
    //   148: astore 6
    //   150: ldc 55
    //   152: aload 9
    //   154: invokevirtual 377	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   157: invokestatic 91	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aload_3
    //   161: ldc 121
    //   163: invokevirtual 380	com/tencent/mm/storage/y:uB	(Ljava/lang/String;)V
    //   166: aload_0
    //   167: aload_3
    //   168: invokevirtual 383	com/tencent/mm/storage/ab:m	(Lcom/tencent/mm/storage/y;)Z
    //   171: pop
    //   172: aconst_null
    //   173: astore 11
    //   175: aload 6
    //   177: ifnull -81 -> 96
    //   180: aload 6
    //   182: invokevirtual 376	java/io/FileInputStream:close	()V
    //   185: aconst_null
    //   186: areturn
    //   187: astore 12
    //   189: aconst_null
    //   190: areturn
    //   191: aload_1
    //   192: invokestatic 372	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   195: fstore 15
    //   197: fload 15
    //   199: fstore 4
    //   201: goto -123 -> 78
    //   204: astore 5
    //   206: aconst_null
    //   207: astore 6
    //   209: aload 5
    //   211: astore 7
    //   213: aload 6
    //   215: ifnull +8 -> 223
    //   218: aload 6
    //   220: invokevirtual 376	java/io/FileInputStream:close	()V
    //   223: aload 7
    //   225: athrow
    //   226: astore 14
    //   228: aload 11
    //   230: areturn
    //   231: astore 8
    //   233: goto -10 -> 223
    //   236: astore 7
    //   238: goto -25 -> 213
    //   241: astore 9
    //   243: goto -93 -> 150
    //
    // Exception table:
    //   from	to	target	type
    //   5	68	145	java/io/FileNotFoundException
    //   99	142	145	java/io/FileNotFoundException
    //   180	185	187	java/io/IOException
    //   5	68	204	finally
    //   99	142	204	finally
    //   91	96	226	java/io/IOException
    //   218	223	231	java/io/IOException
    //   68	78	236	finally
    //   78	87	236	finally
    //   150	172	236	finally
    //   191	197	236	finally
    //   68	78	241	java/io/FileNotFoundException
    //   78	87	241	java/io/FileNotFoundException
    //   191	197	241	java/io/FileNotFoundException
  }

  public final Bitmap a(Context paramContext, String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString1))
      aa.d("MicroMsg.EmojiInfoStorage", "getIcon : productId is null.");
    int j;
    Object localObject;
    String str;
    if (paramBoolean)
    {
      int[] arrayOfInt = new int[4];
      arrayOfInt[0] = -1;
      arrayOfInt[1] = y.ghn;
      arrayOfInt[2] = y.gho;
      arrayOfInt[3] = y.ghp;
      int i = arrayOfInt.length;
      j = 0;
      localObject = "";
      if (j >= i)
        break label212;
      str = a(paramString1, paramInt, paramString2, arrayOfInt[j], true);
      if (c.as(str))
        localObject = str;
    }
    label212: for (int k = 1; ; k = 0)
    {
      if (k == 0)
      {
        aa.d("MicroMsg.EmojiInfoStorage", "banner icon does not exist. icon path :" + (String)localObject + "...., icon type:" + paramInt);
        return null;
        j++;
        localObject = str;
        break;
        localObject = i(paramString1, paramInt, paramString2);
        if (!c.as((String)localObject))
        {
          aa.d("MicroMsg.EmojiInfoStorage", "icon does not exist. icon path :" + (String)localObject + ", icon type:" + paramInt);
          return null;
        }
      }
      return i(paramContext, (String)localObject, paramInt);
    }
  }

  public final y a(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    while (true)
    {
      int j;
      int k;
      try
      {
        if (TextUtils.isEmpty(paramString1))
        {
          aa.d("MicroMsg.EmojiInfoStorage", "getIcon : productId is null.");
          localObject4 = null;
          return localObject4;
        }
        y localy = new y();
        if (paramBoolean)
        {
          int[] arrayOfInt = new int[3];
          arrayOfInt[0] = y.gho;
          arrayOfInt[1] = y.ghn;
          arrayOfInt[2] = y.ghp;
          int i = arrayOfInt.length;
          j = 0;
          localObject2 = "";
          if (j >= i)
            break label298;
          k = arrayOfInt[j];
          localObject3 = a(paramString1, paramInt, paramString2, k, true);
          File localFile = new File((String)localObject3);
          if (!localFile.exists())
            break label308;
          if (localFile.length() >= 1L)
            break label318;
          localFile.delete();
          break label308;
          localy.setType(k);
          m = 1;
          if (m != 0)
            continue;
          aa.d("MicroMsg.EmojiInfoStorage", "banner icon does not exist. icon path :" + (String)localObject3 + "...., icon type:" + paramInt);
          localObject4 = null;
          continue;
          k = y.ghn;
          continue;
        }
        String str = i(paramString1, paramInt, paramString2);
        if (!c.as(str))
        {
          aa.d("MicroMsg.EmojiInfoStorage", "icon does not exist. icon path :" + str + ", icon type:" + paramInt);
          localObject4 = null;
          continue;
        }
        localy.eX(aT(paramString1, paramString2));
        localy.mb(mg(paramInt));
        localy.uA(paramString1);
        Object localObject4 = localy;
        continue;
      }
      finally
      {
      }
      label298: Object localObject3 = localObject2;
      int m = 0;
      continue;
      label308: j++;
      Object localObject2 = localObject3;
      continue;
      label318: if (k <= 0);
    }
  }

  public final y a(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3)
  {
    return c(paramString1, paramString2, paramInt1, paramInt2, paramInt3, null, null, paramString3);
  }

  public final String a(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean)
  {
    return a(this.emojiPath, aT(paramString1, paramString2), paramString1, paramInt1, paramInt2, paramBoolean);
  }

  // ERROR //
  public final void a(Context paramContext, y paramy)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 274	com/tencent/mm/storage/y:aBG	()I
    //   4: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   7: if_icmpeq +23 -> 30
    //   10: aload_2
    //   11: invokevirtual 274	com/tencent/mm/storage/y:aBG	()I
    //   14: getstatic 442	com/tencent/mm/storage/y:ghl	I
    //   17: if_icmpeq +13 -> 30
    //   20: aload_2
    //   21: invokevirtual 274	com/tencent/mm/storage/y:aBG	()I
    //   24: getstatic 445	com/tencent/mm/storage/y:ghk	I
    //   27: if_icmpne +99 -> 126
    //   30: aconst_null
    //   31: astore_3
    //   32: aload_1
    //   33: aload_2
    //   34: invokevirtual 448	com/tencent/mm/storage/y:getName	()Ljava/lang/String;
    //   37: invokestatic 452	com/tencent/mm/storage/y:al	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   40: astore_3
    //   41: aload_3
    //   42: invokevirtual 457	java/io/InputStream:available	()I
    //   45: istore 10
    //   47: iload 10
    //   49: istore 7
    //   51: aload_3
    //   52: ifnull +7 -> 59
    //   55: aload_3
    //   56: invokevirtual 458	java/io/InputStream:close	()V
    //   59: iload 7
    //   61: ifeq +24 -> 85
    //   64: iload 7
    //   66: aload_2
    //   67: invokevirtual 461	com/tencent/mm/storage/y:getSize	()I
    //   70: if_icmpeq +15 -> 85
    //   73: aload_2
    //   74: iload 7
    //   76: invokevirtual 464	com/tencent/mm/storage/y:setSize	(I)V
    //   79: aload_0
    //   80: aload_2
    //   81: invokevirtual 383	com/tencent/mm/storage/ab:m	(Lcom/tencent/mm/storage/y;)Z
    //   84: pop
    //   85: return
    //   86: astore 6
    //   88: iconst_0
    //   89: istore 7
    //   91: aload_3
    //   92: ifnull -33 -> 59
    //   95: aload_3
    //   96: invokevirtual 458	java/io/InputStream:close	()V
    //   99: iconst_0
    //   100: istore 7
    //   102: goto -43 -> 59
    //   105: astore 8
    //   107: iconst_0
    //   108: istore 7
    //   110: goto -51 -> 59
    //   113: astore 4
    //   115: aload_3
    //   116: ifnull +7 -> 123
    //   119: aload_3
    //   120: invokevirtual 458	java/io/InputStream:close	()V
    //   123: aload 4
    //   125: athrow
    //   126: new 65	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   133: aload_2
    //   134: invokevirtual 362	com/tencent/mm/storage/y:aBx	()Ljava/lang/String;
    //   137: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_2
    //   141: invokevirtual 289	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   144: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 468	com/tencent/mm/a/c:ar	(Ljava/lang/String;)I
    //   153: istore 7
    //   155: goto -96 -> 59
    //   158: astore 11
    //   160: goto -101 -> 59
    //   163: astore 5
    //   165: goto -42 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   32	47	86	java/io/IOException
    //   95	99	105	java/io/IOException
    //   32	47	113	finally
    //   55	59	158	java/io/IOException
    //   119	123	163	java/io/IOException
  }

  public final boolean a(String paramString1, int paramInt1, String paramString2, byte[] paramArrayOfByte, int paramInt2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      aa.d("MicroMsg.EmojiInfoStorage", "save icon fail. invalid argumnet");
      return false;
    }
    boolean bool = false;
    if (paramInt2 > 0)
      bool = true;
    return d(paramString1, a(paramString1, paramInt1, paramString2, paramInt2, bool), paramArrayOfByte);
  }

  public final List aBN()
  {
    ArrayList localArrayList = new ArrayList();
    String str = "select * from EmojiInfo where catalog=" + w.ggY;
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      do
      {
        y localy = new y(this.emojiPath);
        localy.convertFrom(localCursor);
        localArrayList.add(localy);
      }
      while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }

  public final boolean aS(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() != 32));
    ContentValues localContentValues;
    do
    {
      return false;
      localContentValues = new ContentValues();
      localContentValues.put("md5", paramString1);
      localContentValues.put("framesInfo", paramString2);
    }
    while (this.crf.replace("EmojiInfo", "md5", localContentValues) < 0L);
    return true;
  }

  public final boolean ay(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("UPDATE");
    localStringBuilder.append(" EmojiInfo ");
    localStringBuilder.append(" SET ");
    localStringBuilder.append("catalog");
    localStringBuilder.append("=");
    localStringBuilder.append(y.ggZ);
    localStringBuilder.append(" where ");
    localStringBuilder.append("md5");
    localStringBuilder.append(" IN (");
    for (int i = 0; i < paramList.size(); i++)
    {
      localStringBuilder.append("'" + (String)paramList.get(i) + "'");
      if (i < -1 + paramList.size())
        localStringBuilder.append(",");
    }
    localStringBuilder.append(")");
    aa.d("MicroMsg.EmojiInfoStorage", localStringBuilder.toString());
    if (this.crf.aQ("EmojiInfo", localStringBuilder.toString()))
      th("delete_emoji_info_notify");
    return true;
  }

  public final y b(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3, String paramString4, String paramString5)
  {
    return c(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramString3, paramString4, paramString5);
  }

  // ERROR //
  public final boolean bK(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 530
    //   4: invokevirtual 534	com/tencent/mm/storage/ab:uF	(Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    //   7: astore_2
    //   8: aload_0
    //   9: ldc_w 536
    //   12: invokevirtual 534	com/tencent/mm/storage/ab:uF	(Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    //   15: astore_3
    //   16: aload_0
    //   17: getstatic 539	com/tencent/mm/storage/y:ghd	I
    //   20: invokevirtual 542	com/tencent/mm/storage/ab:mf	(I)I
    //   23: istore 4
    //   25: aload_2
    //   26: ifnonnull +23 -> 49
    //   29: aload_3
    //   30: ifnull +13 -> 43
    //   33: aload_3
    //   34: invokevirtual 545	com/tencent/mm/storage/y:getContent	()Ljava/lang/String;
    //   37: invokevirtual 479	java/lang/String:length	()I
    //   40: ifeq +9 -> 49
    //   43: iload 4
    //   45: iconst_2
    //   46: if_icmpgt +27 -> 73
    //   49: aload_0
    //   50: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   53: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   56: pop
    //   57: aload_0
    //   58: getstatic 442	com/tencent/mm/storage/y:ghl	I
    //   61: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   64: pop
    //   65: aload_0
    //   66: getstatic 445	com/tencent/mm/storage/y:ghk	I
    //   69: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   72: pop
    //   73: aload_0
    //   74: ldc_w 549
    //   77: invokevirtual 534	com/tencent/mm/storage/ab:uF	(Ljava/lang/String;)Lcom/tencent/mm/storage/y;
    //   80: astore 8
    //   82: aload 8
    //   84: ifnull +38 -> 122
    //   87: aload 8
    //   89: invokevirtual 274	com/tencent/mm/storage/y:aBG	()I
    //   92: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   95: if_icmpne +27 -> 122
    //   98: aload_0
    //   99: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   102: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   105: pop
    //   106: aload_0
    //   107: getstatic 442	com/tencent/mm/storage/y:ghl	I
    //   110: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   113: pop
    //   114: aload_0
    //   115: getstatic 445	com/tencent/mm/storage/y:ghk	I
    //   118: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   121: pop
    //   122: aload_1
    //   123: ldc_w 551
    //   126: invokestatic 452	com/tencent/mm/storage/y:al	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   129: astore 9
    //   131: aload 9
    //   133: ifnull +35 -> 168
    //   136: ldc 55
    //   138: ldc_w 553
    //   141: invokestatic 63	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   144: aload_0
    //   145: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   148: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   151: pop
    //   152: aload_0
    //   153: getstatic 442	com/tencent/mm/storage/y:ghl	I
    //   156: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   159: pop
    //   160: aload_0
    //   161: getstatic 445	com/tencent/mm/storage/y:ghk	I
    //   164: invokespecial 547	com/tencent/mm/storage/ab:me	(I)Z
    //   167: pop
    //   168: aload 9
    //   170: ifnull +8 -> 178
    //   173: aload 9
    //   175: invokevirtual 458	java/io/InputStream:close	()V
    //   178: aload_0
    //   179: getstatic 305	com/tencent/mm/storage/y:ghc	I
    //   182: invokevirtual 542	com/tencent/mm/storage/ab:mf	(I)I
    //   185: ifeq +5 -> 190
    //   188: iconst_1
    //   189: ireturn
    //   190: aconst_null
    //   191: astore 10
    //   193: aconst_null
    //   194: astore 11
    //   196: ldc 55
    //   198: ldc_w 555
    //   201: invokestatic 63	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: invokestatic 560	java/lang/System:currentTimeMillis	()J
    //   207: lstore 16
    //   209: aload_1
    //   210: invokevirtual 566	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   213: ldc_w 568
    //   216: invokevirtual 574	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   219: astore 10
    //   221: aconst_null
    //   222: astore 11
    //   224: iload 4
    //   226: ifne +15 -> 241
    //   229: aload_1
    //   230: invokevirtual 566	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   233: ldc_w 576
    //   236: invokevirtual 574	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   239: astore 11
    //   241: aload_0
    //   242: iconst_2
    //   243: anewarray 454	java/io/InputStream
    //   246: dup
    //   247: iconst_0
    //   248: aload 10
    //   250: aastore
    //   251: dup
    //   252: iconst_1
    //   253: aload 11
    //   255: aastore
    //   256: invokespecial 578	com/tencent/mm/storage/ab:a	([Ljava/io/InputStream;)Ljava/util/List;
    //   259: astore 18
    //   261: invokestatic 560	java/lang/System:currentTimeMillis	()J
    //   264: lstore 19
    //   266: iconst_1
    //   267: anewarray 580	java/lang/Object
    //   270: astore 21
    //   272: aload 21
    //   274: iconst_0
    //   275: lload 19
    //   277: lload 16
    //   279: lsub
    //   280: invokestatic 585	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   283: aastore
    //   284: ldc 55
    //   286: ldc_w 587
    //   289: aload 21
    //   291: invokestatic 590	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   294: invokestatic 560	java/lang/System:currentTimeMillis	()J
    //   297: lstore 22
    //   299: aload 18
    //   301: ifnull +28 -> 329
    //   304: aload 18
    //   306: invokeinterface 492 1 0
    //   311: ifle +18 -> 329
    //   314: aload 18
    //   316: ifnull +13 -> 329
    //   319: aload 18
    //   321: invokeinterface 492 1 0
    //   326: ifgt +66 -> 392
    //   329: invokestatic 560	java/lang/System:currentTimeMillis	()J
    //   332: lstore 24
    //   334: iconst_1
    //   335: anewarray 580	java/lang/Object
    //   338: astore 26
    //   340: aload 26
    //   342: iconst_0
    //   343: lload 24
    //   345: lload 22
    //   347: lsub
    //   348: invokestatic 585	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   351: aastore
    //   352: ldc 55
    //   354: ldc_w 592
    //   357: aload 26
    //   359: invokestatic 590	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   362: ldc 55
    //   364: ldc_w 594
    //   367: invokestatic 63	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   370: aload 10
    //   372: ifnull +18 -> 390
    //   375: aload 11
    //   377: ifnull +13 -> 390
    //   380: aload 10
    //   382: invokevirtual 458	java/io/InputStream:close	()V
    //   385: aload 11
    //   387: invokevirtual 458	java/io/InputStream:close	()V
    //   390: iconst_1
    //   391: ireturn
    //   392: ldc2_w 285
    //   395: lstore 28
    //   397: aload_0
    //   398: getfield 43	com/tencent/mm/storage/ab:crf	Lcom/tencent/mm/sdk/e/af;
    //   401: instanceof 596
    //   404: ifeq +211 -> 615
    //   407: aload_0
    //   408: getfield 43	com/tencent/mm/storage/ab:crf	Lcom/tencent/mm/sdk/e/af;
    //   411: checkcast 596	com/tencent/mm/ap/i
    //   414: astore 35
    //   416: aload 35
    //   418: invokestatic 602	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   421: invokevirtual 605	java/lang/Thread:getId	()J
    //   424: invokevirtual 609	com/tencent/mm/ap/i:ca	(J)J
    //   427: lstore 28
    //   429: aload 35
    //   431: astore 30
    //   433: aload 18
    //   435: invokeinterface 613 1 0
    //   440: astore 31
    //   442: aload 31
    //   444: invokeinterface 618 1 0
    //   449: ifeq +110 -> 559
    //   452: aload 31
    //   454: invokeinterface 622 1 0
    //   459: checkcast 20	com/tencent/mm/storage/y
    //   462: invokevirtual 278	com/tencent/mm/storage/y:oa	()Landroid/content/ContentValues;
    //   465: astore 33
    //   467: aload_0
    //   468: getfield 43	com/tencent/mm/storage/ab:crf	Lcom/tencent/mm/sdk/e/af;
    //   471: ldc 26
    //   473: ldc 187
    //   475: aload 33
    //   477: invokeinterface 284 4 0
    //   482: lconst_0
    //   483: lcmp
    //   484: ifge -42 -> 442
    //   487: aload 30
    //   489: ifnull -160 -> 329
    //   492: aload 30
    //   494: lload 28
    //   496: invokevirtual 626	com/tencent/mm/ap/i:cb	(J)I
    //   499: pop
    //   500: goto -171 -> 329
    //   503: astore 14
    //   505: ldc 55
    //   507: new 65	java/lang/StringBuilder
    //   510: dup
    //   511: ldc_w 628
    //   514: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   517: aload 14
    //   519: invokevirtual 629	java/io/IOException:getMessage	()Ljava/lang/String;
    //   522: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   528: invokestatic 91	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   531: aload 10
    //   533: ifnull -143 -> 390
    //   536: aload 11
    //   538: ifnull -148 -> 390
    //   541: aload 10
    //   543: invokevirtual 458	java/io/InputStream:close	()V
    //   546: aload 11
    //   548: invokevirtual 458	java/io/InputStream:close	()V
    //   551: goto -161 -> 390
    //   554: astore 15
    //   556: goto -166 -> 390
    //   559: aload 30
    //   561: ifnull -232 -> 329
    //   564: aload 30
    //   566: lload 28
    //   568: invokevirtual 626	com/tencent/mm/ap/i:cb	(J)I
    //   571: pop
    //   572: goto -243 -> 329
    //   575: astore 12
    //   577: aload 10
    //   579: ifnull +18 -> 597
    //   582: aload 11
    //   584: ifnull +13 -> 597
    //   587: aload 10
    //   589: invokevirtual 458	java/io/InputStream:close	()V
    //   592: aload 11
    //   594: invokevirtual 458	java/io/InputStream:close	()V
    //   597: aload 12
    //   599: athrow
    //   600: astore 36
    //   602: goto -424 -> 178
    //   605: astore 13
    //   607: goto -10 -> 597
    //   610: astore 27
    //   612: goto -222 -> 390
    //   615: aconst_null
    //   616: astore 30
    //   618: goto -185 -> 433
    //
    // Exception table:
    //   from	to	target	type
    //   196	221	503	java/io/IOException
    //   229	241	503	java/io/IOException
    //   241	299	503	java/io/IOException
    //   304	314	503	java/io/IOException
    //   319	329	503	java/io/IOException
    //   329	370	503	java/io/IOException
    //   397	429	503	java/io/IOException
    //   433	442	503	java/io/IOException
    //   442	487	503	java/io/IOException
    //   492	500	503	java/io/IOException
    //   564	572	503	java/io/IOException
    //   541	551	554	java/lang/Exception
    //   196	221	575	finally
    //   229	241	575	finally
    //   241	299	575	finally
    //   304	314	575	finally
    //   319	329	575	finally
    //   329	370	575	finally
    //   397	429	575	finally
    //   433	442	575	finally
    //   442	487	575	finally
    //   492	500	575	finally
    //   505	531	575	finally
    //   564	572	575	finally
    //   173	178	600	java/lang/Exception
    //   587	597	605	java/lang/Exception
    //   380	390	610	java/lang/Exception
  }

  public final y c(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3, String paramString4, String paramString5)
  {
    if ((paramString1 == null) || (paramString1.length() <= 0))
      aa.aM("MicroMsg.EmojiInfoStorage", "create assertion!, invalid md5");
    while (true)
    {
      return null;
      y localy;
      if ((paramString1 == null) || (paramString1.length() <= 0))
      {
        aa.aM("MicroMsg.EmojiInfoStorage", "create assertion!, invalid md5");
        localy = null;
      }
      while (l(localy))
      {
        th("create_emoji_info_notify");
        return localy;
        localy = uF(paramString1);
        if (localy == null)
          localy = new y(this.emojiPath);
        localy.eX(paramString1);
        localy.ux(paramString2);
        localy.mb(paramInt1);
        localy.setType(paramInt2);
        localy.setSize(paramInt3);
        localy.setState(y.ght);
        localy.aBI();
        localy.uy(paramString3);
        localy.uz(paramString4);
        if (!TextUtils.isEmpty(paramString5))
          localy.uA(paramString5);
      }
    }
  }

  public final boolean c(List paramList, String paramString)
  {
    if ((paramList == null) || (paramList.size() <= 0))
    {
      aa.d("MicroMsg.EmojiInfoStorage", "insert emoji list faild. list is null or size is 0.");
      return false;
    }
    i locali1;
    long l1;
    if ((this.crf instanceof i))
    {
      i locali2 = (i)this.crf;
      long l2 = locali2.ca(Thread.currentThread().getId());
      locali1 = locali2;
      l1 = l2;
    }
    while (true)
    {
      List localList = je(paramString);
      HashMap localHashMap = new HashMap();
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        y localy3 = (y)localIterator1.next();
        localHashMap.put(localy3.yK(), localy3);
      }
      for (int i = 0; i < paramList.size(); i++)
      {
        y localy2 = (y)paramList.get(i);
        this.crf.replace("EmojiInfo", "md5", localy2.oa());
        localHashMap.remove(localy2.yK());
      }
      Iterator localIterator2 = localHashMap.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        String str = (String)localEntry.getKey();
        y localy1 = (y)localEntry.getValue();
        localy1.field_groupId = "";
        this.crf.update("EmojiInfo", localy1.oa(), "md5=?", new String[] { str });
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localy1.field_groupId;
        aa.e("MicroMsg.EmojiInfoStorage", "jacks modify excess emoji to %s", arrayOfObject);
      }
      if (locali1 != null)
        locali1.cb(l1);
      return true;
      l1 = -1L;
      locali1 = null;
    }
  }

  public final boolean d(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      aa.d("MicroMsg.EmojiInfoStorage", "save icon fail. icon path is null.");
      return false;
    }
    File localFile = new File(paramString2);
    if (localFile.exists())
      localFile.delete();
    try
    {
      while (true)
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localFileOutputStream.write(paramArrayOfByte);
        localFileOutputStream.close();
        th(paramString1);
        return true;
        localFile.getParentFile().mkdirs();
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiInfoStorage", "saveIcon, exception, e = " + localException.getMessage());
    }
    return false;
  }

  public final List fD(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = md(paramInt);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      do
      {
        y localy = new y(this.emojiPath);
        localy.convertFrom(localCursor);
        localArrayList.add(localy);
      }
      while (localCursor.moveToNext());
    }
    localCursor.close();
    return localArrayList;
  }

  public final String i(String paramString1, int paramInt, String paramString2)
  {
    return a(paramString1, paramInt, paramString2, -1, false);
  }

  public final boolean jc(String paramString)
  {
    if ((paramString == null) || (paramString.trim().equals("")));
    Cursor localCursor;
    do
    {
      return false;
      String str = "select reserved2 from EmojiInfo where catalog != " + y.ggZ + " and reserved2 = " + i.bQ(paramString);
      localCursor = this.crf.rawQuery(str, null);
      if ((localCursor != null) && (localCursor.getCount() != 0))
        break;
    }
    while (localCursor == null);
    localCursor.close();
    return false;
    if (localCursor != null)
      localCursor.close();
    return true;
  }

  public final int jd(String paramString)
  {
    Cursor localCursor = null;
    try
    {
      localCursor = this.crf.rawQuery("select count(*) from EmojiInfo where groupId= ?", new String[] { paramString });
      localCursor.moveToFirst();
      int j = localCursor.getInt(0);
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiInfoStorage", "Count ProductId fail." + localException.getMessage());
      int i = 0;
      return 0;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final List je(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = "default";
    String str2 = String.format("select %s from %s where %s=? and %s=?", new Object[] { "desc", "EmojiInfoDesc", "groupId", "lang" });
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = z.azj();
    Cursor localCursor1 = this.crf.rawQuery(str2, arrayOfString);
    if (localCursor1.getCount() > 0);
    for (int i = 1; ; i = 0)
    {
      if (localCursor1 != null)
        localCursor1.close();
      if (i != 0)
        str1 = z.azj();
      Cursor localCursor2 = this.crf.rawQuery("SELECT a.*, b.desc FROM EmojiInfo AS a LEFT OUTER JOIN EmojiInfoDesc AS b ON a.md5 = b.md5 AND b.lang =? WHERE a.groupId =? ORDER BY a.idx ASC", new String[] { str1, paramString });
      if (localCursor2.getCount() > 0)
      {
        localCursor2.moveToFirst();
        do
        {
          y localy = new y(this.emojiPath);
          localy.convertFrom(localCursor2);
          localArrayList.add(localy);
        }
        while (localCursor2.moveToNext());
      }
      localCursor2.close();
      return localArrayList;
    }
  }

  public final boolean m(y paramy)
  {
    boolean bool = true;
    if ((paramy == null) || (!paramy.aBE()))
    {
      aa.aM("MicroMsg.EmojiInfoStorage", "insert assertion!, invalid emojiInfo");
      bool = false;
    }
    int i;
    do
    {
      return bool;
      af localaf = this.crf;
      ContentValues localContentValues = paramy.oa();
      String[] arrayOfString = new String[bool];
      arrayOfString[0] = paramy.yK();
      i = localaf.update("EmojiInfo", localContentValues, "md5=?", arrayOfString);
      if (i > 0)
      {
        th(paramy.yK());
        th("event_update_emoji");
      }
    }
    while (i > 0);
    return false;
  }

  public final Cursor md(int paramInt)
  {
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    return localaf.a("EmojiInfo", null, "catalog=?", arrayOfString, null, null);
  }

  public final int mf(int paramInt)
  {
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = localaf.rawQuery("select count(*) from EmojiInfo where catalog= ?", arrayOfString);
    localCursor.moveToFirst();
    int i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final String uE(String paramString)
  {
    String str1 = null;
    if (paramString != null)
    {
      int i = paramString.length();
      str1 = null;
      if (i == 32)
        break label21;
    }
    label21: Cursor localCursor;
    do
    {
      return str1;
      String str2 = String.format("select %s from %s where %s=?", new Object[] { "framesInfo", "EmojiInfo", "md5" });
      String[] arrayOfString = { paramString };
      localCursor = this.crf.rawQuery(str2, arrayOfString);
      int j = localCursor.getCount();
      str1 = null;
      if (j > 0)
      {
        localCursor.moveToFirst();
        str1 = localCursor.getString(localCursor.getColumnIndex("framesInfo"));
      }
    }
    while (localCursor == null);
    localCursor.close();
    return str1;
  }

  public final y uF(String paramString)
  {
    if ((paramString == null) || (paramString.length() != 32))
      return null;
    Cursor localCursor = this.crf.a("EmojiInfo", null, "md5=?", new String[] { paramString }, null, null);
    int i = localCursor.getCount();
    y localy = null;
    if (i > 0)
    {
      localCursor.moveToFirst();
      localy = new y(this.emojiPath);
      localy.convertFrom(localCursor);
    }
    localCursor.close();
    return localy;
  }

  public final boolean uG(String paramString)
  {
    boolean bool = true;
    if ((paramString == null) || (paramString.length() != 32))
    {
      aa.aM("MicroMsg.EmojiInfoStorage", "delete by md5 assertion");
      bool = false;
    }
    int i;
    do
    {
      return bool;
      af localaf = this.crf;
      String[] arrayOfString = new String[bool];
      arrayOfString[0] = paramString;
      i = localaf.delete("EmojiInfo", "md5=?", arrayOfString);
      if (i > 0)
        th("event_update_emoji");
    }
    while (i > 0);
    return false;
  }

  // ERROR //
  public final y uH(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 65	java/lang/StringBuilder
    //   5: dup
    //   6: ldc_w 788
    //   9: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_1
    //   13: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: ldc_w 509
    //   19: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: astore_3
    //   26: aload_0
    //   27: getfield 43	com/tencent/mm/storage/ab:crf	Lcom/tencent/mm/sdk/e/af;
    //   30: aload_3
    //   31: aconst_null
    //   32: invokeinterface 322 3 0
    //   37: astore 9
    //   39: aload 9
    //   41: invokeinterface 340 1 0
    //   46: ifle +152 -> 198
    //   49: aload 9
    //   51: invokeinterface 327 1 0
    //   56: pop
    //   57: new 20	com/tencent/mm/storage/y
    //   60: dup
    //   61: invokespecial 419	com/tencent/mm/storage/y:<init>	()V
    //   64: astore 12
    //   66: aload 12
    //   68: aload 9
    //   70: invokevirtual 344	com/tencent/mm/storage/y:convertFrom	(Landroid/database/Cursor;)V
    //   73: aload 12
    //   75: astore 7
    //   77: aload 9
    //   79: ifnull +10 -> 89
    //   82: aload 9
    //   84: invokeinterface 333 1 0
    //   89: aload 7
    //   91: areturn
    //   92: astore 5
    //   94: aload 5
    //   96: astore 6
    //   98: aconst_null
    //   99: astore 7
    //   101: iconst_2
    //   102: anewarray 580	java/lang/Object
    //   105: astore 8
    //   107: aload 8
    //   109: iconst_0
    //   110: aload_1
    //   111: aastore
    //   112: aload 8
    //   114: iconst_1
    //   115: aload 6
    //   117: invokevirtual 249	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   120: aastore
    //   121: ldc 55
    //   123: ldc_w 790
    //   126: aload 8
    //   128: invokestatic 792	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   131: aload_2
    //   132: ifnull -43 -> 89
    //   135: aload_2
    //   136: invokeinterface 333 1 0
    //   141: aload 7
    //   143: areturn
    //   144: astore 4
    //   146: aload_2
    //   147: ifnull +9 -> 156
    //   150: aload_2
    //   151: invokeinterface 333 1 0
    //   156: aload 4
    //   158: athrow
    //   159: astore 4
    //   161: aload 9
    //   163: astore_2
    //   164: goto -18 -> 146
    //   167: astore 10
    //   169: aload 9
    //   171: astore_2
    //   172: aload 10
    //   174: astore 6
    //   176: aconst_null
    //   177: astore 7
    //   179: goto -78 -> 101
    //   182: astore 13
    //   184: aload 9
    //   186: astore_2
    //   187: aload 13
    //   189: astore 6
    //   191: aload 12
    //   193: astore 7
    //   195: goto -94 -> 101
    //   198: aconst_null
    //   199: astore 7
    //   201: goto -124 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   26	39	92	java/lang/Exception
    //   26	39	144	finally
    //   101	131	144	finally
    //   39	66	159	finally
    //   66	73	159	finally
    //   39	66	167	java/lang/Exception
    //   66	73	182	java/lang/Exception
  }

  public final boolean uI(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    String str;
    if (!bool1)
      str = "groupId = '" + paramString + "'";
    try
    {
      int i = this.crf.delete("EmojiInfo", str, null);
      bool2 = false;
      if (i >= 0)
        bool2 = true;
      return bool2;
    }
    catch (Exception localException)
    {
      aa.i("MicroMsg.EmojiInfoStorage", "Delete By ProductId fail." + localException.getMessage());
    }
    return false;
  }

  public final String zz()
  {
    return "EmojiInfo";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ab
 * JD-Core Version:    0.6.2
 */