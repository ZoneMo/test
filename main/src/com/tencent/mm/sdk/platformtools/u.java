package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public final class u
{
  private static boolean gde = false;

  private static void a(Map paramMap, String paramString1, String paramString2, Node paramNode, int paramInt)
  {
    int i = 0;
    if (paramNode.getNodeName().equals("#text"))
      paramMap.put(paramString1, paramNode.getNodeValue());
    while (true)
    {
      return;
      if (paramNode.getNodeName().equals("#cdata-section"))
      {
        paramMap.put(paramString1, paramNode.getNodeValue());
        return;
      }
      String str1 = paramString1 + "." + paramNode.getNodeName();
      String str2 = paramString2 + "." + paramNode.getNodeName();
      String str6;
      String str3;
      if (paramInt > 0)
      {
        String str5 = str1 + paramInt;
        paramMap.put(str5, paramNode.getNodeValue());
        str6 = str2 + "#" + paramInt;
        paramMap.put(str6, paramNode.getNodeValue());
        str3 = str5;
      }
      for (String str4 = str6; ; str4 = str2)
      {
        NamedNodeMap localNamedNodeMap = paramNode.getAttributes();
        if (localNamedNodeMap == null)
          break;
        for (int k = 0; k < localNamedNodeMap.getLength(); k++)
        {
          Node localNode2 = localNamedNodeMap.item(k);
          paramMap.put(str3 + ".$" + localNode2.getNodeName(), localNode2.getNodeValue());
        }
        paramMap.put(str1, paramNode.getNodeValue());
        str3 = str1;
      }
      HashMap localHashMap = new HashMap();
      NodeList localNodeList = paramNode.getChildNodes();
      while (i < localNodeList.getLength())
      {
        Node localNode1 = localNodeList.item(i);
        int j = cj.c((Integer)localHashMap.get(localNode1.getNodeName()));
        a(paramMap, str3, str4, localNode1, j);
        localHashMap.put(localNode1.getNodeName(), Integer.valueOf(j + 1));
        i++;
      }
    }
  }

  // ERROR //
  public static Map aL(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +18 -> 19
    //   4: iconst_m1
    //   5: istore_2
    //   6: iload_2
    //   7: ifge +22 -> 29
    //   10: ldc 116
    //   12: ldc 118
    //   14: invokestatic 124	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   17: aconst_null
    //   18: areturn
    //   19: aload_0
    //   20: bipush 60
    //   22: invokevirtual 128	java/lang/String:indexOf	(I)I
    //   25: istore_2
    //   26: goto -20 -> 6
    //   29: iload_2
    //   30: ifle +32 -> 62
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: astore 16
    //   39: aload 16
    //   41: iconst_0
    //   42: iload_2
    //   43: invokestatic 101	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   46: aastore
    //   47: ldc 116
    //   49: ldc 130
    //   51: aload 16
    //   53: invokestatic 133	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   56: aload_0
    //   57: iload_2
    //   58: invokevirtual 137	java/lang/String:substring	(I)Ljava/lang/String;
    //   61: astore_0
    //   62: aload_0
    //   63: ifnull -46 -> 17
    //   66: aload_0
    //   67: invokevirtual 140	java/lang/String:length	()I
    //   70: ifle -53 -> 17
    //   73: new 74	java/util/HashMap
    //   76: dup
    //   77: invokespecial 75	java/util/HashMap:<init>	()V
    //   80: astore_3
    //   81: invokestatic 146	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   84: astore 4
    //   86: aload 4
    //   88: invokevirtual 150	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   91: astore 6
    //   93: aload 6
    //   95: ifnonnull +12 -> 107
    //   98: ldc 116
    //   100: ldc 152
    //   102: invokestatic 124	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: aconst_null
    //   106: areturn
    //   107: aload 6
    //   109: new 154	org/xml/sax/InputSource
    //   112: dup
    //   113: new 156	java/io/ByteArrayInputStream
    //   116: dup
    //   117: aload_0
    //   118: invokevirtual 160	java/lang/String:getBytes	()[B
    //   121: invokespecial 163	java/io/ByteArrayInputStream:<init>	([B)V
    //   124: invokespecial 166	org/xml/sax/InputSource:<init>	(Ljava/io/InputStream;)V
    //   127: invokevirtual 172	javax/xml/parsers/DocumentBuilder:parse	(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    //   130: astore 14
    //   132: aload 14
    //   134: astore 8
    //   136: aload 8
    //   138: invokeinterface 177 1 0
    //   143: aload 8
    //   145: ifnonnull +12 -> 157
    //   148: ldc 116
    //   150: ldc 179
    //   152: invokestatic 124	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: aconst_null
    //   156: areturn
    //   157: aload 8
    //   159: invokeinterface 183 1 0
    //   164: astore 9
    //   166: aload 9
    //   168: ifnonnull +12 -> 180
    //   171: ldc 116
    //   173: ldc 185
    //   175: invokestatic 124	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: aconst_null
    //   179: areturn
    //   180: aload_1
    //   181: ifnull +40 -> 221
    //   184: aload_1
    //   185: aload 9
    //   187: invokeinterface 188 1 0
    //   192: invokevirtual 26	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   195: ifeq +26 -> 221
    //   198: aload_3
    //   199: ldc 190
    //   201: ldc 190
    //   203: aload 9
    //   205: iconst_0
    //   206: invokestatic 97	com/tencent/mm/sdk/platformtools/u:a	(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;I)V
    //   209: getstatic 10	com/tencent/mm/sdk/platformtools/u:gde	Z
    //   212: ifeq +7 -> 219
    //   215: aload_3
    //   216: invokestatic 194	com/tencent/mm/sdk/platformtools/u:p	(Ljava/util/Map;)V
    //   219: aload_3
    //   220: areturn
    //   221: aload 9
    //   223: aload_1
    //   224: invokeinterface 198 2 0
    //   229: astore 10
    //   231: aload 10
    //   233: invokeinterface 82 1 0
    //   238: ifgt +12 -> 250
    //   241: ldc 116
    //   243: ldc 200
    //   245: invokestatic 124	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   248: aconst_null
    //   249: areturn
    //   250: aload 10
    //   252: invokeinterface 82 1 0
    //   257: iconst_1
    //   258: if_icmple +10 -> 268
    //   261: ldc 116
    //   263: ldc 202
    //   265: invokestatic 205	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   268: aload_3
    //   269: ldc 190
    //   271: ldc 190
    //   273: aload 10
    //   275: iconst_0
    //   276: invokeinterface 83 2 0
    //   281: iconst_0
    //   282: invokestatic 97	com/tencent/mm/sdk/platformtools/u:a	(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;I)V
    //   285: goto -76 -> 209
    //   288: astore 5
    //   290: aconst_null
    //   291: areturn
    //   292: astore 13
    //   294: aconst_null
    //   295: areturn
    //   296: astore 12
    //   298: aconst_null
    //   299: areturn
    //   300: astore 11
    //   302: aconst_null
    //   303: areturn
    //   304: astore 7
    //   306: aconst_null
    //   307: astore 8
    //   309: goto -166 -> 143
    //   312: astore 15
    //   314: goto -171 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   86	93	288	javax/xml/parsers/ParserConfigurationException
    //   107	132	292	java/lang/Exception
    //   136	143	292	java/lang/Exception
    //   107	132	296	java/io/IOException
    //   136	143	296	java/io/IOException
    //   107	132	300	org/xml/sax/SAXException
    //   136	143	300	org/xml/sax/SAXException
    //   107	132	304	org/w3c/dom/DOMException
    //   136	143	312	org/w3c/dom/DOMException
  }

  private static void p(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0))
      aa.v("MicroMsg.SDK.KVConfig", "empty values");
    while (true)
    {
      return;
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        aa.v("MicroMsg.SDK.KVConfig", "key=" + (String)localEntry.getKey() + " value=" + (String)localEntry.getValue());
      }
    }
  }

  public static Map sy(String paramString)
  {
    Object localObject;
    if ((paramString == null) || (paramString.length() <= 0))
      localObject = null;
    do
    {
      return localObject;
      localObject = new HashMap();
      for (String str1 : paramString.split("\n"))
        if ((str1 != null) && (str1.length() > 0))
        {
          String[] arrayOfString2 = str1.trim().split("=", 2);
          if ((arrayOfString2 != null) && (arrayOfString2.length >= 2))
          {
            String str2 = arrayOfString2[0];
            String str3 = arrayOfString2[1];
            if ((str2 != null) && (str2.length() > 0) && (str2.matches("^[a-zA-Z0-9_.]*")))
              ((Map)localObject).put(str2, str3);
          }
        }
    }
    while (!gde);
    p((Map)localObject);
    return localObject;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.u
 * JD-Core Version:    0.6.2
 */