package a.a.a.a;

import java.util.LinkedList;

public final class a
{
  private final a.a.a.a.a.b fxi;
  private final a.a.a.b.a.a hwp;
  private int hwq = 0;

  public a(byte[] paramArrayOfByte, a.a.a.a.a.b paramb)
  {
    this.hwp = a.a.a.b.a.a.cw(paramArrayOfByte);
    this.fxi = paramb;
  }

  public final int aPP()
  {
    return this.hwp.aQc();
  }

  public final int aPQ()
  {
    return this.hwp.aQc();
  }

  public final LinkedList aPR()
  {
    return this.hwp.aQd();
  }

  public final String aPS()
  {
    return this.hwp.readString();
  }

  public final boolean aPT()
  {
    return this.hwp.aQe();
  }

  public final double aPU()
  {
    return this.hwp.readDouble();
  }

  public final float aPV()
  {
    return this.hwp.readFloat();
  }

  public final long aPW()
  {
    return this.hwp.aQh();
  }

  public final com.tencent.mm.am.b aPX()
  {
    return this.hwp.aQf();
  }

  public final int aPY()
  {
    this.hwq = this.hwp.aQb();
    return a.a.a.b.a.oN(this.hwq);
  }

  public final void aPZ()
  {
    int i = a.a.a.b.a.oM(this.hwq);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("FieldNumber: ").append(a.a.a.b.a.oN(this.hwq)).append(" - ");
    switch (i)
    {
    case 3:
    case 4:
    default:
    case 5:
    case 1:
    case 2:
    case 0:
    }
    while (true)
    {
      localStringBuffer.toString();
      return;
      localStringBuffer.append("float value: ").append(Float.toString(this.hwp.readFloat()));
      continue;
      localStringBuffer.append("double value: ").append(Double.toString(this.hwp.readDouble()));
      continue;
      localStringBuffer.append("Length delimited (String or ByteString) value: ").append(this.hwp.readString());
      continue;
      localStringBuffer.append("varint (long, int or boolean) value: ").append(this.hwp.aQh());
    }
  }

  public final LinkedList oL(int paramInt)
  {
    return this.hwp.oL(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     a.a.a.a.a
 * JD-Core Version:    0.6.2
 */