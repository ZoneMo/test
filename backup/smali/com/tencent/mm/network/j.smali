.class final Lcom/tencent/mm/network/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cDY:Lcom/tencent/mm/network/a/a;

.field final synthetic cEc:J

.field final synthetic cEd:J

.field final synthetic cEe:J

.field final synthetic cEf:J

.field final synthetic cEg:Ljava/lang/String;

.field final synthetic cEh:I

.field final synthetic cEi:I

.field final synthetic cEj:Z

.field final synthetic cEk:I

.field final synthetic cEl:J

.field final synthetic cEm:J

.field final synthetic cEn:I

.field final synthetic cEo:I

.field final synthetic cEp:J

.field final synthetic cEq:J

.field final synthetic cEr:Ljava/lang/String;

.field final synthetic cEs:J

.field final synthetic cmy:I


# direct methods
.method constructor <init>(JJJJLjava/lang/String;IIZIJJIIIJJLjava/lang/String;JLcom/tencent/mm/network/a/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    iput-wide p1, p0, Lcom/tencent/mm/network/j;->cEc:J

    iput-wide p3, p0, Lcom/tencent/mm/network/j;->cEd:J

    iput-wide p5, p0, Lcom/tencent/mm/network/j;->cEe:J

    iput-wide p7, p0, Lcom/tencent/mm/network/j;->cEf:J

    iput-object p9, p0, Lcom/tencent/mm/network/j;->cEg:Ljava/lang/String;

    iput p10, p0, Lcom/tencent/mm/network/j;->cEh:I

    iput p11, p0, Lcom/tencent/mm/network/j;->cEi:I

    iput-boolean p12, p0, Lcom/tencent/mm/network/j;->cEj:Z

    iput p13, p0, Lcom/tencent/mm/network/j;->cEk:I

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/tencent/mm/network/j;->cEl:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/tencent/mm/network/j;->cEm:J

    move/from16 v0, p18

    iput v0, p0, Lcom/tencent/mm/network/j;->cmy:I

    move/from16 v0, p19

    iput v0, p0, Lcom/tencent/mm/network/j;->cEn:I

    move/from16 v0, p20

    iput v0, p0, Lcom/tencent/mm/network/j;->cEo:I

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/tencent/mm/network/j;->cEp:J

    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/tencent/mm/network/j;->cEq:J

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/tencent/mm/network/j;->cEr:Ljava/lang/String;

    move-wide/from16 v0, p26

    iput-wide v0, p0, Lcom/tencent/mm/network/j;->cEs:J

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/tencent/mm/network/j;->cDY:Lcom/tencent/mm/network/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 585
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/mm/network/j;->cEc:J

    #calls: Lcom/tencent/mm/network/C2Java;->getJavaActionId(J)I
    invoke-static {v0, v1}, Lcom/tencent/mm/network/C2Java;->access$000(J)I

    move-result v0

    .line 586
    if-nez v0, :cond_0

    .line 587
    const-string v0, "C2Java"

    const-string v1, "ActionId Can not convert"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v1, Lcom/tencent/mm/network/a/b;

    invoke-direct {v1}, Lcom/tencent/mm/network/a/b;-><init>()V

    .line 591
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEd:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFJ:J

    .line 592
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEe:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cyD:J

    .line 593
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEf:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->endTime:J

    .line 594
    new-instance v2, Lcom/tencent/mm/network/a/f;

    iget-object v3, p0, Lcom/tencent/mm/network/j;->cEg:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/network/j;->cEh:I

    iget v5, p0, Lcom/tencent/mm/network/j;->cEi:I

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/mm/network/a/f;-><init>(Ljava/net/InetAddress;II)V

    iput-object v2, v1, Lcom/tencent/mm/network/a/b;->cFK:Lcom/tencent/mm/network/a/f;

    .line 595
    iget-boolean v2, p0, Lcom/tencent/mm/network/j;->cEj:Z

    iput-boolean v2, v1, Lcom/tencent/mm/network/a/b;->cFL:Z

    .line 596
    iget v2, p0, Lcom/tencent/mm/network/j;->cEk:I

    iput v2, v1, Lcom/tencent/mm/network/a/b;->cFM:I

    .line 597
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEl:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFN:J

    .line 598
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEm:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFO:J

    .line 599
    iget v2, p0, Lcom/tencent/mm/network/j;->cmy:I

    iget v3, p0, Lcom/tencent/mm/network/j;->cEn:I

    invoke-static {v2, v3}, Lcom/tencent/mm/network/bi;->P(II)I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/network/a/b;->bLI:I

    .line 600
    iget v2, p0, Lcom/tencent/mm/network/j;->cEn:I

    iput v2, v1, Lcom/tencent/mm/network/a/b;->bLJ:I

    .line 601
    iget v2, p0, Lcom/tencent/mm/network/j;->cEo:I

    iput v2, v1, Lcom/tencent/mm/network/a/b;->cFR:I

    .line 602
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEp:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFW:J

    .line 603
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEf:J

    iget-wide v4, p0, Lcom/tencent/mm/network/j;->cEe:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cyG:J

    .line 604
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEq:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFX:J

    .line 605
    iget-object v2, p0, Lcom/tencent/mm/network/j;->cEr:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/network/a/b;->cFY:Ljava/lang/String;

    .line 606
    iget-wide v2, p0, Lcom/tencent/mm/network/j;->cEs:J

    iput-wide v2, v1, Lcom/tencent/mm/network/a/b;->cFZ:J

    .line 608
    iget-object v2, p0, Lcom/tencent/mm/network/j;->cDY:Lcom/tencent/mm/network/a/a;

    const-string v3, ""

    invoke-interface {v2, v0, v3, v1}, Lcom/tencent/mm/network/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    goto :goto_0
.end method
