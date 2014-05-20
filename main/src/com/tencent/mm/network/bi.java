package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.protocal.c;
import com.tencent.mm.protocal.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public final class bi
{
  private final bj[] cFo = new bj[100];

  public static int P(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      aa.a("MicroMsg.MMNativeNetTaskAdapter", "c2JavaErrorType not exits c_errType:%d", arrayOfObject);
    case 0:
      return 0;
    case 1:
      return 2;
    case 2:
      return 2;
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
    case 6:
      return 1;
    case 7:
      if (-10001 == paramInt2)
        return 6;
      return 5;
    case 8:
      return 4;
    case 9:
    }
    return 1;
  }

  private int eI(int paramInt)
  {
    for (int i = 0; (i < 100) && ((this.cFo[i] == null) || (paramInt != this.cFo[i].cFp.hashCode())); i++);
    if (100 <= i)
      i = -1;
    return i;
  }

  final boolean EY()
  {
    bj[] arrayOfbj = this.cFo;
    int i = 0;
    while (true)
    {
      if (i < 100);
      try
      {
        if ((this.cFo[i] != null) && (380 == this.cFo[i].cFp.getType()))
        {
          aa.w("MicroMsg.MMNativeNetTaskAdapter", "hasAuthCmd Auth inQueue: netid=" + i);
          return true;
        }
        i++;
      }
      catch (RemoteException localRemoteException)
      {
        return false;
      }
      finally
      {
      }
    }
  }

  final ak EZ()
  {
    bj[] arrayOfbj = this.cFo;
    int i = 0;
    ak localak = null;
    while (true)
    {
      if (i < 100);
      try
      {
        if (this.cFo[i] != null)
        {
          if (380 == this.cFo[i].cFp.getType())
          {
            aa.e("MicroMsg.MMNativeNetTaskAdapter", "getAutoAuthRR Auth inQueue: netid=" + i);
            return null;
          }
          if (localak == null)
            localak = this.cFo[i].cFp;
        }
        i++;
      }
      catch (RemoteException localRemoteException)
      {
        return localak;
      }
      finally
      {
      }
    }
  }

  public final int a(ak paramak, ac paramac, n paramn, int paramInt)
  {
    int i = paramak.hashCode();
    MMNativeNetComm.NetCmd localNetCmd = new MMNativeNetComm.NetCmd();
    bj[] arrayOfbj = this.cFo;
    int j = 0;
    if (j < 100);
    while (true)
    {
      try
      {
        if (this.cFo[j] == null)
        {
          aa.i("MicroMsg.MMNativeNetTaskAdapter", "startTask inQueue: netid=" + j);
          this.cFo[j] = new bj(0);
          this.cFo[j].cFp = paramak;
          this.cFo[j].cFq = paramac;
          this.cFo[j].cFr = paramn;
          this.cFo[j].startTime = cj.FD();
          localNetCmd.reqCmdID = paramak.xj().getCmdId();
          localNetCmd.respCmdID = paramak.xk().getCmdId();
          localNetCmd.uri = paramak.getUri();
          int k = paramak.getType();
          if ((0x1 & paramak.wK()) != 1)
          {
            bool = true;
            localNetCmd.isSessionCmd = bool;
            if ((k == 126) || (k == 380))
              localNetCmd.isSessionCmd = false;
            localNetCmd.isFlowLimit = true;
            if ((k == 149) || (k == 193) || (k == 220) || (k == 323) || (k == 324) || (k == 326) || (k == 327))
              localNetCmd.isFlowLimit = false;
            localNetCmd.isNotResp = false;
            if ((k == 10) || (k == 268369922))
              localNetCmd.isNotResp = true;
            if ((paramak.xj().xh()) && (paramak.getUri() != null) && (paramak.getUri().length() > 0))
              localNetCmd.networkType = (0x1 | localNetCmd.networkType);
            if (localNetCmd.reqCmdID != 0)
              localNetCmd.networkType = (0x2 | localNetCmd.networkType);
            localNetCmd.rtType = k;
            aa.i("MicroMsg.MMNativeNetTaskAdapter", " startTask info hashcode=" + i + ", networktype=" + localNetCmd.networkType + ", reqCmdID=" + localNetCmd.reqCmdID + ", respCmdID=" + localNetCmd.respCmdID + ", uri=" + localNetCmd.uri + ", isSessionCmd=" + localNetCmd.isSessionCmd);
            if (-1 != j)
            {
              if (paramInt == 1)
                localNetCmd.cmduser_retrycount = 0;
              Java2C.startTask(i, localNetCmd, paramInt);
            }
            aa.i("MicroMsg.MMNativeNetTaskAdapter", "startTask retsult=" + j);
            return j;
          }
          boolean bool = false;
          continue;
        }
      }
      catch (RemoteException localRemoteException)
      {
        j++;
        break;
      }
      finally
      {
      }
      j = -1;
    }
  }

  // ERROR //
  final void a(int paramInt1, int paramInt2, String paramString, int paramInt3, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: iconst_4
    //   1: anewarray 4	java/lang/Object
    //   4: astore 6
    //   6: aload 6
    //   8: iconst_0
    //   9: iload_1
    //   10: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   13: aastore
    //   14: aload 6
    //   16: iconst_1
    //   17: iload_2
    //   18: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   21: aastore
    //   22: aload 6
    //   24: iconst_2
    //   25: aload_3
    //   26: aastore
    //   27: aload 6
    //   29: iconst_3
    //   30: iload 4
    //   32: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   35: aastore
    //   36: ldc 24
    //   38: ldc 197
    //   40: aload 6
    //   42: invokestatic 200	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   45: iconst_m1
    //   46: istore 7
    //   48: aload_0
    //   49: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   52: astore 8
    //   54: aload 8
    //   56: monitorenter
    //   57: aload_0
    //   58: iload 4
    //   60: invokespecial 202	com/tencent/mm/network/bi:eI	(I)I
    //   63: istore 10
    //   65: iconst_m1
    //   66: iload 10
    //   68: if_icmpne +52 -> 120
    //   71: iconst_4
    //   72: anewarray 4	java/lang/Object
    //   75: astore 11
    //   77: aload 11
    //   79: iconst_0
    //   80: iload_1
    //   81: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   84: aastore
    //   85: aload 11
    //   87: iconst_1
    //   88: iload_2
    //   89: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   92: aastore
    //   93: aload 11
    //   95: iconst_2
    //   96: aload_3
    //   97: aastore
    //   98: aload 11
    //   100: iconst_3
    //   101: iload 4
    //   103: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   106: aastore
    //   107: ldc 24
    //   109: ldc 204
    //   111: aload 11
    //   113: invokestatic 207	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   116: aload 8
    //   118: monitorexit
    //   119: return
    //   120: iload_1
    //   121: iload_2
    //   122: invokestatic 209	com/tencent/mm/network/bi:P	(II)I
    //   125: istore 12
    //   127: iload 12
    //   129: ifne +358 -> 487
    //   132: iconst_0
    //   133: istore 13
    //   135: goto +358 -> 493
    //   138: invokestatic 215	com/tencent/mm/network/bk:Fc	()Lcom/tencent/mm/network/bm;
    //   141: getfield 220	com/tencent/mm/network/bm:cFB	Z
    //   144: ifne +22 -> 166
    //   147: iload 12
    //   149: iconst_1
    //   150: if_icmpne +16 -> 166
    //   153: ldc 24
    //   155: ldc 222
    //   157: invokestatic 86	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: iconst_2
    //   161: istore 12
    //   163: iconst_m1
    //   164: istore 13
    //   166: aload_0
    //   167: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   170: iload 10
    //   172: aaload
    //   173: getfield 38	com/tencent/mm/network/bj:cFp	Lcom/tencent/mm/network/ak;
    //   176: astore 14
    //   178: aload_0
    //   179: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   182: iload 10
    //   184: aaload
    //   185: getfield 93	com/tencent/mm/network/bj:cFq	Lcom/tencent/mm/network/ac;
    //   188: astore 15
    //   190: aload_0
    //   191: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   194: iload 10
    //   196: aaload
    //   197: getfield 107	com/tencent/mm/network/bj:startTime	J
    //   200: lstore 16
    //   202: aload_0
    //   203: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   206: iload 10
    //   208: aconst_null
    //   209: aastore
    //   210: iload 12
    //   212: ifne +67 -> 279
    //   215: aload 14
    //   217: invokeinterface 124 1 0
    //   222: invokeinterface 225 1 0
    //   227: ifeq +52 -> 279
    //   230: iconst_4
    //   231: istore 12
    //   233: aload 14
    //   235: invokeinterface 124 1 0
    //   240: invokeinterface 225 1 0
    //   245: istore 13
    //   247: iconst_2
    //   248: anewarray 4	java/lang/Object
    //   251: astore 26
    //   253: aload 26
    //   255: iconst_0
    //   256: iconst_4
    //   257: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   260: aastore
    //   261: aload 26
    //   263: iconst_1
    //   264: iload 13
    //   266: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   269: aastore
    //   270: ldc 24
    //   272: ldc 227
    //   274: aload 26
    //   276: invokestatic 200	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   279: aload 14
    //   281: invokeinterface 51 1 0
    //   286: istore 24
    //   288: invokestatic 231	com/tencent/mm/network/bk:Ff	()Lcom/tencent/mm/network/ao;
    //   291: iload 12
    //   293: iload 13
    //   295: aload_3
    //   296: aload 14
    //   298: aload 5
    //   300: invokevirtual 236	com/tencent/mm/network/ao:a	(IILjava/lang/String;Lcom/tencent/mm/network/ak;[B)V
    //   303: iload 24
    //   305: istore 7
    //   307: iload 13
    //   309: istore 19
    //   311: iload 12
    //   313: istore 20
    //   315: aload 8
    //   317: monitorexit
    //   318: bipush 6
    //   320: anewarray 4	java/lang/Object
    //   323: astore 21
    //   325: aload 21
    //   327: iconst_0
    //   328: iload 7
    //   330: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   333: aastore
    //   334: aload 21
    //   336: iconst_1
    //   337: iload 4
    //   339: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   342: aastore
    //   343: aload 21
    //   345: iconst_2
    //   346: iload 20
    //   348: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   351: aastore
    //   352: aload 21
    //   354: iconst_3
    //   355: iload 19
    //   357: invokestatic 22	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   360: aastore
    //   361: aload 21
    //   363: iconst_4
    //   364: aload_3
    //   365: aastore
    //   366: aload 21
    //   368: iconst_5
    //   369: invokestatic 103	com/tencent/mm/sdk/platformtools/cj:FD	()J
    //   372: lload 16
    //   374: lsub
    //   375: invokestatic 241	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   378: aastore
    //   379: ldc 24
    //   381: ldc 243
    //   383: aload 21
    //   385: invokestatic 200	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   388: aload 14
    //   390: invokeinterface 124 1 0
    //   395: invokeinterface 246 1 0
    //   400: astore 23
    //   402: aload 23
    //   404: ifnull +55 -> 459
    //   407: aload 23
    //   409: invokevirtual 159	java/lang/String:length	()I
    //   412: ifle +47 -> 459
    //   415: aload 15
    //   417: iload 10
    //   419: iload 20
    //   421: iload 19
    //   423: aload 23
    //   425: aload 14
    //   427: aload 5
    //   429: invokeinterface 251 7 0
    //   434: return
    //   435: astore 22
    //   437: return
    //   438: astore 18
    //   440: iload 13
    //   442: istore 19
    //   444: iload 12
    //   446: istore 20
    //   448: goto -133 -> 315
    //   451: astore 9
    //   453: aload 8
    //   455: monitorexit
    //   456: aload 9
    //   458: athrow
    //   459: aload 15
    //   461: iload 10
    //   463: iload 20
    //   465: iload 19
    //   467: aload_3
    //   468: aload 14
    //   470: aload 5
    //   472: invokeinterface 251 7 0
    //   477: return
    //   478: astore 25
    //   480: iload 24
    //   482: istore 7
    //   484: goto -44 -> 440
    //   487: iload_2
    //   488: istore 13
    //   490: goto +3 -> 493
    //   493: iload 12
    //   495: iconst_3
    //   496: if_icmpne -358 -> 138
    //   499: iconst_m1
    //   500: istore 13
    //   502: goto -364 -> 138
    //
    // Exception table:
    //   from	to	target	type
    //   388	402	435	android/os/RemoteException
    //   407	434	435	android/os/RemoteException
    //   459	477	435	android/os/RemoteException
    //   215	230	438	android/os/RemoteException
    //   233	279	438	android/os/RemoteException
    //   279	288	438	android/os/RemoteException
    //   57	65	451	finally
    //   71	119	451	finally
    //   120	127	451	finally
    //   138	147	451	finally
    //   153	160	451	finally
    //   166	210	451	finally
    //   215	230	451	finally
    //   233	279	451	finally
    //   279	288	451	finally
    //   288	303	451	finally
    //   315	318	451	finally
    //   288	303	478	android/os/RemoteException
  }

  final int buf2Resp(int paramInt, byte[] paramArrayOfByte, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    int i = -1;
    int j;
    synchronized (this.cFo)
    {
      j = eI(paramInt);
      if (i == j)
        return i;
    }
    try
    {
      byte[] arrayOfByte = this.cFo[j].cFp.xj().xf();
      f localf = this.cFo[j].cFp.xk();
      if (localf.a(this.cFo[j].cFp.getType(), paramArrayOfByte, arrayOfByte))
      {
        if (localf.wY() != null)
          paramByteArrayOutputStream.write(localf.wY());
        int k = localf.xm();
        if (-13 == k)
          i = -13;
      }
      while (true)
      {
        label140: return i;
        localObject = finally;
        throw localObject;
        i = 0;
        continue;
        aa.e("MicroMsg.MMNativeNetTaskAdapter", "buf to resp failed, change server and try again");
      }
    }
    catch (RemoteException localRemoteException)
    {
      break label140;
    }
    catch (IOException localIOException)
    {
      break label140;
    }
  }

  // ERROR //
  public final void d(int paramInt1, int paramInt2, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: ldc 24
    //   5: new 53	java/lang/StringBuilder
    //   8: dup
    //   9: ldc_w 276
    //   12: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   15: iload_1
    //   16: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   19: ldc_w 278
    //   22: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: iload_2
    //   26: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   29: ldc_w 280
    //   32: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_3
    //   36: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 86	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: invokestatic 283	com/tencent/mm/network/Java2C:clearTask	()V
    //   48: bipush 100
    //   50: anewarray 12	com/tencent/mm/network/bj
    //   53: astore 5
    //   55: aload_0
    //   56: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   59: astore 6
    //   61: aload 6
    //   63: monitorenter
    //   64: iconst_0
    //   65: istore 7
    //   67: iload 7
    //   69: bipush 100
    //   71: if_icmpge +29 -> 100
    //   74: aload 5
    //   76: iload 7
    //   78: aload_0
    //   79: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   82: iload 7
    //   84: aaload
    //   85: aastore
    //   86: aload_0
    //   87: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   90: iload 7
    //   92: aconst_null
    //   93: aastore
    //   94: iinc 7 1
    //   97: goto -30 -> 67
    //   100: aload 6
    //   102: monitorexit
    //   103: iload 4
    //   105: bipush 100
    //   107: if_icmpge +97 -> 204
    //   110: aload 5
    //   112: iload 4
    //   114: aaload
    //   115: ifnull +75 -> 190
    //   118: ldc 24
    //   120: new 53	java/lang/StringBuilder
    //   123: dup
    //   124: ldc_w 285
    //   127: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: iload 4
    //   132: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   135: ldc_w 287
    //   138: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 5
    //   143: iload 4
    //   145: aaload
    //   146: getfield 38	com/tencent/mm/network/bj:cFp	Lcom/tencent/mm/network/ak;
    //   149: invokeinterface 51 1 0
    //   154: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   157: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokestatic 86	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: aload 5
    //   165: iload 4
    //   167: aaload
    //   168: getfield 93	com/tencent/mm/network/bj:cFq	Lcom/tencent/mm/network/ac;
    //   171: iload 4
    //   173: iload_1
    //   174: iload_2
    //   175: aload_3
    //   176: aload 5
    //   178: iload 4
    //   180: aaload
    //   181: getfield 38	com/tencent/mm/network/bj:cFp	Lcom/tencent/mm/network/ak;
    //   184: aconst_null
    //   185: invokeinterface 251 7 0
    //   190: iinc 4 1
    //   193: goto -90 -> 103
    //   196: astore 8
    //   198: aload 6
    //   200: monitorexit
    //   201: aload 8
    //   203: athrow
    //   204: return
    //   205: astore 9
    //   207: goto -17 -> 190
    //
    // Exception table:
    //   from	to	target	type
    //   74	94	196	finally
    //   100	103	196	finally
    //   118	190	205	android/os/RemoteException
  }

  final int eH(int paramInt)
  {
    int i;
    synchronized (this.cFo)
    {
      i = eI(paramInt);
      if (-1 == i)
      {
        aa.e("MicroMsg.MMNativeNetTaskAdapter", "-1 == index");
        return 0;
      }
    }
    try
    {
      int j = this.cFo[i].cFp.xk().xm();
      return j;
      localObject = finally;
      throw localObject;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  protected final void finalize()
  {
    reset();
    super.finalize();
  }

  final boolean req2Buf(int paramInt, ByteArrayOutputStream paramByteArrayOutputStream)
  {
    int i;
    synchronized (this.cFo)
    {
      i = eI(paramInt);
      if (-1 == i)
        return false;
    }
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.cp(this.cFo[i].cFr.wY());
      aa.e("MicroMsg.MMNativeNetTaskAdapter", "req2Buf cookie: %s", arrayOfObject);
      this.cFo[i].cFp.xj().ev(this.cFo[i].cFr.uo());
      this.cFo[i].cFp.xj().bQ(this.cFo[i].cFr.sd());
      boolean bool2 = this.cFo[i].cFp.xj().a(this.cFo[i].cFp.getType(), this.cFo[i].cFr.uo(), this.cFo[i].cFr.wY(), 0);
      if (bool2)
        paramByteArrayOutputStream.write(this.cFo[i].cFp.xj().xc());
      for (bool1 = bool2; ; bool1 = bool2)
      {
        return bool1;
        localObject = finally;
        throw localObject;
        aa.e("MicroMsg.MMNativeNetTaskAdapter", "request to buffer using jni failed");
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        bool1 = false;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  // ERROR //
  public final void reset()
  {
    // Byte code:
    //   0: ldc 24
    //   2: ldc_w 333
    //   5: invokestatic 86	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: invokestatic 334	com/tencent/mm/network/Java2C:reset	()V
    //   11: aload_0
    //   12: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   15: astore_1
    //   16: aload_1
    //   17: monitorenter
    //   18: iconst_0
    //   19: istore_2
    //   20: iload_2
    //   21: bipush 100
    //   23: if_icmpge +74 -> 97
    //   26: aload_0
    //   27: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   30: iload_2
    //   31: aaload
    //   32: astore 4
    //   34: aload 4
    //   36: ifnull +55 -> 91
    //   39: ldc 24
    //   41: new 53	java/lang/StringBuilder
    //   44: dup
    //   45: ldc_w 285
    //   48: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: iload_2
    //   52: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   55: ldc_w 287
    //   58: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_0
    //   62: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   65: iload_2
    //   66: aaload
    //   67: getfield 38	com/tencent/mm/network/bj:cFp	Lcom/tencent/mm/network/ak;
    //   70: invokeinterface 51 1 0
    //   75: invokevirtual 62	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   78: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 86	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 14	com/tencent/mm/network/bi:cFo	[Lcom/tencent/mm/network/bj;
    //   88: iload_2
    //   89: aconst_null
    //   90: aastore
    //   91: iinc 2 1
    //   94: goto -74 -> 20
    //   97: aload_1
    //   98: monitorexit
    //   99: return
    //   100: astore_3
    //   101: aload_1
    //   102: monitorexit
    //   103: aload_3
    //   104: athrow
    //   105: astore 5
    //   107: goto -16 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   26	34	100	finally
    //   39	91	100	finally
    //   97	99	100	finally
    //   39	91	105	android/os/RemoteException
  }

  public final void stopTask(int paramInt)
  {
    aa.i("MicroMsg.MMNativeNetTaskAdapter", "stopTask netId=" + paramInt);
    if ((paramInt < 0) || (paramInt >= 100))
      return;
    synchronized (this.cFo)
    {
      bj localbj1 = this.cFo[paramInt];
      int i = 0;
      if (localbj1 != null)
        i = this.cFo[paramInt].cFp.hashCode();
      if (i != 0)
        Java2C.stopTask(i);
      synchronized (this.cFo)
      {
        bj localbj2 = this.cFo[paramInt];
        if (localbj2 == null);
      }
    }
    try
    {
      aa.i("MicroMsg.MMNativeNetTaskAdapter", "outQueue: netId=" + paramInt + ", type=" + this.cFo[paramInt].cFp.getType());
      this.cFo[paramInt] = null;
      label156: return;
      localObject2 = finally;
      throw localObject2;
      localObject1 = finally;
      throw localObject1;
    }
    catch (RemoteException localRemoteException)
    {
      break label156;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bi
 * JD-Core Version:    0.6.2
 */