package b.a.f;

import java.util.Random;

public final class d
  implements c
{
  private e hAA = new e();

  private Long aRC()
  {
    return Long.valueOf(Long.valueOf(System.currentTimeMillis()).longValue() / 1000L);
  }

  public final String aRA()
  {
    return String.valueOf(aRC());
  }

  public final String aRB()
  {
    long l = aRC().longValue();
    return String.valueOf(l + Integer.valueOf(new Random().nextInt()).intValue());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.f.d
 * JD-Core Version:    0.6.2
 */