package com.tencent.mm.storage;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class ao
{
  private int bLN = 0;
  private int bNk;
  private int bTN;
  private String bTY;
  private String cif = "";
  private String cjJ;
  private String cjK;
  private String cjL;
  private String content = "";
  private String crH = "";
  private String crI = "";
  private String crJ = "";
  private String crM = "";
  private String frH;
  private String frx;
  private String ghJ = "";
  private int ghK = 0;
  private String ghL = "";
  private String ghM = "";
  private long ghN = 0L;
  private String ghQ = "";
  private String ghR = "";
  private int ghZ = 0;
  private String gia;
  private String gib;
  private String wN = "";

  public static ao uU(String paramString)
  {
    ao localao = new ao();
    Map localMap = u.aL(paramString, "msg");
    if (localMap != null);
    try
    {
      localao.ghJ = ((String)localMap.get(".msg.$fromusername"));
      localao.wN = ((String)localMap.get(".msg.$alias"));
      localao.crH = ((String)localMap.get(".msg.$fromnickname"));
      localao.cif = ((String)localMap.get(".msg.$fullpy"));
      localao.crI = ((String)localMap.get(".msg.$shortpy"));
      localao.content = ((String)localMap.get(".msg.$content"));
      localao.ghK = Integer.valueOf((String)localMap.get(".msg.$imagestatus")).intValue();
      localao.bLN = Integer.valueOf((String)localMap.get(".msg.$scene")).intValue();
      localao.ghL = ((String)localMap.get(".msg.$mhash"));
      localao.ghM = ((String)localMap.get(".msg.$mfullhash"));
      if ((localMap.get(localMap.get(".msg.$qqnum")) != null) && (((String)localMap.get(localMap.get(".msg.$qqnum"))).length() > 0))
        localao.ghN = Long.valueOf((String)localMap.get(".msg.$qqnum")).longValue();
      localao.crJ = ((String)localMap.get(".msg.$qqnickname"));
      localao.crM = ((String)localMap.get(".msg.$qqremark"));
      localao.bTY = ((String)localMap.get(".msg.$sign"));
      if ((localMap.get(".msg.$sex") != null) && (((String)localMap.get(".msg.$sex")).length() > 0))
        localao.bTN = Integer.valueOf((String)localMap.get(".msg.$sex")).intValue();
      localao.cjK = ((String)localMap.get(".msg.$city"));
      localao.cjL = ((String)localMap.get(".msg.$province"));
      localao.cjJ = ((String)localMap.get(".msg.$country"));
      if (localMap.get(".msg.$snsflag") != null)
      {
        localao.ghZ = Integer.valueOf((String)localMap.get(".msg.$snsflag")).intValue();
        localao.gia = ((String)localMap.get(".msg.$snsbgimgid"));
      }
      localao.frx = ((String)localMap.get(".msg.$ticket"));
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localao.frx;
      aa.e("MicroMsg.MsgInfo", "dkverify ticket:%s", arrayOfObject1);
      localao.ghQ = cj.hW((String)localMap.get(".msg.$bigheadimgurl"));
      localao.ghR = cj.hW((String)localMap.get(".msg.$smallheadimgurl"));
      localao.bNk = Integer.valueOf(cj.R((String)localMap.get(".msg.$opcode"), "0")).intValue();
      localao.gib = cj.hW((String)localMap.get(".msg.$encryptusername"));
      localao.frH = cj.hW((String)localMap.get(".msg.$googlecontact"));
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = localao.ghJ;
      arrayOfObject2[1] = localao.ghQ;
      arrayOfObject2[2] = localao.ghR;
      aa.e("MicroMsg.MsgInfo", "dkavatar VerifyContent user:[%s] big:[%s] sm:[%s]", arrayOfObject2);
      return localao;
    }
    catch (Exception localException)
    {
    }
    return localao;
  }

  public final String Ah()
  {
    return this.crJ;
  }

  public final int Gf()
  {
    return this.bLN;
  }

  public final String aCB()
  {
    return this.frH;
  }

  public final String aCK()
  {
    return this.frx;
  }

  public final int aCL()
  {
    return this.ghZ;
  }

  public final String aCM()
  {
    return this.gia;
  }

  public final int aCN()
  {
    return this.bNk;
  }

  public final String aCO()
  {
    return this.gib;
  }

  public final String aCs()
  {
    return this.ghQ;
  }

  public final String aCt()
  {
    return this.ghR;
  }

  public final String aCu()
  {
    return this.ghJ;
  }

  public final int aCv()
  {
    return this.ghK;
  }

  public final String aCw()
  {
    return this.ghL;
  }

  public final long aCx()
  {
    return this.ghN;
  }

  public final String aCz()
  {
    return this.ghM;
  }

  public final String getContent()
  {
    return this.content;
  }

  public final String getDisplayName()
  {
    if ((this.crH != null) && (this.crH.length() > 0))
      return this.crH;
    aa.aM("MicroMsg.MsgInfo", "username is nullOrNil");
    return this.ghJ;
  }

  public final String kn()
  {
    return this.crH;
  }

  public final String rB()
  {
    return this.bTY;
  }

  public final String rC()
  {
    if (!cj.hX(this.cjJ))
    {
      if ((!cj.hX(this.cjL)) && (!cj.hX(this.cjK)) && (RegionCodeDecoder.vw(this.cjJ)))
      {
        RegionCodeDecoder.aDe();
        return RegionCodeDecoder.aW(this.cjJ, this.cjL);
      }
      RegionCodeDecoder.aDe();
      return RegionCodeDecoder.vy(this.cjJ);
    }
    return this.cjL;
  }

  public final String rD()
  {
    if ((!cj.hX(this.cjJ)) && (!cj.hX(this.cjL)))
    {
      if (cj.hX(this.cjK))
      {
        RegionCodeDecoder.aDe();
        return RegionCodeDecoder.aW(this.cjJ, this.cjL);
      }
      RegionCodeDecoder.aDe();
      return RegionCodeDecoder.x(this.cjJ, this.cjL, this.cjK);
    }
    return this.cjK;
  }

  public final int rk()
  {
    return this.bTN;
  }

  public final String rn()
  {
    return this.crI;
  }

  public final String ro()
  {
    return this.cif;
  }

  public final String rp()
  {
    return this.wN;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ao
 * JD-Core Version:    0.6.2
 */