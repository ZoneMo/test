package a.a.a.c;

import com.tencent.mm.am.b;
import java.io.OutputStream;
import java.util.LinkedList;

public final class a
{
  private final byte[] hwA;
  private final OutputStream hwB;
  private final a.a.a.b.b.a hwC;

  public a(byte[] paramArrayOfByte)
  {
    this.hwA = paramArrayOfByte;
    this.hwB = null;
    this.hwC = a.a.a.b.b.a.cx(paramArrayOfByte);
  }

  public final void A(int paramInt, String paramString)
  {
    this.hwC.A(paramInt, paramString);
  }

  public final void a(int paramInt, double paramDouble)
  {
    this.hwC.a(paramInt, paramDouble);
  }

  public final void aQo()
  {
    if (this.hwB != null)
    {
      this.hwB.write(this.hwA);
      this.hwB.flush();
    }
  }

  public final void b(int paramInt, LinkedList paramLinkedList)
  {
    int i = 0;
    a.a.a.b.b.a locala;
    int j;
    int k;
    if ((paramLinkedList != null) && (paramLinkedList.size() > 0))
    {
      this.hwC.bw(paramInt, 2);
      locala = this.hwC;
      if ((paramLinkedList == null) || (paramLinkedList.size() <= 0))
        break label124;
      j = 0;
      k = 0;
      if (k < paramLinkedList.size())
        break label70;
    }
    while (true)
    {
      locala.oR(j);
      while (true)
      {
        if (i >= paramLinkedList.size())
        {
          return;
          label70: int m = j + a.a.a.b.b.a.oV(((Integer)paramLinkedList.get(k)).intValue());
          k++;
          j = m;
          break;
        }
        this.hwC.oU(((Integer)paramLinkedList.get(i)).intValue());
        i++;
      }
      label124: j = 0;
    }
  }

  public final void bv(int paramInt1, int paramInt2)
  {
    this.hwC.bv(paramInt1, paramInt2);
  }

  public final void bx(int paramInt1, int paramInt2)
  {
    this.hwC.bu(paramInt1, paramInt2);
  }

  public final void by(int paramInt1, int paramInt2)
  {
    bx(paramInt1, paramInt2);
  }

  public final void c(int paramInt, float paramFloat)
  {
    this.hwC.c(paramInt, paramFloat);
  }

  public final void c(int paramInt1, int paramInt2, LinkedList paramLinkedList)
  {
    int i3;
    if (paramLinkedList != null)
      switch (paramInt2)
      {
      default:
        throw new IllegalArgumentException("The data type was not found, the id used was " + paramInt2);
      case 6:
        i3 = 0;
        if (i3 < paramLinkedList.size())
          break;
      case 4:
      case 5:
      case 2:
      case 3:
      case 1:
      case 7:
      case 8:
      }
    while (true)
    {
      return;
      c(paramInt1, (b)paramLinkedList.get(i3));
      i3++;
      break;
      for (int i2 = 0; i2 < paramLinkedList.size(); i2++)
        a(paramInt1, ((Double)paramLinkedList.get(i2)).doubleValue());
      continue;
      for (int i1 = 0; i1 < paramLinkedList.size(); i1++)
        c(paramInt1, ((Float)paramLinkedList.get(i1)).floatValue());
      continue;
      for (int n = 0; n < paramLinkedList.size(); n++)
        bx(paramInt1, ((Integer)paramLinkedList.get(n)).intValue());
      continue;
      for (int m = 0; m < paramLinkedList.size(); m++)
        k(paramInt1, ((Long)paramLinkedList.get(m)).longValue());
      continue;
      for (int k = 0; k < paramLinkedList.size(); k++)
        A(paramInt1, (String)paramLinkedList.get(k));
      continue;
      for (int j = 0; j < paramLinkedList.size(); j++)
        t(paramInt1, ((Boolean)paramLinkedList.get(j)).booleanValue());
      continue;
      for (int i = 0; i < paramLinkedList.size(); i++)
      {
        com.tencent.mm.am.a locala = (com.tencent.mm.am.a)paramLinkedList.get(i);
        bv(paramInt1, locala.ns());
        locala.a(this);
      }
    }
  }

  public final void c(int paramInt, b paramb)
  {
    this.hwC.b(paramInt, paramb);
  }

  public final void k(int paramInt, long paramLong)
  {
    this.hwC.j(paramInt, paramLong);
  }

  public final void t(int paramInt, boolean paramBoolean)
  {
    this.hwC.s(paramInt, paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     a.a.a.c.a
 * JD-Core Version:    0.6.2
 */