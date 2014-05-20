package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.audio.c;
import com.tencent.mm.compatible.audio.r;
import com.tencent.mm.model.be;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class MediaRecorder
{
  public static final int[] cci = { 13, 14, 16, 18, 20, 21, 27, 32 };
  private static long ccp = 0L;
  private static Object ccq = new Object();
  private n cBr;
  private j cBs;
  private com.tencent.mm.af.k cBt;
  private com.tencent.mm.af.d cBu;
  private o cBv;
  private int cck;
  private String ccl;
  private long ccn;
  private long cco;
  private android.media.MediaRecorder ccr;
  private int ccs;
  private com.tencent.mm.compatible.audio.o cct;
  private c ccu;
  private int ccw;
  private int ccx;
  private com.tencent.mm.compatible.g.k ccy;
  private r ccz;

  // ERROR //
  public MediaRecorder(c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 48	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: iconst_0
    //   6: putfield 55	com/tencent/mm/modelvoice/MediaRecorder:cck	I
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 57	com/tencent/mm/modelvoice/MediaRecorder:ccl	Ljava/lang/String;
    //   14: aload_0
    //   15: aconst_null
    //   16: putfield 59	com/tencent/mm/modelvoice/MediaRecorder:cBs	Lcom/tencent/mm/modelvoice/j;
    //   19: aload_0
    //   20: aconst_null
    //   21: putfield 61	com/tencent/mm/modelvoice/MediaRecorder:cBt	Lcom/tencent/mm/af/k;
    //   24: aload_0
    //   25: aconst_null
    //   26: putfield 63	com/tencent/mm/modelvoice/MediaRecorder:cBu	Lcom/tencent/mm/af/d;
    //   29: aload_0
    //   30: lconst_0
    //   31: putfield 65	com/tencent/mm/modelvoice/MediaRecorder:ccn	J
    //   34: aload_0
    //   35: lconst_0
    //   36: putfield 67	com/tencent/mm/modelvoice/MediaRecorder:cco	J
    //   39: aload_0
    //   40: aconst_null
    //   41: putfield 69	com/tencent/mm/modelvoice/MediaRecorder:cct	Lcom/tencent/mm/compatible/audio/o;
    //   44: aload_0
    //   45: sipush 8000
    //   48: putfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   51: aload_0
    //   52: iconst_0
    //   53: putfield 73	com/tencent/mm/modelvoice/MediaRecorder:ccx	I
    //   56: aload_0
    //   57: new 75	com/tencent/mm/compatible/g/k
    //   60: dup
    //   61: invokespecial 76	com/tencent/mm/compatible/g/k:<init>	()V
    //   64: putfield 78	com/tencent/mm/modelvoice/MediaRecorder:ccy	Lcom/tencent/mm/compatible/g/k;
    //   67: aload_0
    //   68: new 80	com/tencent/mm/modelvoice/h
    //   71: dup
    //   72: aload_0
    //   73: invokespecial 83	com/tencent/mm/modelvoice/h:<init>	(Lcom/tencent/mm/modelvoice/MediaRecorder;)V
    //   76: putfield 85	com/tencent/mm/modelvoice/MediaRecorder:ccz	Lcom/tencent/mm/compatible/audio/r;
    //   79: aload_0
    //   80: aload_1
    //   81: putfield 87	com/tencent/mm/modelvoice/MediaRecorder:ccu	Lcom/tencent/mm/compatible/audio/c;
    //   84: aload_1
    //   85: getstatic 92	com/tencent/mm/compatible/audio/c:cbg	Lcom/tencent/mm/compatible/audio/c;
    //   88: if_acmpne +21 -> 109
    //   91: aload_0
    //   92: bipush 7
    //   94: putfield 94	com/tencent/mm/modelvoice/MediaRecorder:ccs	I
    //   97: aload_0
    //   98: new 96	android/media/MediaRecorder
    //   101: dup
    //   102: invokespecial 97	android/media/MediaRecorder:<init>	()V
    //   105: putfield 99	com/tencent/mm/modelvoice/MediaRecorder:ccr	Landroid/media/MediaRecorder;
    //   108: return
    //   109: aload_0
    //   110: invokestatic 105	com/tencent/mm/af/d:CK	()Lcom/tencent/mm/af/d;
    //   113: putfield 63	com/tencent/mm/modelvoice/MediaRecorder:cBu	Lcom/tencent/mm/af/d;
    //   116: aload_0
    //   117: getfield 63	com/tencent/mm/modelvoice/MediaRecorder:cBu	Lcom/tencent/mm/af/d;
    //   120: ifnull +181 -> 301
    //   123: aload_0
    //   124: getfield 63	com/tencent/mm/modelvoice/MediaRecorder:cBu	Lcom/tencent/mm/af/d;
    //   127: invokevirtual 109	com/tencent/mm/af/d:CJ	()Z
    //   130: ifeq +171 -> 301
    //   133: aload_0
    //   134: sipush 16000
    //   137: putfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   140: invokestatic 115	com/tencent/mm/model/be:us	()Lcom/tencent/mm/storage/d;
    //   143: bipush 27
    //   145: invokevirtual 121	com/tencent/mm/storage/d:get	(I)Ljava/lang/Object;
    //   148: checkcast 123	java/lang/Integer
    //   151: iconst_0
    //   152: invokestatic 129	com/tencent/mm/sdk/platformtools/cj:a	(Ljava/lang/Integer;I)I
    //   155: istore_2
    //   156: ldc 131
    //   158: new 133	java/lang/StringBuilder
    //   161: dup
    //   162: ldc 135
    //   164: invokespecial 138	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload_0
    //   168: getfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   171: invokevirtual 142	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   174: ldc 144
    //   176: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: iload_2
    //   180: invokevirtual 142	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   183: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 157	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   189: iload_2
    //   190: iconst_1
    //   191: if_icmpne +10 -> 201
    //   194: aload_0
    //   195: sipush 8000
    //   198: putfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   201: aload_0
    //   202: iconst_0
    //   203: putfield 55	com/tencent/mm/modelvoice/MediaRecorder:cck	I
    //   206: aload_0
    //   207: aconst_null
    //   208: putfield 57	com/tencent/mm/modelvoice/MediaRecorder:ccl	Ljava/lang/String;
    //   211: aload_0
    //   212: aconst_null
    //   213: putfield 59	com/tencent/mm/modelvoice/MediaRecorder:cBs	Lcom/tencent/mm/modelvoice/j;
    //   216: aload_0
    //   217: aconst_null
    //   218: putfield 61	com/tencent/mm/modelvoice/MediaRecorder:cBt	Lcom/tencent/mm/af/k;
    //   221: ldc 131
    //   223: new 133	java/lang/StringBuilder
    //   226: dup
    //   227: ldc 159
    //   229: invokespecial 138	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   232: getstatic 50	com/tencent/mm/modelvoice/MediaRecorder:ccq	Ljava/lang/Object;
    //   235: invokevirtual 163	java/lang/Object:hashCode	()I
    //   238: invokevirtual 142	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   241: invokevirtual 151	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: invokestatic 157	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   247: getstatic 50	com/tencent/mm/modelvoice/MediaRecorder:ccq	Ljava/lang/Object;
    //   250: astore 4
    //   252: aload 4
    //   254: monitorenter
    //   255: aload_0
    //   256: new 165	com/tencent/mm/compatible/audio/o
    //   259: dup
    //   260: aload_0
    //   261: getfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   264: bipush 120
    //   266: iconst_1
    //   267: iconst_0
    //   268: invokespecial 168	com/tencent/mm/compatible/audio/o:<init>	(IIZI)V
    //   271: putfield 69	com/tencent/mm/modelvoice/MediaRecorder:cct	Lcom/tencent/mm/compatible/audio/o;
    //   274: aload_0
    //   275: getfield 69	com/tencent/mm/modelvoice/MediaRecorder:cct	Lcom/tencent/mm/compatible/audio/o;
    //   278: aload_0
    //   279: getfield 85	com/tencent/mm/modelvoice/MediaRecorder:ccz	Lcom/tencent/mm/compatible/audio/r;
    //   282: invokevirtual 171	com/tencent/mm/compatible/audio/o:a	(Lcom/tencent/mm/compatible/audio/r;)V
    //   285: aload 4
    //   287: monitorexit
    //   288: aload_0
    //   289: getstatic 176	com/tencent/mm/modelvoice/o:cBB	Lcom/tencent/mm/modelvoice/o;
    //   292: putfield 178	com/tencent/mm/modelvoice/MediaRecorder:cBv	Lcom/tencent/mm/modelvoice/o;
    //   295: aload_0
    //   296: iconst_1
    //   297: putfield 94	com/tencent/mm/modelvoice/MediaRecorder:ccs	I
    //   300: return
    //   301: aload_0
    //   302: sipush 8000
    //   305: putfield 71	com/tencent/mm/modelvoice/MediaRecorder:ccw	I
    //   308: goto -168 -> 140
    //   311: astore 5
    //   313: aload 4
    //   315: monitorexit
    //   316: aload 5
    //   318: athrow
    //   319: astore_3
    //   320: aload_3
    //   321: invokevirtual 181	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   324: ifnull +22 -> 346
    //   327: ldc 131
    //   329: aload_3
    //   330: invokevirtual 181	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   333: invokestatic 184	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   336: aload_0
    //   337: getstatic 187	com/tencent/mm/modelvoice/o:cBE	Lcom/tencent/mm/modelvoice/o;
    //   340: putfield 178	com/tencent/mm/modelvoice/MediaRecorder:cBv	Lcom/tencent/mm/modelvoice/o;
    //   343: goto -48 -> 295
    //   346: ldc 131
    //   348: ldc 189
    //   350: invokestatic 184	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   353: goto -17 -> 336
    //
    // Exception table:
    //   from	to	target	type
    //   255	288	311	finally
    //   221	255	319	java/lang/Exception
    //   288	295	319	java/lang/Exception
    //   313	319	319	java/lang/Exception
  }

  private static native boolean native_init();

  private static native boolean native_pcm2amr(int paramInt1, byte[] paramArrayOfByte, int paramInt2, PByteArray paramPByteArray, int paramInt3);

  private static native boolean native_pcmresamp(byte[] paramArrayOfByte, int paramInt, PByteArray paramPByteArray);

  private static native boolean native_release();

  public final int Ec()
  {
    if ((this.ccu == c.cbf) && (this.cct != null))
      return this.cct.getState();
    return 1;
  }

  public final boolean Ed()
  {
    return this.ccu == c.cbf;
  }

  public final void a(n paramn)
  {
    if (this.ccu == c.cbg)
      if (this.ccr != null);
    while (true)
    {
      return;
      this.cBr = paramn;
      this.ccr.setOnErrorListener(new g(this));
      this.cBv = o.cBE;
      return;
      try
      {
        if (this.cBv == o.cBB)
        {
          this.cBr = paramn;
          return;
        }
      }
      catch (Exception localException)
      {
        if (localException.getMessage() == null)
          break label87;
      }
    }
    aa.e("MicroMsg.MediaRecorder", localException.getMessage());
    while (true)
    {
      this.cBv = o.cBE;
      return;
      label87: aa.e("MicroMsg.MediaRecorder", "Unknown error occured while setting output path");
    }
  }

  public final int getMaxAmplitude()
  {
    if (this.ccu == c.cbg)
      if (this.ccr != null);
    while (this.cBv != o.cBD)
    {
      return 0;
      return this.ccr.getMaxAmplitude();
    }
    int i = this.cck;
    this.cck = 0;
    return i;
  }

  public final void pr()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.setMaxDuration(70000);
      return;
    }
    this.ccn = 70000L;
  }

  public final void prepare()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.prepare();
      return;
    }
    if ((this.cBv != o.cBB) || (this.ccl == null))
    {
      this.cBv = o.cBE;
      release();
      return;
    }
    this.cBv = o.cBC;
  }

  public final void ps()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setAudioEncoder(1);
  }

  public final void pt()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setAudioSource(1);
  }

  public final void pu()
  {
    if ((this.ccu != c.cbg) || (this.ccr == null))
      return;
    this.ccr.setOutputFormat(3);
  }

  public final boolean pv()
  {
    if (this.ccu == c.cbg)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.ccr;
      aa.d("MicroMsg.MediaRecorder", "MediaRecorder stop RECMODE.AMR sysMediaRecorder:%s", arrayOfObject);
      if (this.ccr != null)
      {
        this.ccr.stop();
        this.ccr.release();
        this.ccr = null;
      }
      return true;
    }
    com.tencent.mm.compatible.g.k localk = new com.tencent.mm.compatible.g.k();
    aa.i("MicroMsg.MediaRecorder", "Stop now  state:" + this.cBv);
    if (this.cBv != o.cBD)
    {
      aa.e("MicroMsg.MediaRecorder", "stop() called on illegal state");
      this.cBv = o.cBE;
      return true;
    }
    synchronized (ccq)
    {
      if (this.cct != null)
      {
        this.cct.pq();
        this.cct.a(null);
        long l1 = localk.qh();
        this.cBv = o.cBF;
        long l2 = localk.qh();
        this.cBs.pz();
        if (this.cBt != null)
          this.cBt.stop();
        long l3 = cj.N(this.cco);
        aa.e("MicroMsg.MediaRecorder", "toNow " + l3 + " sStartTS " + this.cco + " bufferLen " + ccp);
        if ((l3 > 2000L) && (ccp == 0L))
        {
          be.us().set(27, Integer.valueOf(1));
          aa.e("MicroMsg.MediaRecorder", "16k not suppourt");
        }
        aa.i("MicroMsg.MediaRecorder", "Wait Stop Time Media:" + l1 + " Read:" + l2 + " Thr:" + localk.qh());
        return false;
      }
      aa.i("MicroMsg.MediaRecorder", "Stop now  recorder:null");
    }
  }

  public final void release()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.release();
      return;
    }
    if (this.cBv == o.cBD)
      pv();
    while (true)
      synchronized (ccq)
      {
        if (this.cct != null)
        {
          this.cct.pq();
          this.cct = null;
        }
        return;
      }
  }

  public final void setOutputFile(String paramString)
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.setOutputFile(paramString);
      this.ccl = paramString;
      return;
    }
    if (this.cBv == o.cBB)
    {
      this.ccl = paramString;
      return;
    }
    this.cBv = o.cBE;
  }

  public final void start()
  {
    if (this.ccu == c.cbg)
    {
      if (this.ccr == null)
        return;
      this.ccr.start();
      return;
    }
    aa.d("MicroMsg.MediaRecorder", "Start now  state:" + this.cBv);
    if (this.cBv == o.cBC)
    {
      this.cco = System.currentTimeMillis();
      ccp = 0L;
      this.cBv = o.cBD;
      synchronized (ccq)
      {
        if (this.cBs == null)
        {
          this.cBs = new j();
          this.cBs.c(this.ccs, this.ccl);
        }
        this.cct.pp();
        return;
      }
    }
    be.us().set(27, Integer.valueOf(1));
    aa.e("MicroMsg.MediaRecorder", "start() called on illegal state");
    this.cBv = o.cBE;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.MediaRecorder
 * JD-Core Version:    0.6.2
 */