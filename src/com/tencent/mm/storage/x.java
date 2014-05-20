package com.tencent.mm.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a.fb;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class x extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private af crf;
  private boolean gha = false;
  private boolean ghb = true;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(w.cfX, "EmojiGroupInfo");
  }

  public x(af paramaf)
  {
    super(paramaf, w.cfX, "EmojiGroupInfo", null);
    this.crf = paramaf;
  }

  // ERROR //
  private int aBo()
  {
    // Byte code:
    //   0: new 48	java/lang/StringBuilder
    //   3: dup
    //   4: ldc 50
    //   6: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   9: getstatic 57	com/tencent/mm/storage/w:ggU	I
    //   12: invokestatic 61	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   15: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: astore_1
    //   22: aload_0
    //   23: getfield 42	com/tencent/mm/storage/x:crf	Lcom/tencent/mm/sdk/e/af;
    //   26: aload_1
    //   27: aconst_null
    //   28: invokeinterface 75 3 0
    //   33: astore 7
    //   35: aload 7
    //   37: astore_3
    //   38: aload_3
    //   39: invokeinterface 81 1 0
    //   44: pop
    //   45: aload_3
    //   46: iconst_0
    //   47: invokeinterface 85 2 0
    //   52: istore 10
    //   54: iload 10
    //   56: iconst_2
    //   57: iadd
    //   58: istore 6
    //   60: ldc 87
    //   62: new 48	java/lang/StringBuilder
    //   65: dup
    //   66: ldc 89
    //   68: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: aload_3
    //   72: iconst_0
    //   73: invokeinterface 85 2 0
    //   78: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokestatic 98	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload_3
    //   88: ifnull +9 -> 97
    //   91: aload_3
    //   92: invokeinterface 101 1 0
    //   97: aload_0
    //   98: getfield 38	com/tencent/mm/storage/x:gha	Z
    //   101: ifeq +6 -> 107
    //   104: iinc 6 1
    //   107: aload_0
    //   108: getfield 40	com/tencent/mm/storage/x:ghb	Z
    //   111: ifeq +6 -> 117
    //   114: iinc 6 1
    //   117: iload 6
    //   119: ireturn
    //   120: astore 4
    //   122: aconst_null
    //   123: astore_3
    //   124: aload 4
    //   126: astore 5
    //   128: iconst_2
    //   129: istore 6
    //   131: ldc 87
    //   133: new 48	java/lang/StringBuilder
    //   136: dup
    //   137: ldc 103
    //   139: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   142: aload 5
    //   144: invokevirtual 106	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   147: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 109	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload_3
    //   157: ifnull -60 -> 97
    //   160: aload_3
    //   161: invokeinterface 101 1 0
    //   166: goto -69 -> 97
    //   169: astore_2
    //   170: aconst_null
    //   171: astore_3
    //   172: aload_3
    //   173: ifnull +9 -> 182
    //   176: aload_3
    //   177: invokeinterface 101 1 0
    //   182: aload_2
    //   183: athrow
    //   184: astore_2
    //   185: goto -13 -> 172
    //   188: astore 8
    //   190: aload 8
    //   192: astore 5
    //   194: iconst_2
    //   195: istore 6
    //   197: goto -66 -> 131
    //   200: astore 5
    //   202: goto -71 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   22	35	120	java/lang/Exception
    //   22	35	169	finally
    //   38	54	184	finally
    //   60	87	184	finally
    //   131	156	184	finally
    //   38	54	188	java/lang/Exception
    //   60	87	200	java/lang/Exception
  }

  public static boolean aBu()
  {
    return ((Boolean)be.uz().sr().get(208912, Boolean.valueOf(false))).booleanValue();
  }

  // ERROR //
  private ArrayList bL(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 143	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 145	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: invokestatic 151	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   13: astore 4
    //   15: aload_1
    //   16: invokevirtual 157	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   19: ldc 159
    //   21: invokevirtual 165	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   24: astore_2
    //   25: aload 4
    //   27: invokevirtual 169	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   30: aload_2
    //   31: invokevirtual 175	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   34: invokeinterface 181 1 0
    //   39: ldc 183
    //   41: invokeinterface 189 2 0
    //   46: astore 11
    //   48: iconst_0
    //   49: istore 12
    //   51: iload 12
    //   53: aload 11
    //   55: invokeinterface 194 1 0
    //   60: if_icmpge +391 -> 451
    //   63: new 19	com/tencent/mm/storage/w
    //   66: dup
    //   67: invokespecial 195	com/tencent/mm/storage/w:<init>	()V
    //   70: astore 13
    //   72: aload 11
    //   74: iload 12
    //   76: invokeinterface 199 2 0
    //   81: checkcast 185	org/w3c/dom/Element
    //   84: astore 14
    //   86: aload 14
    //   88: ldc 201
    //   90: invokeinterface 205 2 0
    //   95: invokestatic 211	java/lang/Integer:decode	(Ljava/lang/String;)Ljava/lang/Integer;
    //   98: invokevirtual 214	java/lang/Integer:intValue	()I
    //   101: istore 15
    //   103: aload 14
    //   105: ldc 216
    //   107: invokeinterface 205 2 0
    //   112: invokestatic 222	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifne +153 -> 268
    //   118: iconst_2
    //   119: anewarray 224	java/lang/Object
    //   122: astore 17
    //   124: aload 17
    //   126: iconst_0
    //   127: iload 15
    //   129: invokestatic 227	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   132: aastore
    //   133: aload 17
    //   135: iconst_1
    //   136: aload 14
    //   138: ldc 216
    //   140: invokeinterface 205 2 0
    //   145: invokestatic 211	java/lang/Integer:decode	(Ljava/lang/String;)Ljava/lang/Integer;
    //   148: aastore
    //   149: ldc 87
    //   151: ldc 229
    //   153: aload 17
    //   155: invokestatic 232	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   158: iload 15
    //   160: getstatic 235	com/tencent/mm/storage/w:ggX	I
    //   163: iand
    //   164: getstatic 235	com/tencent/mm/storage/w:ggX	I
    //   167: if_icmpne +232 -> 399
    //   170: new 48	java/lang/StringBuilder
    //   173: dup
    //   174: ldc 237
    //   176: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: getstatic 240	com/tencent/mm/storage/w:ggY	I
    //   182: invokevirtual 92	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   185: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: astore 18
    //   190: aload_0
    //   191: getfield 42	com/tencent/mm/storage/x:crf	Lcom/tencent/mm/sdk/e/af;
    //   194: aload 18
    //   196: aconst_null
    //   197: invokeinterface 75 3 0
    //   202: astore 19
    //   204: aload 19
    //   206: invokeinterface 81 1 0
    //   211: pop
    //   212: aload 19
    //   214: iconst_0
    //   215: invokeinterface 85 2 0
    //   220: istore 21
    //   222: aload 19
    //   224: invokeinterface 101 1 0
    //   229: iload 21
    //   231: ifgt +9 -> 240
    //   234: invokestatic 242	com/tencent/mm/storage/x:aBu	()Z
    //   237: ifeq +162 -> 399
    //   240: aload 13
    //   242: iconst_m1
    //   243: invokevirtual 246	com/tencent/mm/storage/w:lY	(I)V
    //   246: invokestatic 116	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   249: invokevirtual 122	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   252: ldc 123
    //   254: iconst_1
    //   255: invokestatic 128	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   258: invokevirtual 250	com/tencent/mm/storage/e:set	(ILjava/lang/Object;)V
    //   261: ldc 87
    //   263: ldc 252
    //   265: invokestatic 98	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   268: aload 13
    //   270: iload 15
    //   272: invokestatic 61	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   275: invokevirtual 255	com/tencent/mm/storage/w:un	(Ljava/lang/String;)V
    //   278: aload 13
    //   280: aload 14
    //   282: ldc_w 257
    //   285: invokeinterface 205 2 0
    //   290: invokevirtual 260	com/tencent/mm/storage/w:gg	(Ljava/lang/String;)V
    //   293: aload 14
    //   295: ldc_w 262
    //   298: invokeinterface 205 2 0
    //   303: invokestatic 222	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   306: ifne +24 -> 330
    //   309: aload 13
    //   311: aload 14
    //   313: ldc_w 262
    //   316: invokeinterface 205 2 0
    //   321: invokestatic 211	java/lang/Integer:decode	(Ljava/lang/String;)Ljava/lang/Integer;
    //   324: invokevirtual 214	java/lang/Integer:intValue	()I
    //   327: invokevirtual 265	com/tencent/mm/storage/w:setType	(I)V
    //   330: aload 14
    //   332: ldc_w 267
    //   335: invokeinterface 205 2 0
    //   340: invokestatic 222	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   343: ifne +24 -> 367
    //   346: aload 13
    //   348: aload 14
    //   350: ldc_w 262
    //   353: invokeinterface 205 2 0
    //   358: invokestatic 211	java/lang/Integer:decode	(Ljava/lang/String;)Ljava/lang/Integer;
    //   361: invokevirtual 214	java/lang/Integer:intValue	()I
    //   364: invokevirtual 270	com/tencent/mm/storage/w:lV	(I)V
    //   367: aload 13
    //   369: invokevirtual 273	com/tencent/mm/storage/w:getType	()I
    //   372: getstatic 276	com/tencent/mm/storage/w:ggT	I
    //   375: if_icmpeq +14 -> 389
    //   378: aload 13
    //   380: invokevirtual 273	com/tencent/mm/storage/w:getType	()I
    //   383: getstatic 279	com/tencent/mm/storage/w:TYPE_CUSTOM	I
    //   386: if_icmpne +156 -> 542
    //   389: aload_3
    //   390: aload 13
    //   392: invokevirtual 283	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   395: pop
    //   396: goto +146 -> 542
    //   399: aload 13
    //   401: iconst_1
    //   402: aload_0
    //   403: invokespecial 285	com/tencent/mm/storage/x:aBo	()I
    //   406: iadd
    //   407: invokevirtual 246	com/tencent/mm/storage/w:lY	(I)V
    //   410: goto -142 -> 268
    //   413: astore 9
    //   415: ldc 87
    //   417: new 48	java/lang/StringBuilder
    //   420: dup
    //   421: ldc_w 287
    //   424: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   427: aload 9
    //   429: invokevirtual 288	java/io/IOException:getMessage	()Ljava/lang/String;
    //   432: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: invokestatic 109	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   441: aload_2
    //   442: ifnull +7 -> 449
    //   445: aload_2
    //   446: invokevirtual 291	java/io/InputStream:close	()V
    //   449: aload_3
    //   450: areturn
    //   451: aload_3
    //   452: invokevirtual 294	java/util/ArrayList:size	()I
    //   455: ifle +9 -> 464
    //   458: aload_0
    //   459: aload_3
    //   460: invokevirtual 298	com/tencent/mm/storage/x:aw	(Ljava/util/List;)Z
    //   463: pop
    //   464: aload_2
    //   465: ifnull -16 -> 449
    //   468: aload_2
    //   469: invokevirtual 291	java/io/InputStream:close	()V
    //   472: aload_3
    //   473: areturn
    //   474: astore 22
    //   476: aload_3
    //   477: areturn
    //   478: astore 7
    //   480: ldc 87
    //   482: new 48	java/lang/StringBuilder
    //   485: dup
    //   486: ldc_w 300
    //   489: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   492: aload 7
    //   494: invokevirtual 106	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   497: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   503: invokestatic 109	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   506: aload_2
    //   507: ifnull -58 -> 449
    //   510: aload_2
    //   511: invokevirtual 291	java/io/InputStream:close	()V
    //   514: aload_3
    //   515: areturn
    //   516: astore 8
    //   518: aload_3
    //   519: areturn
    //   520: astore 5
    //   522: aload_2
    //   523: ifnull +7 -> 530
    //   526: aload_2
    //   527: invokevirtual 291	java/io/InputStream:close	()V
    //   530: aload 5
    //   532: athrow
    //   533: astore 10
    //   535: aload_3
    //   536: areturn
    //   537: astore 6
    //   539: goto -9 -> 530
    //   542: iinc 12 1
    //   545: goto -494 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   15	48	413	java/io/IOException
    //   51	229	413	java/io/IOException
    //   234	240	413	java/io/IOException
    //   240	268	413	java/io/IOException
    //   268	330	413	java/io/IOException
    //   330	367	413	java/io/IOException
    //   367	389	413	java/io/IOException
    //   389	396	413	java/io/IOException
    //   399	410	413	java/io/IOException
    //   451	464	413	java/io/IOException
    //   468	472	474	java/lang/Exception
    //   15	48	478	java/lang/Exception
    //   51	229	478	java/lang/Exception
    //   234	240	478	java/lang/Exception
    //   240	268	478	java/lang/Exception
    //   268	330	478	java/lang/Exception
    //   330	367	478	java/lang/Exception
    //   367	389	478	java/lang/Exception
    //   389	396	478	java/lang/Exception
    //   399	410	478	java/lang/Exception
    //   451	464	478	java/lang/Exception
    //   510	514	516	java/lang/Exception
    //   15	48	520	finally
    //   51	229	520	finally
    //   234	240	520	finally
    //   240	268	520	finally
    //   268	330	520	finally
    //   330	367	520	finally
    //   367	389	520	finally
    //   389	396	520	finally
    //   399	410	520	finally
    //   415	441	520	finally
    //   451	464	520	finally
    //   480	506	520	finally
    //   445	449	533	java/lang/Exception
    //   526	530	537	java/lang/Exception
  }

  public final void C(ArrayList paramArrayList)
  {
    i locali2;
    long l;
    if ((this.crf instanceof i))
    {
      locali2 = (i)this.crf;
      l = locali2.ca(Thread.currentThread().getId());
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l);
      aa.d("MicroMsg.EmojiGroupInfoStorage", "surround deleteByGroupIdList in a transaction, ticket = %d", arrayOfObject);
    }
    for (i locali1 = locali2; ; locali1 = null)
    {
      if ((paramArrayList != null) && (paramArrayList.size() > 0))
      {
        Iterator localIterator = paramArrayList.iterator();
        while (localIterator.hasNext())
          uv((String)localIterator.next());
      }
      if (locali1 != null)
      {
        locali1.cb(l);
        aa.i("MicroMsg.EmojiGroupInfoStorage", "end deleteByGroupIdList transaction");
      }
      return;
      l = -1L;
    }
  }

  // ERROR //
  public final w L(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 48	java/lang/StringBuilder
    //   3: dup
    //   4: ldc_w 359
    //   7: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: aload_1
    //   11: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc_w 361
    //   17: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: astore_3
    //   24: aload_0
    //   25: getfield 42	com/tencent/mm/storage/x:crf	Lcom/tencent/mm/sdk/e/af;
    //   28: aload_3
    //   29: aconst_null
    //   30: invokeinterface 75 3 0
    //   35: astore 9
    //   37: aload 9
    //   39: invokeinterface 364 1 0
    //   44: ifle +42 -> 86
    //   47: aload 9
    //   49: invokeinterface 81 1 0
    //   54: pop
    //   55: new 19	com/tencent/mm/storage/w
    //   58: dup
    //   59: invokespecial 195	com/tencent/mm/storage/w:<init>	()V
    //   62: astore 8
    //   64: aload 8
    //   66: aload 9
    //   68: invokevirtual 368	com/tencent/mm/storage/w:convertFrom	(Landroid/database/Cursor;)V
    //   71: aload 9
    //   73: ifnull +10 -> 83
    //   76: aload 9
    //   78: invokeinterface 101 1 0
    //   83: aload 8
    //   85: areturn
    //   86: aload 9
    //   88: ifnull +165 -> 253
    //   91: aload 9
    //   93: invokeinterface 101 1 0
    //   98: aconst_null
    //   99: astore 8
    //   101: aload 8
    //   103: ifnonnull -20 -> 83
    //   106: iload_2
    //   107: ifeq +88 -> 195
    //   110: aconst_null
    //   111: areturn
    //   112: astore 6
    //   114: aconst_null
    //   115: astore 5
    //   117: aconst_null
    //   118: astore 7
    //   120: ldc 87
    //   122: new 48	java/lang/StringBuilder
    //   125: dup
    //   126: ldc_w 370
    //   129: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   132: aload_1
    //   133: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc_w 372
    //   139: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: aload 6
    //   144: invokevirtual 106	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   147: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 109	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: aload 5
    //   158: ifnull +88 -> 246
    //   161: aload 5
    //   163: invokeinterface 101 1 0
    //   168: aload 7
    //   170: astore 8
    //   172: goto -71 -> 101
    //   175: astore 4
    //   177: aconst_null
    //   178: astore 5
    //   180: aload 5
    //   182: ifnull +10 -> 192
    //   185: aload 5
    //   187: invokeinterface 101 1 0
    //   192: aload 4
    //   194: athrow
    //   195: new 19	com/tencent/mm/storage/w
    //   198: dup
    //   199: invokespecial 195	com/tencent/mm/storage/w:<init>	()V
    //   202: areturn
    //   203: astore 4
    //   205: aload 9
    //   207: astore 5
    //   209: goto -29 -> 180
    //   212: astore 4
    //   214: goto -34 -> 180
    //   217: astore 6
    //   219: aload 9
    //   221: astore 5
    //   223: aconst_null
    //   224: astore 7
    //   226: goto -106 -> 120
    //   229: astore 11
    //   231: aload 9
    //   233: astore 5
    //   235: aload 8
    //   237: astore 7
    //   239: aload 11
    //   241: astore 6
    //   243: goto -123 -> 120
    //   246: aload 7
    //   248: astore 8
    //   250: goto -149 -> 101
    //   253: aconst_null
    //   254: astore 8
    //   256: goto -155 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   24	37	112	java/lang/Exception
    //   24	37	175	finally
    //   37	64	203	finally
    //   64	71	203	finally
    //   120	156	212	finally
    //   37	64	217	java/lang/Exception
    //   64	71	229	java/lang/Exception
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final List aBp()
  {
    Cursor localCursor = null;
    ArrayList localArrayList = new ArrayList();
    String str = "select * from EmojiGroupInfo where type=" + w.ggT + " or type=" + w.TYPE_CUSTOM + " order by sort ASC";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        boolean bool;
        do
        {
          w localw = new w();
          localw.convertFrom(localCursor);
          localArrayList.add(localw);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "get system group fail." + localException.getMessage());
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final List aBq()
  {
    Cursor localCursor = null;
    ArrayList localArrayList = new ArrayList();
    String str = "select * from EmojiGroupInfo where type=" + w.ggT + " or type=" + w.TYPE_CUSTOM + " or type=" + w.ggU + " order by sort ASC,lastUseTime DESC";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        boolean bool;
        do
        {
          w localw = new w();
          localw.convertFrom(localCursor);
          localArrayList.add(localw);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "get all group fail." + localException.getMessage());
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final ArrayList aBr()
  {
    Cursor localCursor = null;
    ArrayList localArrayList = new ArrayList();
    String str = "select * from EmojiGroupInfo where type=" + w.ggU + " or type=" + w.ggT + " order by sort ASC,lastUseTime DESC";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        boolean bool;
        do
        {
          w localw = new w();
          localw.convertFrom(localCursor);
          localArrayList.add(localw);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "get Panel EmojiGroupInfo." + localException.getMessage());
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final HashMap aBs()
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    String str = "select * from EmojiGroupInfo where type=" + w.ggU + " order by sort ASC";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        boolean bool;
        do
        {
          w localw = new w();
          localw.convertFrom(localCursor);
          localHashMap.put(localw.aBb(), localw);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localHashMap;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "get Panel EmojiGroupInfo." + localException.getMessage());
      return localHashMap;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final HashMap aBt()
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    String str1 = "select * from EmojiGroupInfo where type=" + w.ggU + " and status =7 order by sort ASC";
    try
    {
      localCursor = this.crf.rawQuery(str1, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        v localv = new v();
        boolean bool;
        do
        {
          String str2 = localCursor.getString(localCursor.getColumnIndex("productID"));
          localv.jn(str2);
          localv.ul(localCursor.getString(localCursor.getColumnIndex("packName")));
          localv.lR(7);
          localHashMap.put(str2, localv);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localHashMap;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "get download group map failed." + localException.getMessage());
      return localHashMap;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final void aBv()
  {
    String str1 = w.TYPE_CUSTOM;
    String str2 = "UPDATE EmojiGroupInfo SET sort=-1,lastUseTime=" + System.currentTimeMillis() + " WHERE type=" + str1;
    if (this.crf.aQ("EmojiGroupInfo", str2))
      th("event_update_group");
    be.uz().sr().set(208912, Boolean.valueOf(true));
  }

  public final boolean aBw()
  {
    Cursor localCursor = null;
    String str = "select * from EmojiGroupInfo where type='" + w.ggT + "'";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      int i = localCursor.getCount();
      return i > 0;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.d("MicroMsg.EmojiGroupInfoStorage", localException.toString());
        if (localCursor != null)
          localCursor.close();
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final boolean aw(List paramList)
  {
    int i = 0;
    if ((paramList == null) || (paramList.size() <= 0))
    {
      aa.d("MicroMsg.EmojiGroupInfoStorage", "updateList . list is null.");
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
      aa.d("MicroMsg.EmojiGroupInfoStorage", "surround updateList in a transaction, ticket = %d", arrayOfObject);
      locali1 = locali2;
    }
    while (true)
      if (i < paramList.size())
      {
        this.crf.replace("EmojiGroupInfo", "productID", ((w)paramList.get(i)).oa());
        i++;
      }
      else
      {
        if (locali1 != null)
        {
          locali1.cb(l);
          aa.i("MicroMsg.EmojiGroupInfoStorage", "end updateList transaction");
        }
        th("event_update_group");
        return true;
        l = -1L;
        locali1 = null;
        i = 0;
      }
  }

  public final boolean ax(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "updateEmojiGroupByEmotionSummary empty summary.");
      return false;
    }
    for (int i = 0; i < paramList.size(); i++)
    {
      fb localfb = (fb)paramList.get(i);
      w localw = L(localfb.fFB, false);
      localw.un(localfb.fFB);
      localw.uo(localfb.dGT);
      localw.up(localfb.fFP);
      localw.uq(localfb.fFK);
      localw.gg(localfb.fFC);
      localw.ur(localfb.fFD);
      localw.us(localfb.fFE);
      localw.ut(localfb.fFF);
      localw.lV(localfb.fFG);
      localw.lW(localfb.fFH);
      localw.bR(localfb.fFL);
      localw.lX(localfb.fFX);
      localw.setType(w.ggU);
      if (localw.aBm() == 0)
        localw.lY(1);
      this.crf.replace("EmojiGroupInfo", "productID", localw.oa());
    }
    th("event_update_group");
    return true;
  }

  public final boolean bK(Context paramContext)
  {
    aa.d("MicroMsg.EmojiGroupInfoStorage", "init start.");
    bL(paramContext);
    aa.d("MicroMsg.EmojiGroupInfoStorage", "init end.");
    return true;
  }

  public final boolean e(w paramw)
  {
    if (paramw == null)
      aa.aM("MicroMsg.EmojiGroupInfoStorage", "insert assertion!,invalid emojigroup info.");
    long l;
    do
    {
      return false;
      ContentValues localContentValues = paramw.oa();
      l = this.crf.replace("EmojiGroupInfo", "productID", localContentValues);
      if (l != -1L)
        th("event_update_group");
    }
    while (l < 0L);
    return true;
  }

  public final boolean f(w paramw)
  {
    if (paramw != null)
    {
      this.crf.replace("EmojiGroupInfo", "productID", paramw.oa());
      th("event_update_group");
      return true;
    }
    return false;
  }

  public final w uu(String paramString)
  {
    return L(paramString, false);
  }

  public final boolean uv(String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    String str;
    if (!bool1)
      str = "productID = '" + paramString + "'";
    try
    {
      int i = this.crf.delete("EmojiGroupInfo", str, null);
      bool2 = false;
      if (i >= 0)
        bool2 = true;
      if (bool2)
      {
        th("event_update_group");
        th("delete_group");
      }
      return bool2;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicroMsg.EmojiGroupInfoStorage", "Delete By ProductId fail." + localException.getMessage());
        bool2 = false;
      }
    }
  }

  public final boolean uw(String paramString)
  {
    Cursor localCursor = null;
    if (TextUtils.isEmpty(paramString))
      aa.e("MicroMsg.EmojiGroupInfoStorage", "product id is null.");
    String str = "select count(*) from EmojiGroupInfo where productID = '" + paramString + "' AND status='7'";
    try
    {
      localCursor = this.crf.rawQuery(str, null);
      localCursor.moveToFirst();
      int i = localCursor.getInt(0);
      bool = false;
      if (i > 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.EmojiGroupInfoStorage", "Check GroupId Exist Faild." + localException.getMessage());
      boolean bool = false;
      return false;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public final String zz()
  {
    return "EmojiGroupInfo";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.x
 * JD-Core Version:    0.6.2
 */