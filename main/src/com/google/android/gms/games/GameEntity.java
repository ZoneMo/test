package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import java.util.Arrays;

public final class GameEntity extends bq
  implements Game
{
  public static final b KG = new a();
  private final int KH;
  private final String KI;
  private final String KJ;
  private final String KK;
  private final String KL;
  private final String KM;
  private final String KN;
  private final Uri KO;
  private final Uri KP;
  private final Uri KQ;
  private final boolean KR;
  private final boolean KS;
  private final String KT;
  private final int KU;
  private final int KV;
  private final int KW;

  GameEntity(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Uri paramUri1, Uri paramUri2, Uri paramUri3, boolean paramBoolean1, boolean paramBoolean2, String paramString7, int paramInt2, int paramInt3, int paramInt4)
  {
    this.KH = paramInt1;
    this.KI = paramString1;
    this.KJ = paramString2;
    this.KK = paramString3;
    this.KL = paramString4;
    this.KM = paramString5;
    this.KN = paramString6;
    this.KO = paramUri1;
    this.KP = paramUri2;
    this.KQ = paramUri3;
    this.KR = paramBoolean1;
    this.KS = paramBoolean2;
    this.KT = paramString7;
    this.KU = paramInt2;
    this.KV = paramInt3;
    this.KW = paramInt4;
  }

  public GameEntity(Game paramGame)
  {
    this.KH = 1;
    this.KI = paramGame.hu();
    this.KK = paramGame.hv();
    this.KL = paramGame.hw();
    this.KM = paramGame.getDescription();
    this.KN = paramGame.hx();
    this.KJ = paramGame.getDisplayName();
    this.KO = paramGame.hy();
    this.KP = paramGame.hz();
    this.KQ = paramGame.hA();
    this.KR = paramGame.hB();
    this.KS = paramGame.hC();
    this.KT = paramGame.hD();
    this.KU = paramGame.hE();
    this.KV = paramGame.hF();
    this.KW = paramGame.hG();
  }

  public static int a(Game paramGame)
  {
    Object[] arrayOfObject = new Object[15];
    arrayOfObject[0] = paramGame.hu();
    arrayOfObject[1] = paramGame.getDisplayName();
    arrayOfObject[2] = paramGame.hv();
    arrayOfObject[3] = paramGame.hw();
    arrayOfObject[4] = paramGame.getDescription();
    arrayOfObject[5] = paramGame.hx();
    arrayOfObject[6] = paramGame.hy();
    arrayOfObject[7] = paramGame.hz();
    arrayOfObject[8] = paramGame.hA();
    arrayOfObject[9] = Boolean.valueOf(paramGame.hB());
    arrayOfObject[10] = Boolean.valueOf(paramGame.hC());
    arrayOfObject[11] = paramGame.hD();
    arrayOfObject[12] = Integer.valueOf(paramGame.hE());
    arrayOfObject[13] = Integer.valueOf(paramGame.hF());
    arrayOfObject[14] = Integer.valueOf(paramGame.hG());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Game paramGame, Object paramObject)
  {
    if (!(paramObject instanceof Game));
    Game localGame;
    do
    {
      return false;
      if (paramGame == paramObject)
        return true;
      localGame = (Game)paramObject;
    }
    while ((!g.b(localGame.hu(), paramGame.hu())) || (!g.b(localGame.getDisplayName(), paramGame.getDisplayName())) || (!g.b(localGame.hv(), paramGame.hv())) || (!g.b(localGame.hw(), paramGame.hw())) || (!g.b(localGame.getDescription(), paramGame.getDescription())) || (!g.b(localGame.hx(), paramGame.hx())) || (!g.b(localGame.hy(), paramGame.hy())) || (!g.b(localGame.hz(), paramGame.hz())) || (!g.b(localGame.hA(), paramGame.hA())) || (!g.b(Boolean.valueOf(localGame.hB()), Boolean.valueOf(paramGame.hB()))) || (!g.b(Boolean.valueOf(localGame.hC()), Boolean.valueOf(paramGame.hC()))) || (!g.b(localGame.hD(), paramGame.hD())) || (!g.b(Integer.valueOf(localGame.hE()), Integer.valueOf(paramGame.hE()))) || (!g.b(Integer.valueOf(localGame.hF()), Integer.valueOf(paramGame.hF()))) || (!g.b(Integer.valueOf(localGame.hG()), Integer.valueOf(paramGame.hG()))));
    return true;
  }

  public static String b(Game paramGame)
  {
    return g.L(paramGame).a("ApplicationId", paramGame.hu()).a("DisplayName", paramGame.getDisplayName()).a("PrimaryCategory", paramGame.hv()).a("SecondaryCategory", paramGame.hw()).a("Description", paramGame.getDescription()).a("DeveloperName", paramGame.hx()).a("IconImageUri", paramGame.hy()).a("HiResImageUri", paramGame.hz()).a("FeaturedImageUri", paramGame.hA()).a("PlayEnabledGame", Boolean.valueOf(paramGame.hB())).a("InstanceInstalled", Boolean.valueOf(paramGame.hC())).a("InstancePackageName", paramGame.hD()).a("GameplayAclStatus", Integer.valueOf(paramGame.hE())).a("AchievementTotalCount", Integer.valueOf(paramGame.hF())).a("LeaderboardCount", Integer.valueOf(paramGame.hG())).toString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final String getDescription()
  {
    return this.KM;
  }

  public final String getDisplayName()
  {
    return this.KJ;
  }

  public final Uri hA()
  {
    return this.KQ;
  }

  public final boolean hB()
  {
    return this.KR;
  }

  public final boolean hC()
  {
    return this.KS;
  }

  public final String hD()
  {
    return this.KT;
  }

  public final int hE()
  {
    return this.KU;
  }

  public final int hF()
  {
    return this.KV;
  }

  public final int hG()
  {
    return this.KW;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final String hu()
  {
    return this.KI;
  }

  public final String hv()
  {
    return this.KK;
  }

  public final String hw()
  {
    return this.KL;
  }

  public final String hx()
  {
    return this.KN;
  }

  public final Uri hy()
  {
    return this.KO;
  }

  public final Uri hz()
  {
    return this.KP;
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    if (!lg())
    {
      b.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeString(this.KI);
    paramParcel.writeString(this.KJ);
    paramParcel.writeString(this.KK);
    paramParcel.writeString(this.KL);
    paramParcel.writeString(this.KM);
    paramParcel.writeString(this.KN);
    String str1;
    String str2;
    label90: String str3;
    label110: int j;
    if (this.KO == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      if (this.KP != null)
        break label189;
      str2 = null;
      paramParcel.writeString(str2);
      Uri localUri = this.KQ;
      str3 = null;
      if (localUri != null)
        break label201;
      paramParcel.writeString(str3);
      if (!this.KR)
        break label213;
      j = i;
      label126: paramParcel.writeInt(j);
      if (!this.KS)
        break label219;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.KT);
      paramParcel.writeInt(this.KU);
      paramParcel.writeInt(this.KV);
      paramParcel.writeInt(this.KW);
      return;
      str1 = this.KO.toString();
      break;
      label189: str2 = this.KP.toString();
      break label90;
      label201: str3 = this.KQ.toString();
      break label110;
      label213: j = 0;
      break label126;
      label219: i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.GameEntity
 * JD-Core Version:    0.6.2
 */