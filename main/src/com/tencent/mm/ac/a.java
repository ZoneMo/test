package com.tencent.mm.ac;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.jm;
import com.tencent.mm.protocal.a.jn;
import com.tencent.mm.protocal.a.rv;
import java.io.RandomAccessFile;

public final class a extends x
  implements ab
{
  private m cjh;
  private int ckU;
  private RandomAccessFile cwi;
  private int cwj;
  private String filePath;
  private String url;

  public a(String paramString)
  {
    this.url = paramString;
    this.cwj = 0;
    this.ckU = 0;
    this.filePath = null;
    this.cwi = null;
  }

  // ERROR //
  private boolean b(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    // Byte code:
    //   0: iload_3
    //   1: ifne +86 -> 87
    //   4: aload_0
    //   5: getfield 31	com/tencent/mm/ac/a:cwi	Ljava/io/RandomAccessFile;
    //   8: ifnonnull +10 -> 18
    //   11: aload_0
    //   12: getfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   15: ifnull +12 -> 27
    //   18: ldc 39
    //   20: ldc 41
    //   22: invokestatic 47	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: iconst_0
    //   26: ireturn
    //   27: aload_0
    //   28: aload_1
    //   29: invokestatic 53	com/tencent/mm/ac/b:gh	(Ljava/lang/String;)Ljava/lang/String;
    //   32: putfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   35: aload_0
    //   36: getfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   39: ifnonnull +31 -> 70
    //   42: ldc 39
    //   44: new 55	java/lang/StringBuilder
    //   47: dup
    //   48: ldc 57
    //   50: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload_1
    //   54: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: ldc 65
    //   59: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokestatic 47	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   68: iconst_0
    //   69: ireturn
    //   70: aload_0
    //   71: new 71	java/io/RandomAccessFile
    //   74: dup
    //   75: aload_0
    //   76: getfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   79: ldc 73
    //   81: invokespecial 75	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: putfield 31	com/tencent/mm/ac/a:cwi	Ljava/io/RandomAccessFile;
    //   87: aload_0
    //   88: getfield 31	com/tencent/mm/ac/a:cwi	Ljava/io/RandomAccessFile;
    //   91: iload_3
    //   92: i2l
    //   93: invokevirtual 79	java/io/RandomAccessFile:seek	(J)V
    //   96: aload_0
    //   97: getfield 31	com/tencent/mm/ac/a:cwi	Ljava/io/RandomAccessFile;
    //   100: aload_2
    //   101: iconst_0
    //   102: aload_2
    //   103: arraylength
    //   104: invokevirtual 83	java/io/RandomAccessFile:write	([BII)V
    //   107: iconst_1
    //   108: ireturn
    //   109: astore 5
    //   111: ldc 39
    //   113: new 55	java/lang/StringBuilder
    //   116: dup
    //   117: ldc 85
    //   119: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: aload_0
    //   123: getfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   126: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: ldc 87
    //   131: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload 5
    //   136: invokevirtual 90	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   139: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 47	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: iconst_0
    //   149: ireturn
    //   150: astore 4
    //   152: ldc 39
    //   154: new 55	java/lang/StringBuilder
    //   157: dup
    //   158: ldc 92
    //   160: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: aload_0
    //   164: getfield 29	com/tencent/mm/ac/a:filePath	Ljava/lang/String;
    //   167: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: ldc 94
    //   172: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload 4
    //   177: invokevirtual 95	java/io/IOException:getMessage	()Ljava/lang/String;
    //   180: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 47	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   189: iconst_0
    //   190: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   70	87	109	java/lang/Exception
    //   87	107	150	java/io/IOException
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new jm());
    localb.b(new jn());
    localb.es("/cgi-bin/micromsg-bin/getpsmimg");
    localb.cN(141);
    localb.cO(29);
    localb.cP(1000000029);
    com.tencent.mm.n.a locala = localb.wx();
    jm localjm = (jm)locala.wr();
    localjm.URL = this.url;
    localjm.fAE = this.cwj;
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.NetSceneGetPSMImg", "doscene url:[" + this.url + "] + offset:" + this.cwj + " totallen:" + this.ckU);
    return a(paramr, locala, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    String str = ((jm)((com.tencent.mm.n.a)paramaj).wr()).URL;
    int i;
    if (str == null)
      i = 0;
    while (i == 0)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPSMImg", "security checked failed : url invalid:" + this.url);
      return com.tencent.mm.n.aa.cmi;
      if (str.indexOf("weixin://") != 0)
        i = 0;
      else
        i = 1;
    }
    if ((this.cwj < 0) || (this.ckU < 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPSMImg", "security checked failed : offset:" + this.cwj + " total:" + this.ckU);
      return com.tencent.mm.n.aa.cmi;
    }
    if (this.cwj == 0)
    {
      if (this.ckU != 0)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPSMImg", "security checked failed : offset:" + this.cwj + " total:" + this.ckU);
        return com.tencent.mm.n.aa.cmi;
      }
    }
    else if (this.cwj >= this.ckU)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPSMImg", "security checked failed : offset:" + this.cwj + " total:" + this.ckU);
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetPSMImg", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    }
    do
    {
      return;
      jn localjn = (jn)((com.tencent.mm.n.a)paramaj).ws();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPSMImg", "onGYNetEnd url:[" + this.url + "] + offset:" + this.cwj + " Resp[ totallen:" + localjn.fLI + " bufSize:" + localjn.fAJ.ayg() + " ]");
      if (localjn.fLI > 0)
        this.ckU = localjn.fLI;
      if (!b(this.url, localjn.fAJ.ayh().getBytes(), this.cwj))
      {
        this.cjh.a(3, -1, paramString, this);
        return;
      }
      this.cwj += localjn.fAJ.ayg();
      if (this.ckU <= this.cwj)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetPSMImg", "down url:[" + this.url + "] final size: " + this.ckU);
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    while (a(wM(), this.cjh) >= 0);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 141;
  }

  public final String getUrl()
  {
    return this.url;
  }

  protected final int we()
  {
    return 10;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ac.a
 * JD-Core Version:    0.6.2
 */