package com.tencent.mm.protocal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public final class bi
{
  private int JQ;
  private String fyC;
  private String fyD;

  private bi(String paramString1, String paramString2, int paramInt)
  {
    this.fyC = paramString1;
    this.fyD = paramString2;
    this.JQ = paramInt;
  }

  public static bi awV()
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("rsa_public_key_prefs", 0);
    bi localbi = new bi(localSharedPreferences.getString("keye", ""), localSharedPreferences.getString("keyn", ""), localSharedPreferences.getInt("version", 0));
    if (!localbi.awY())
      return localbi;
    return new bi("010001", "BE726F29DDB37D07ECD12E58D51713456329E3A7357A45D1B87D3B67D8A7F68A4A23CA4E9A8098CD0BDA047BE032D0A9611EE326DB0AAE63D8239906017895E45FAA702F23926D6A44B3D0D1AFCF73F5673958D0FA4BBC1AC6DDA5F7D0C42545DB967B37D83A291811A982E0C03E19B4A305E58AB65315E612106E4CCE5B5C20E73E3DA7533E42F6EF4E3CF081E085C2773FBBAB9F96C049BEB17873C0953D6CEA39171D6F78307FE4E25A8B8BDED0CF26304A642F63095BEB9FF44F91952C13F12A51EDE9ADB2DEF8A2EDA96AAFB5EE01BFE7E119D624F8EF88E4FFD4437DBDDFA95AF397511792686D6997C2D1A38A083D89E0181885CD940E382591B3EA4D", 110);
  }

  public static bi awW()
  {
    return new bi("010001", "B3C47664C8DF2B33F2E132FE967C5FCD9DD637BAB1AC827040D3261CEA767ADE14869891FDD5392C03D24686D946C2CBD61D3F9A8FF4167017AD1C484132BBB62DEEB9EC3B5FC007A2425D2DFA4288DF53A4F4DFDF27FED9E218A4C73F42D7AB5CA92378970D41F8D969A9C6CAA8DB5A958BC2844B47F3E5397A03278EBA9123120B4EF218F07B4E1D4C0A35ED0EF86EAF5DFDD6CE9692CD317EC2F2B0D5E6B7EB79E6CB608C2EE48D2DFDA1AC255ED111AB3C78F49F2BA0C25C01034A8E39B8E4CD4513AFA7F2E59C5C64B5CD896E18E474DDAA41F1132DF69386F5E1741DF5034C2AB0A65ABE675DC97CEBD00FE9C495049195ED18A91857D51284882495C3", 105);
  }

  public static bi awX()
  {
    return new bi("", "", 0);
  }

  public static void k(String paramString1, String paramString2, int paramInt)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramString1;
    arrayOfObject[2] = paramString2;
    aa.e("MicroMsg.RsaInfo", "dkcert saveRsaInfo ver:%d keye:%s keyn:%s  ", arrayOfObject);
    SharedPreferences.Editor localEditor = al.getContext().getSharedPreferences("rsa_public_key_prefs", 0).edit();
    localEditor.putString("keye", paramString1);
    localEditor.putString("keyn", paramString2);
    localEditor.putInt("version", paramInt);
    localEditor.commit();
  }

  public final boolean awY()
  {
    return (this.JQ == 0) || (cj.hX(this.fyC)) || (cj.hX(this.fyD));
  }

  public final String awZ()
  {
    return this.fyC;
  }

  public final String axa()
  {
    return this.fyD;
  }

  public final int axb()
  {
    return this.JQ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.bi
 * JD-Core Version:    0.6.2
 */