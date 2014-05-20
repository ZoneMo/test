package oicq.wlogin_sdk.sharemem;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class WloginSigInfo
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator CREATOR = new b();
  public byte[] hwD;
  public byte[] hwE;
  public byte[] hwF;
  public byte[] hwG;
  public byte[] hwH;
  public byte[] hwI;
  public byte[] hwJ;
  public byte[] hwK;
  public byte[] hwL;
  public byte[] hwM;
  public byte[] hwN;
  public byte[] hwO;
  public byte[] hwP;
  public byte[] hwQ;
  public byte[] hwT;
  public byte[] hwU;
  public byte[] hwW;
  public byte[] hym;
  public byte[] hyn;
  public byte[] hyo;
  public byte[] hyp;
  public long hyq = 0L;
  public long hyr = 0L;
  public long hys = 0L;
  public long hyt = 0L;
  public long hyu = 0L;

  public WloginSigInfo(long paramLong1, long paramLong2, long paramLong3, long paramLong4, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6, byte[] paramArrayOfByte7, byte[] paramArrayOfByte8, byte[] paramArrayOfByte9, byte[] paramArrayOfByte10, byte[] paramArrayOfByte11, byte[] paramArrayOfByte12, byte[][] paramArrayOfByte)
  {
    this.hyt = paramLong1;
    this.hys = paramLong2;
    this.hyq = paramLong3;
    this.hyr = paramLong4;
    this.hym = ((byte[])paramArrayOfByte1.clone());
    this.hyn = ((byte[])paramArrayOfByte2.clone());
    this.hwD = ((byte[])paramArrayOfByte3.clone());
    this.hwE = ((byte[])paramArrayOfByte4.clone());
    if (paramArrayOfByte5 != null)
    {
      this.hwF = ((byte[])paramArrayOfByte5.clone());
      this.hwG = new byte[0];
      if (paramArrayOfByte6 == null)
        break label380;
      this.hwH = ((byte[])paramArrayOfByte6.clone());
      label140: if (paramArrayOfByte7 == null)
        break label390;
      this.hwI = ((byte[])paramArrayOfByte7.clone());
      label157: if (paramArrayOfByte8 == null)
        break label400;
      this.hwJ = ((byte[])paramArrayOfByte8.clone());
      label174: if (paramArrayOfByte9 == null)
        break label410;
      this.hwK = ((byte[])paramArrayOfByte9.clone());
      label191: if (paramArrayOfByte10 == null)
        break label420;
      this.hwL = ((byte[])paramArrayOfByte10.clone());
      label208: if (paramArrayOfByte11 == null)
        break label430;
      this.hwM = ((byte[])paramArrayOfByte11.clone());
      label225: if (paramArrayOfByte12 == null)
        break label440;
    }
    label390: label400: label410: label420: label430: label440: for (this.hwN = ((byte[])paramArrayOfByte12.clone()); ; this.hwN = new byte[0])
    {
      if ((paramArrayOfByte == null) || (paramArrayOfByte.length != 8))
        break label450;
      this.hwP = ((byte[])paramArrayOfByte[0].clone());
      this.hwO = ((byte[])paramArrayOfByte[1].clone());
      this.hwQ = ((byte[])paramArrayOfByte[2].clone());
      this.hyo = ((byte[])paramArrayOfByte[3].clone());
      this.hwT = ((byte[])paramArrayOfByte[4].clone());
      this.hwU = ((byte[])paramArrayOfByte[5].clone());
      this.hyp = ((byte[])paramArrayOfByte[6].clone());
      this.hwW = ((byte[])paramArrayOfByte[7].clone());
      return;
      this.hwF = new byte[0];
      break;
      label380: this.hwH = new byte[0];
      break label140;
      this.hwI = new byte[0];
      break label157;
      this.hwJ = new byte[0];
      break label174;
      this.hwK = new byte[0];
      break label191;
      this.hwL = new byte[0];
      break label208;
      this.hwM = new byte[0];
      break label225;
    }
    label450: this.hwP = new byte[0];
    this.hwO = new byte[0];
    this.hwQ = new byte[0];
    this.hyo = new byte[0];
    this.hwT = new byte[0];
    this.hwU = new byte[0];
    this.hyp = new byte[0];
    this.hwW = new byte[0];
  }

  public WloginSigInfo(long paramLong1, long paramLong2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.hyt = 4294967295L;
    this.hys = paramLong1;
    this.hyq = paramLong2;
    this.hyr = 0L;
    this.hym = new byte[0];
    this.hyn = new byte[0];
    this.hwD = ((byte[])paramArrayOfByte1.clone());
    this.hwE = ((byte[])paramArrayOfByte2.clone());
    this.hwF = new byte[0];
    this.hwG = new byte[0];
    this.hwH = new byte[0];
    this.hwI = new byte[0];
    this.hwJ = new byte[0];
    this.hwK = new byte[0];
    this.hwL = new byte[0];
    this.hwM = new byte[0];
    this.hwN = new byte[0];
    this.hwO = new byte[0];
    this.hwP = new byte[0];
    this.hwQ = new byte[0];
    this.hyo = new byte[0];
    this.hwT = new byte[0];
    this.hwU = new byte[0];
    this.hyp = new byte[0];
    this.hwW = new byte[0];
  }

  private WloginSigInfo(Parcel paramParcel)
  {
    this.hym = paramParcel.createByteArray();
    this.hyn = paramParcel.createByteArray();
    this.hwD = paramParcel.createByteArray();
    this.hwE = paramParcel.createByteArray();
    this.hwF = paramParcel.createByteArray();
    this.hwG = paramParcel.createByteArray();
    this.hwH = paramParcel.createByteArray();
    this.hwI = paramParcel.createByteArray();
    this.hwJ = paramParcel.createByteArray();
    this.hwK = paramParcel.createByteArray();
    this.hwL = paramParcel.createByteArray();
    this.hwM = paramParcel.createByteArray();
    this.hwN = paramParcel.createByteArray();
    this.hwO = paramParcel.createByteArray();
    this.hwP = paramParcel.createByteArray();
    this.hwQ = paramParcel.createByteArray();
    this.hyo = paramParcel.createByteArray();
    this.hwT = paramParcel.createByteArray();
    this.hwU = paramParcel.createByteArray();
    this.hyp = paramParcel.createByteArray();
    this.hwW = paramParcel.createByteArray();
    this.hyq = paramParcel.readLong();
    this.hyr = paramParcel.readLong();
    this.hys = paramParcel.readLong();
    this.hyt = paramParcel.readLong();
    this.hyu = paramParcel.readLong();
  }

  public final WloginSigInfo a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6, byte[] paramArrayOfByte7, byte[] paramArrayOfByte8, byte[] paramArrayOfByte9, byte[] paramArrayOfByte10, byte[] paramArrayOfByte11, byte[] paramArrayOfByte12, byte[][] paramArrayOfByte)
  {
    this.hyt = paramLong1;
    this.hys = paramLong2;
    this.hyq = paramLong3;
    this.hyr = paramLong4;
    this.hym = ((byte[])paramArrayOfByte1.clone());
    this.hyn = ((byte[])paramArrayOfByte2.clone());
    this.hwD = ((byte[])paramArrayOfByte3.clone());
    this.hwE = ((byte[])paramArrayOfByte4.clone());
    if (paramArrayOfByte5 != null)
    {
      this.hwF = ((byte[])paramArrayOfByte5.clone());
      this.hwG = new byte[0];
      if (paramArrayOfByte6 == null)
        break label376;
      this.hwH = ((byte[])paramArrayOfByte6.clone());
      label111: if (paramArrayOfByte7 == null)
        break label386;
      this.hwI = ((byte[])paramArrayOfByte7.clone());
      label128: if (paramArrayOfByte8 == null)
        break label396;
      this.hwJ = ((byte[])paramArrayOfByte8.clone());
      label145: if (paramArrayOfByte9 == null)
        break label406;
      this.hwK = ((byte[])paramArrayOfByte9.clone());
      label162: if (paramArrayOfByte10 == null)
        break label416;
      this.hwL = ((byte[])paramArrayOfByte10.clone());
      label179: if (paramArrayOfByte11 == null)
        break label426;
      this.hwM = ((byte[])paramArrayOfByte11.clone());
      label196: if (paramArrayOfByte12 == null)
        break label436;
    }
    label386: label396: label406: label416: label426: label436: for (this.hwN = ((byte[])paramArrayOfByte12.clone()); ; this.hwN = new byte[0])
    {
      if ((paramArrayOfByte == null) || (paramArrayOfByte.length != 8))
        break label446;
      this.hwP = ((byte[])paramArrayOfByte[0].clone());
      this.hwO = ((byte[])paramArrayOfByte[1].clone());
      this.hwQ = ((byte[])paramArrayOfByte[2].clone());
      if ((paramArrayOfByte[3].clone() != null) && (((byte[])paramArrayOfByte[3].clone()).length > 0))
        this.hyo = ((byte[])paramArrayOfByte[3].clone());
      this.hwT = ((byte[])paramArrayOfByte[4].clone());
      this.hwU = ((byte[])paramArrayOfByte[5].clone());
      this.hyp = ((byte[])paramArrayOfByte[6].clone());
      this.hwW = ((byte[])paramArrayOfByte[7].clone());
      return this;
      this.hwF = new byte[0];
      break;
      label376: this.hwH = new byte[0];
      break label111;
      this.hwI = new byte[0];
      break label128;
      this.hwJ = new byte[0];
      break label145;
      this.hwK = new byte[0];
      break label162;
      this.hwL = new byte[0];
      break label179;
      this.hwM = new byte[0];
      break label196;
    }
    label446: this.hwP = new byte[0];
    this.hwO = new byte[0];
    this.hwQ = new byte[0];
    this.hwT = new byte[0];
    this.hwU = new byte[0];
    this.hyp = new byte[0];
    this.hwW = new byte[0];
    return this;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeByteArray(this.hym);
    paramParcel.writeByteArray(this.hyn);
    paramParcel.writeByteArray(this.hwD);
    paramParcel.writeByteArray(this.hwE);
    paramParcel.writeByteArray(this.hwF);
    paramParcel.writeByteArray(this.hwG);
    paramParcel.writeByteArray(this.hwH);
    paramParcel.writeByteArray(this.hwI);
    paramParcel.writeByteArray(this.hwJ);
    paramParcel.writeByteArray(this.hwK);
    paramParcel.writeByteArray(this.hwL);
    paramParcel.writeByteArray(this.hwM);
    paramParcel.writeByteArray(this.hwN);
    paramParcel.writeByteArray(this.hwO);
    paramParcel.writeByteArray(this.hwP);
    paramParcel.writeByteArray(this.hwQ);
    paramParcel.writeByteArray(this.hyo);
    paramParcel.writeByteArray(this.hwT);
    paramParcel.writeByteArray(this.hwU);
    paramParcel.writeByteArray(this.hyp);
    paramParcel.writeByteArray(this.hwW);
    paramParcel.writeLong(this.hyq);
    paramParcel.writeLong(this.hyr);
    paramParcel.writeLong(this.hys);
    paramParcel.writeLong(this.hyt);
    paramParcel.writeLong(this.hyu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.sharemem.WloginSigInfo
 * JD-Core Version:    0.6.2
 */